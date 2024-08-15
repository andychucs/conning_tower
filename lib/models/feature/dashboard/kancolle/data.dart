import 'dart:convert';
import 'dart:developer';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcsapi/ship_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/providers/alert_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_item_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:timezone/timezone.dart' as tz;

import 'equipment.dart';
import 'operation_queue.dart';
import 'quest_assistant.dart';

List<String> _battleAPI = [
  ReqSortieBattleEntity.source,
  ReqSortieBattleResultEntity.source,
  ReqBattleMidnightBattleEntity.source,
  ReqMapNextEntity.source,
  ReqMapStartEntity.source,
];

class KancolleData {
  final OperationQueue queue;
  final List<Squad> squads;
  final SeaForceBase seaForceBase;
  final Fleet fleet;
  final Ref ref;
  final DataInfo dataInfo;
  final BattleInfo battleInfo;
  KancolleBattleLog? battleLog;
  QuestAssistant? questAssistant;

  KancolleData({
    required this.queue,
    required this.squads,
    required this.seaForceBase,
    required this.fleet,
    required this.ref,
    required this.dataInfo,
    required this.battleInfo,
    this.battleLog,
    this.questAssistant,
  });

  KancolleData copyWith({
    OperationQueue? queue,
    List<Squad>? squads,
    SeaForceBase? seaForceBase,
    Fleet? fleet,
    DataInfo? dataInfo,
    BattleInfo? battleInfo,
    Ref? ref,
  }) {
    return KancolleData(
      queue: queue ?? this.queue,
      squads: squads ?? this.squads,
      seaForceBase: seaForceBase ?? this.seaForceBase,
      fleet: fleet ?? this.fleet,
      dataInfo: dataInfo ?? this.dataInfo,
      battleInfo: battleInfo ?? this.battleInfo,
      ref: ref ?? this.ref,
      battleLog: battleLog,
      questAssistant: questAssistant,
    );
  }

  bool isBattleAPI(String path) {
    return _battleAPI.contains(path) ||
        path.startsWith('/api_req_battle_midnight') ||
        path.startsWith('/api_req_sortie') ||
        path.startsWith('/api_req_combined_battle');
  }

  void parse(RawData rawData) {
    String source = rawData.source;
    String data = rawData.data;
    if (data.isEmpty) {
      log("empty data");
      Fluttertoast.showToast(msg: "Network Error");
      return;
    }
    final json = jsonDecode(data);
    if (json is Map) {
      if (json['api_result'] != 1) {
        final msg = json['api_result_msg'];
        Fluttertoast.showToast(msg: "$msg");
        return;
      }
    }
    int timestamp = rawData.timestamp;
    String path = source.split("kcsapi").last;

    if (isBattleAPI(path)) {
      if (!ref.read(settingsProvider).kcBattleReportEnable) return;
      if (battleLog != null) {
        battleLog?.data.add(rawData.decoded);
      }
    }

    if (path == GetMemberShipDeckEntity.source) {
      battleLog?.data.add(rawData.decoded);
    }

    dynamic model = DataModelAdapter().parseData(path, json);

    if (model == null) {
      if (isBattleAPI(path) && !path.contains("/goback_port")) {
        FirebaseCrashlytics.instance.log('no handler data $path : $data');
        try {
          FirebaseCrashlytics.instance.recordError(Exception('no handler for $path'), null, fatal: true);
        } catch (e) {
          FirebaseCrashlytics.instance.log(e.toString());
        }
      }
    }

    if (model is ReqHokyuChargeEntity) {
      var material = model.apiData?.apiMaterial;
      if (material != null) {
        seaForceBase.updateResource(material);
      }
      if (model.apiData?.apiShip != null) {
        List<Ship> squadShips = [
          for (final squad in squads) ...squad.ships
        ];
        Map<int, Ship> shipMap = Map.fromIterable(
          squadShips,
          key: (item) => item.uid,
        );

        for (final shipState in model.apiData!.apiShip!) {
          final shipId =  shipState.apiId;
          if (shipId != null) {
            shipMap[shipId]?.fuel = shipState.apiFuel;
            shipMap[shipId]?.bull = shipState.apiBull;
          }
        }
      }
    }

    parseBattle(model);

    if (model is GetMemberQuestListEntity) {
      if (questAssistant == null) {
        questAssistant = QuestAssistant.fromApi(model.apiData);
        questAssistant?.update(seaForceBase.admiral.name);
      } else {
        if (model.apiData.apiList == null) return;
        if (model.apiData.apiList!.isEmpty) return;
        questAssistant = questAssistant?.copyWith(ready: model.apiData.apiList!.map((e) => Quest.fromApi(e)).toList());
        questAssistant?.update(seaForceBase.admiral.name);
      }
    }

    if (model is ReqCombinedBattleResultEntity) {
      battleInfo.parseReqCombinedBattleResultEntity(model.apiData!);
    }

    if (model is ReqSortieBattleResultEntity) {
      battleInfo.parseReqSortieBattleResult(model.apiData);
    }

    if (model is GetDataEntity) {
      log("GetDataEntity");
      dataInfo.shipInfo =
          Map.fromIterable(model.apiData.apiMstShip, key: (item) => item.apiId);
      dataInfo.missionInfo = Map.fromIterable(model.apiData.apiMstMission,
          key: (item) => item.apiId);
      dataInfo.itemInfo = Map.fromIterable(model.apiData.apiMstUseitem,
          key: (item) => item.apiId);
      dataInfo.mapAreaInfo = {
        for (var item in model.apiData.apiMstMaparea)
          item.apiId: MapArea.fromApi(item, model.apiData.apiMstMapinfo)
      };
      dataInfo.slotItemInfo = {
        for (var item in model.apiData.apiMstSlotitem)
          item.apiId: item
      };
      dataInfo.shipTypeList = model.apiData.apiMstStype;
    }

    if (model is ReqMissionStartEntity) {
      log("MissionStart");
    }

    if (model is ReqMapNextEntity) {
      log("Next");
      battleInfo.clear();
      battleInfo.mapRoute = model.apiData.apiNo;
    }

    if (model is ReqMapStartEntity) {
      log("Start");
      ref.read(settingsProvider.notifier).changeDashboardIndex(5);
      battleInfo.clear();
      battleInfo.mapInfo = dataInfo
          .mapAreaInfo?[model.apiData.apiMapareaId]?.map
          .firstWhere((element) => element.num == model.apiData.apiMapinfoNo);
      battleInfo.mapRoute = model.apiData.apiNo;
      battleInfo.inBattleSquads?.clear();
      battleLog = KancolleBattleLog(id: timestamp, admiral: seaForceBase.admiral.name, mapInfo: MapInfoLog.fromEntity(battleInfo.mapInfo!), squads: [for (var squad in squads) Squad.fromJson(squad.toJson())], data: [rawData.decoded]);
    }

    if (model is GetMemberDeckEntity) {
      for (var data in model.apiData) {
        int id = data.apiId;
        if (id > 1) {
          updateOperationQueue(data, id);
        }
      }
    }

    if (model is ReqMissionReturnInstructionEntity) {
      var data = model.apiData;

      queue.map.forEach((key, value) {
        if (value.id == data.apiMission[1]) {
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
              tz.local, data.apiMission[2]);
          queue.executeOperation(
              key, Operation(id: data.apiMission[1], endTime: endDatetime));
        }
      });
    }

    if (model is GetMemberShipDeckEntity) {
      for (var squad in model.apiData.apiDeckData) {
        int index = squad.apiId - 1;
        List<ShipData> ships = [];
        for (var shipsId in squad.apiShip) {
          if (shipsId != -1) {
            ships.add(model.apiData.apiShipData
                .firstWhere((element) => element.apiId == shipsId));
          }
        }
        // var ships = model.apiData.apiShipData
        //     .where((element) => squad.apiShip.contains(element.apiId))
        //     .toList();
        updateSquadShips(index, ships);
      }
    }

    if (model is PortEntity) {
      if (battleLog != null) {
        log("save battle log");
        objectbox.battleLog.put(KancolleBattleLogEntity.fromLog(battleLog!));
      }
      battleLog = null; // reset battle log
      updateFleetShips(model.apiData.apiShip);

      seaForceBase.updateAdmiralInfo(model.apiData.apiBasic);
      seaForceBase.updateMaterial(model.apiData.apiMaterial);

      for (var data in model.apiData.apiDeckPort) {
        int id = data.apiId;
        updateSquads(data, id);
        if (id > 1) {
          updateOperationQueue(data, id);
        }
      }
    }

    if (model is GetMemberRequireInfoEntity) {
      final Iterable<Equipment> equipments = (model.apiData.apiSlotItem ?? []).map((e) => Equipment.fromApi(e, dataInfo.slotItemInfo));
      ref.read(kancolleItemDataProvider.notifier).setEquipments(equipments.toList());
      fleet.equipment = Map.fromIterable(equipments, key: (item) => item.id);
    }

    if (model is GetMemberSlotItemEntity) {
      final Iterable<Equipment> equipments = model.apiData.map((e) => Equipment.fromApi(e, dataInfo.slotItemInfo));
      ref.read(kancolleItemDataProvider.notifier).setEquipments(equipments.toList());
      fleet.equipment = Map.fromIterable(equipments, key: (item) => item.id);
    }
  }

  void parseBattle(model) {
    if (model is ReqCombinedBattleLdAirbattleEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattleLdAirbattle(model.apiData!, inBattleSquads);
    }

    if (model is ReqSortieAirbattleEntity) {
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parseReqSortieAirbattle(model.apiData!, squad);
    }

    if (model is ReqCombinedBattleECMidnightBattleEntity) {
      battleInfo.parseReqCombinedBattleECMidnightBattle(model.apiData!, squads);
    }

    if (model is ReqBattleMidnightSpMidnightEntity) {
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parseReqBattleMidnightSpMidnight(model.apiData!, squad);
    }

    if (model is ReqSortieLdAirbattleEntity) {
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parseSortieLdAirbattle(model.apiData!, squad);
    }

    if (model is ReqCombinedBattleECBattleEntity) {
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parseCombinedBattleECBattle(model.apiData!, squad);
    }

    if (model is ReqCombinedBattleMidnightBattleEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattleMidnightBattle(model.apiData!, inBattleSquads);
    }

    if (model is ReqCombinedBattleEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattle(model.apiData!, inBattleSquads);
    }

    if (model is ReqCombinedBattleEachBattleEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattleEachBattle(model.apiData!, inBattleSquads);
    }

    if (model is ReqCombinedBattleWaterEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattleWater(model.apiData!, inBattleSquads);
    }

    if (model is ReqCombinedBattleEachWaterEntity) {
      var inBattleSquads = [squads[0], squads[1]];
      battleInfo.parseReqCombinedBattleEachWater(model.apiData!, inBattleSquads);
    }

    if (model is ReqPracticeMidnightBattleEntity) {
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parsePracticeMidnightBattle(model.apiData!, squad);
    }

    if (model is ReqPracticeBattleEntity) {
      ref.read(settingsProvider.notifier).changeDashboardIndex(5);
      var squad = squads[model.apiData!.apiDeckId - 1];
      battleInfo.parsePracticeBattle(model.apiData!, squad);
    }

    if (model is ReqBattleMidnightBattleEntity) {
      var squad = squads[model.apiData.apiDeckId - 1];
      battleInfo.parseReqBattleMidnightBattle(model.apiData, squad);
    }

    if (model is ReqSortieBattleEntity) {
      var squad = squads[model.apiData.apiDeckId - 1];
      battleInfo.parseReqSortieBattle(model.apiData, squad);
    }

  }

  KancolleData parseWith(RawData rawData) {
    String source = rawData.source;
    String data = rawData.data;
    String path = source.split("kcsapi").last;
    FirebaseCrashlytics.instance.log('$path data: $data');
    KancolleData newData = copyWith();
    try {
      if (_operationSource(source)) {
        Map<int, tz.TZDateTime> endTimeMap = {
          for (int i in [2, 3, 4]) i: queue.map[i]!.endTime
        };
        parse(rawData);
        newData = copyWith();
        _setNotification(endTimeMap, newData);
      } else {
        parse(rawData);
        newData = copyWith();
      }

      if (_shouldAlertSource(source)) addAlert();
    } catch (e, s) {
      FirebaseCrashlytics.instance.log('Kancolle Data Parse Error at $source');
      FirebaseCrashlytics.instance.recordError(e, s, reason: "Kancolle Data Parse Error", fatal: true);
      if (kDebugMode) {
        rethrow;
      }
      String errorMsg = e.toString();
      final errorData = {
        "error": errorMsg,
        "stack": s,
        "source": source,
        "data": data
      };
      log(s.toString());
      ref
          .watch(alertStateProvider.notifier)
          .update((state) => Alert("Error", S.current.DataErrorNotice, data: jsonEncode(errorData)));
    }
    return newData;
  }

  void addAlert() {
    List<String> shipsDamaged = [];
    for (var squad in squads) {
      for (var ship in squad.ships) {
        if (ship.damaged()) {
          shipsDamaged.add("${squad.name}-${ship.name}");
          log("${squad.name}-${ship.name} 大破");
          FirebaseCrashlytics.instance.log("${squad.name}-${ship.name} 大破");
          // break;
        }
      }
    }
    if (shipsDamaged.isNotEmpty) {
      ref
          .watch(alertStateProvider.notifier)
          .update((state) => Alert(S.current.TextLDamage, shipsDamaged.join("\n")));
    }
  }

  void updateFleetShips(List<PortApiDataApiShipEntity> apiShip) {
    List<Ship> allShips = [];
    for (var data in apiShip) {
      final shipData = dataInfo.shipInfo?[data.apiShipId];

      final afterId = int.parse(shipData?.apiAftershipid ?? '0');
      List<int> afterIds = getAfterIds([data.apiShipId], afterId);
      afterIds.remove(data.apiShipId);

      String shipName = shipData?.apiName ??
          "Ship No.${data.apiShipId}";

      allShips.add(Ship.fromApi(
        data,
        shipName,
        afterIds: afterIds,
        upgradeLevel: shipData?.apiAfterlv,
        shipType: shipData?.apiStype,
        equipment: fleet.equipment
      ));
    }
    fleet.ships = allShips;
  }

  List<int> getAfterIds(List<int> ids, int nextId){
    if (ids.contains(nextId) || nextId == 0) return ids;
    ids.add(nextId);
    return getAfterIds(ids, nextId);
  }

  void updateOperationQueue(DeckData data, int id) {
    if (data.apiMission[1] != 0) {
      tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
          tz.local, data.apiMission[2]);
      queue.executeOperation(
          id, Operation(id: data.apiMission[1], endTime: endDatetime));
    }
  }

  void updateSquads(PortApiDataApiDeckPortEntity data, int id) {
    Map<int, Ship> shipsMap =
        Map.fromIterable(fleet.ships, key: (item) => item.uid);
    List<Ship> ships = [
      for (int uid in data.apiShip)
        if (uid != -1) shipsMap[uid]!
    ];
    var squad = Squad(
      id: id,
      name: data.apiName,
      operation: data.apiMission[1],
      ships: ships,
    );
    log(squad.toString());
    if (id > squads.length) {
      squads.add(squad);
    } else {
      squads[id - 1] = squad;
    }
  }

  void updateSquadShips(int index, List<ShipData> apiShipData) {
    Squad squad = squads[index].copyWith();
    squad.ships.clear();
    for (var data in apiShipData) {
      final shipData = dataInfo.shipInfo?[data.apiShipId];

      final afterId = int.parse(shipData?.apiAftershipid ?? '0');
      List<int> afterIds = getAfterIds([data.apiShipId], afterId);
      afterIds.remove(data.apiShipId);

      String shipName = shipData?.apiName ??
          "Ship No.${data.apiShipId}";

      Ship ship = Ship.fromApi(data, shipName, afterIds: afterIds, upgradeLevel: shipData?.apiAfterlv, shipType: shipData?.apiStype, equipment: fleet.equipment);
      log(ship.toString());
      log(ship.damaged().toString());
      squad.ships.add(ship);
    }
    squads[index] = squad;
  }

  bool _operationSource(String source) {
    // startup, start operation, stop operation should notify
    return [
      GetMemberDeckEntity.source,
      PortEntity.source,
      ReqMissionReturnInstructionEntity.source
    ].contains(source.split("kcsapi").last);
  }

  bool _shouldAlertSource(String source) {
    return [ReqMapNextEntity.source, ReqMapStartEntity.source]
        .contains(source.split("kcsapi").last);
  }

  void _setNotification(
      Map<int, tz.TZDateTime> endTimeMap, KancolleData newData) {
    endTimeMap.forEach((key, value) {
      Operation operation = newData.queue.map[key]!;
      if (!value.isAtSameMomentAs(operation.endTime)) {
        log("before:$value");
        log("after:${operation.endTime}");
        log("End time change ${operation.id}");

        var name = dataInfo.missionInfo?[operation.id]?.apiName;

        notification.setNotificationWithOperation(operation, name);
      }
    });
  }
}
