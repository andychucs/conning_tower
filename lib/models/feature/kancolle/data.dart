import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcsapi/ship_data.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/providers/alert_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_item_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../../utils/toast.dart';
import '../log/kancolle_ship_log.dart';
import 'battle_info.dart';
import 'data_info.dart';
import 'equipment.dart';
import 'fleet.dart';
import 'map_info.dart';
import 'map_state.dart';
import 'operation_queue.dart';
import 'quest_assistant.dart';
import 'raw_data.dart';
import 'sea_force_base.dart';
import 'ship.dart';
import 'squad.dart';

List<String> _battleAPI = [
  ReqSortieBattleEntity.source,
  ReqSortieBattleResultEntity.source,
  ReqBattleMidnightBattleEntity.source,
  ReqMapNextEntity.source,
  ReqMapStartEntity.source,
];

enum EventDebuffType {
  port,
  battleResult,
  airbaseDefense,
  none,
}

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
  List<Squad>? battleSquads;
  Map<int, MapState>? mapStateMap;

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
    this.battleSquads,
    this.mapStateMap,
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
      battleSquads: battleSquads,
      mapStateMap: mapStateMap,
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
    final params = rawData.params;
    if (data.isEmpty) {
      log("empty data");
      Toast.showError(title: S.current.TextNetworkError('${rawData.status}'));
      return;
    }
    final json = jsonDecode(data);
    if (json is Map) {
      if (json['api_result'] != 1) {
        final msg = json['api_result_msg'];
        Toast.showError(title: S.current.TextNetworkError('${rawData.status}'), description: "$msg");
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

    final model = DataModelAdapter.toEntity(path, json);
    final requestBody = DataModelAdapter.requestToEntity(path, params);

    checkDebuffNotify(model);

    if (model is ReqKousyouGetshipEntity) {
      log("get ship");
      if (model.apiData?.apiShipId != null) {
        objectbox.saveShipLog(
          admiral: seaForceBase.admiral.name,
          type: ShipLogType.build,
          shipName: dataInfo.shipInfo?[model.apiData?.apiShipId]?.apiName,
        );
        final ship = createShip(model.apiData!.apiShip!);
        fleet.ships.add(ship);
      }
    }

    if (requestBody is ReqKousyouDestroyshipBodyEntity) {
      log("destroy");
      final shipIds = requestBody.apiShipId?.split(",");
      if (shipIds != null && shipIds.isNotEmpty) {
        for (var shipId in shipIds) {
          final id = int.tryParse(shipId);
          if (id != null) {
            objectbox.saveShipLog(
                admiral: seaForceBase.admiral.name,
                type: ShipLogType.destroy,
                shipName: fleet.ships
                    .firstWhere((element) => element.uid == id)
                    .name);
          }
        }
      }
    }

    if (requestBody is ReqKaisouPowerupBodyEntity) {
      log("改装");
      final shipIds = requestBody.apiIdItems?.split(",");
      if (shipIds != null && shipIds.isNotEmpty) {
        for (var shipId in shipIds) {
          final id = int.tryParse(shipId);
          if (id != null) {
            objectbox.saveShipLog(
                admiral: seaForceBase.admiral.name,
                type: ShipLogType.refit,
                shipName: fleet.ships
                    .firstWhere((element) => element.uid == id)
                    .name);
          }
        }
      }
    }

    if (requestBody is ReqHenseiChangeBodyEntity) {
      final squadIdx = requestBody.apiId! - 1;
      if (requestBody.apiShipId! == -1) {
        squads[squadIdx].ships.removeAt(requestBody.apiShipIdx!);
      } else if (requestBody.apiShipId! == -2) {
        squads[squadIdx].ships.removeRange(1, squads[squadIdx].ships.length);
      } else {
        final ship = fleet.ships
            .firstWhere((element) => element.uid == requestBody.apiShipId);
        if (squads[squadIdx].ships.contains(ship)) {
          final originShip = squads[squadIdx].ships[requestBody.apiShipIdx!];
          final fromIdx = squads[squadIdx].ships.indexOf(ship);
          squads[squadIdx].ships[fromIdx] = originShip;
        }

        if (requestBody.apiShipIdx! >= squads[squadIdx].ships.length) {
          squads[squadIdx].ships.add(ship);
        } else {
          squads[squadIdx].ships[requestBody.apiShipIdx!] = ship;
        }
      }
    }

    if (model == null) {
      if (isBattleAPI(path)) {
        FirebaseCrashlytics.instance.log('no handler data $path : $data');
        try {
          FirebaseCrashlytics.instance.recordError(Exception('no handler for $path'), null, fatal: true);
        } catch (e) {
          FirebaseCrashlytics.instance.log(e.toString());
        }
      }
    }

    if (model is GetMemberMapinfoEntity) {
      mapStateMap = parseMapState(model);
    }

    if (model is ReqHenseiCombinedEntity) {
      if (model.apiData!.apiCombined! == 1) {
        final combinedType = int.parse(params!["api_combined_type"]);
        fleet.combined = combinedType;
      } else {
        fleet.combined = null;
      }
    }

    if (model is ReqHenseiPresetSelectEntity) {
      int index = model.apiData!.apiId - 1;
      List<Ship> ships = [];
      for (var shipsId in model.apiData!.apiShip) {
        if (shipsId != -1) {
          final ship = fleet.ships
              .firstWhere((element) => element.uid == shipsId);
          ships.add(ship);
        }
      }

      squads[index].ships = ships;
    }

    if (model is ReqHokyuChargeEntity) {
      var material = model.apiData?.apiMaterial;
      if (material != null) {
        seaForceBase.updateResource(material);
      }
      if (model.apiData?.apiShip != null) {
        List<Ship> squadShips = [for (final squad in squads) ...squad.ships];
        Map<int, Ship> shipMap = Map.fromIterable(
          squadShips,
          key: (item) => item.uid,
        );

        for (final shipState in model.apiData!.apiShip!) {
          final shipId = shipState.apiId;
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
        questAssistant = questAssistant?.copyWith(
            ready:
                model.apiData.apiList!.map((e) => Quest.fromApi(e)).toList());
        questAssistant?.update(seaForceBase.admiral.name);
      }
    }

    if (model is ReqCombinedBattleResultEntity) {
      battleInfo.parseReqCombinedBattleResultEntity(model.apiData!,
          admiral: seaForceBase.admiral.name);
    }

    if (model is ReqSortieBattleResultEntity) {
      battleInfo.parseReqSortieBattleResult(model.apiData,
          admiral: seaForceBase.admiral.name);
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
        for (var item in model.apiData.apiMstSlotitem) item.apiId: item
      };
      dataInfo.shipTypeList = model.apiData.apiMstStype;
      dataInfo.initShipUpgradeMap();

      cacheData(source, path, data);
    }

    if (model is ReqMissionStartEntity) {
      log("MissionStart");
    }

    if (model is ReqMapNextEntity) {
      log("Next");
      addAlert();
      battleInfo.clear();
      battleInfo.mapRoute = model.apiData.apiNo;
      battleInfo.note =
          switch (model.apiData.apiDestructionBattle?.apiLostKind) {
        1 => S.current.KCBattleAirbaseResourceLostLevel1,
        2 => S.current.KCBattleAirbaseResourceLostLevel2,
        3 => S.current.KCBattleAirbaseResourceLostLevel3,
        4 => S.current.KCBattleAirbaseResourceLostLevel4,
        _ => null,
      };
    }

    if (model is ReqMapStartEntity) {
      log("Start");
      final battleSquadIndex = int.parse(params?["api_deck_id"]);
      if (battleSquadIndex == 1 && fleet.combined != null) {
        battleSquads = [squads[0], squads[1]];
      } else {
        battleSquads = [squads[battleSquadIndex - 1]];
      }
      resetShipEscapeState();
      addAlert();
      ref.read(settingsProvider.notifier).changeDashboardIndex(5);
      battleInfo.clear();
      battleInfo.mapInfo = dataInfo
          .mapAreaInfo?[model.apiData.apiMapareaId]?.map
          .firstWhere((element) => element.num == model.apiData.apiMapinfoNo);
      battleInfo.mapRoute = model.apiData.apiNo;
      battleInfo.inBattleSquads = battleSquads;
      battleLog = KancolleBattleLog(
          id: timestamp,
          admiral: seaForceBase.admiral.name,
          mapInfo: MapInfoLog.fromEntity(battleInfo.mapInfo!),
          squads: [for (var squad in squads) Squad.fromJson(squad.toJson())],
          data: [rawData.decoded]);
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
      fleet.combined = model.apiData.apiCombinedFlag;

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
      final Iterable<Equipment> equipments = (model.apiData.apiSlotItem ?? [])
          .map((e) => Equipment.fromApi(e, dataInfo.slotItemInfo));
      ref
          .read(kancolleItemDataProvider.notifier)
          .setEquipments(equipments.toList());
      fleet.equipment = Map.fromIterable(equipments, key: (item) => item.id);
      seaForceBase.updateUseItem(model.apiData.apiUseitem);
    }

    if (model is GetMemberUseitemEntity) {
      seaForceBase.updateUseItem(model.apiData);
    }

    if (model is GetMemberSlotItemEntity) {
      final Iterable<Equipment> equipments =
          model.apiData.map((e) => Equipment.fromApi(e, dataInfo.slotItemInfo));
      ref
          .read(kancolleItemDataProvider.notifier)
          .setEquipments(equipments.toList());
      fleet.equipment = Map.fromIterable(equipments, key: (item) => item.id);
    }
  }

  void cacheData(String source, String path, String data) {
    if (source.startsWith("local")) {
      return;
    }
    // save data to local file
    final file = File(pathUtil.getKcCacheDataPath(path));
    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }
    file.writeAsString(data);
  }


  void loadCachedData() {
    _loadCachedData(GetDataEntity.source);
  }

  void _loadCachedData(String source) {
    final localFile =
    File(pathUtil.getKcCacheDataPath(source));
    if (localFile.existsSync()) {
      final cacheString = localFile.readAsStringSync();
      final rawData = RawData(
        source: "local/kcsapi/$source",
        data: cacheString,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      );
      parse(rawData);
    }
  }

  static Map<int, MapState> parseMapState(GetMemberMapinfoEntity model) {
    Map<int, MapState> mapStateMap = {};
    for (final mapInfo in model.apiData!.apiMapInfo!) {
      MapState? mapState;
      if (mapInfo?.apiEventmap != null) {
        mapState = MapState(
            id: mapInfo!.apiId,
            now: mapInfo.apiEventmap!.apiNowMapHP,
            max: mapInfo.apiEventmap!.apiMaxMapHP,
            cleared: mapInfo.apiCleared == 1,
            type: mapInfo.apiGaugeType!,
            rank: mapInfo.apiEventmap!.apiSelectedRank);
      } else if (mapInfo?.apiDefeatCount != null &&
          mapInfo?.apiRequiredDefeatCount != null) {
        mapState = MapState(
            id: mapInfo!.apiId,
            now: mapInfo.apiRequiredDefeatCount! - mapInfo.apiDefeatCount!,
            max: mapInfo.apiRequiredDefeatCount,
            cleared: mapInfo.apiCleared == 1,
            type: mapInfo.apiGaugeType!);
      }

      if (mapState == null) {
        continue;
      }

      mapStateMap[mapState.id] = mapState;
    }
    return mapStateMap;
  }

  void parseBattle(model) {
    if (model is ReqSortieGobackPortEntity ||
        model is ReqCombinedBattleGobackPortEntity) {
      battleInfo.confirmEscapeShip();
      return;
    }

    if (model is ReqCombinedBattleSpMidnightEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleLdAirbattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqSortieAirbattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleECMidnightBattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqBattleMidnightSpMidnightEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqSortieLdAirbattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleECBattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleMidnightBattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleEachBattleEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleWaterEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
    }

    if (model is ReqCombinedBattleEachWaterEntity) {
      battleInfo.parseBattle(model.apiData!, battleSquads!);
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
      battleInfo.parseBattle(model.apiData, battleSquads!);
    }

    if (model is ReqSortieBattleEntity) {
      battleInfo.parseBattle(model.apiData, battleSquads!);
    }
  }

  KancolleData parseWith(RawData rawData) {
    String source = rawData.source;
    String data = rawData.data;
    String path = source.split("kcsapi").last;
    FirebaseCrashlytics.instance.log('$path request: ${jsonEncode(rawData.params)}');
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
    } catch (e, s) {
      FirebaseCrashlytics.instance.log('Kancolle Data Parse Error at $source');
      String errorMsg = e.toString();
      String stackMsg = s.toString();
      FirebaseCrashlytics.instance.log(errorMsg);
      FirebaseCrashlytics.instance.log(stackMsg);
      final errorData = {
        "error": errorMsg,
        "stack": stackMsg,
        "source": source,
        "data": data
      };
      log(s.toString());
      Toast.showError(title: "Error", description: S.current.DataErrorNotice);
      ref.watch(alertStateProvider.notifier).update((state) => Alert(
          "Error", S.current.DataErrorNotice,
          data: jsonEncode(errorData)));
      rethrow;
    }
    return newData;
  }

  void addAlert() {
    List<String> shipsDamaged = [];
    for (var squad in battleSquads!) {
      for (var ship in squad.ships) {
        if (ship.damaged) {
          if (ship.escape != null && ship.escape!) {
            log("${squad.name}-${ship.name} 退避");
            continue;
          }
          shipsDamaged.add("${squad.name}-${ship.name}");
          log("${squad.name}-${ship.name} 大破");
          // break;
        }
      }
    }
    if (shipsDamaged.isNotEmpty) {
      ref.watch(alertStateProvider.notifier).update(
          (state) => Alert(S.current.TextLDamage, shipsDamaged.join("\n")));
    }
  }

  Ship createShip(ShipDataEntity data) {
    final shipData = dataInfo.shipInfo?[data.apiShipId];

    final afterId = int.parse(shipData?.apiAftershipid ?? '0');
    List<int> afterIds = dataInfo.getAfterIds([data.apiShipId], afterId);
    afterIds.remove(data.apiShipId);

    String shipName = shipData?.apiName ?? "Ship No.${data.apiShipId}";

    if (fleet.notInFleetIds != null &&
        fleet.notInFleetIds!.contains(data.apiShipId)) {
      Toast.kancolleUnlockNotify(S.current.KCGetNewShipNotifyTitle,
          S.current.KCGetNewShipNotify(shipName));
    }
    return Ship.fromApi(data, shipName,
        afterIds: afterIds,
        upgradeLevel: shipData?.apiAfterlv,
        shipType: shipData?.apiStype,
        equipment: fleet.equipment);
  }

  void updateFleetShips(List<ShipDataEntity> apiShip) {
    List<Ship> allShips = [];
    for (var data in apiShip) {
      final ship = createShip(data);
      allShips.add(ship);
    }
    fleet.ships = allShips;
    fleet.updateNotInFleetIds(dataInfo.shipUpgradeMap);
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
    // log(squad.toString());
    if (id > squads.length) {
      squads.add(squad);
    } else {
      squads[id - 1] = squad;
    }
  }

  void updateSquadShips(int index, List<ShipData> apiShipData) {
    Squad squad = squads[index].copyWith();
    // squad.ships.clear();
    for (final (shipIndex, data) in apiShipData.indexed) {
      final shipData = dataInfo.shipInfo?[data.apiShipId];

      final afterId = int.parse(shipData?.apiAftershipid ?? '0');
      List<int> afterIds = dataInfo.getAfterIds([data.apiShipId], afterId);
      afterIds.remove(data.apiShipId);

      String shipName = shipData?.apiName ?? "Ship No.${data.apiShipId}";

      squad.ships[shipIndex] = squad.ships[shipIndex].copyWithApi(
          data, shipName,
          afterIds: afterIds,
          upgradeLevel: shipData?.apiAfterlv,
          shipType: shipData?.apiStype,
          equipment: fleet.equipment);
      final ship = squad.ships[shipIndex];
      log(ship.toString());
      log(ship.damaged.toString());
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

  void resetShipEscapeState() {
    for (var squad in battleSquads!) {
      for (var ship in squad.ships) {
        ship.escape = false;
      }
    }
  }

  void checkDebuffNotify(model) {
    final debuffType = checkDebuffFlag(model);
    if (debuffType == EventDebuffType.none) return;
    if (debuffType == EventDebuffType.airbaseDefense) {
      Toast.kancolleUnlockNotify(
          S.current.TextAirbase, S.current.KCBattleDebuffUnlock);
    } else if (debuffType == EventDebuffType.battleResult) {
      Toast.kancolleUnlockNotify(
          S.current.TextBattle, S.current.KCBattleDebuffUnlock);
    } else if (debuffType == EventDebuffType.port) {
      Toast.kancolleUnlockNotify(
          S.current.TextReturnPort, S.current.KCBattleDebuffUnlock);
    }
  }

  EventDebuffType checkDebuffFlag(model) {
    if (model is ReqMapNextEntity) {
      if (model.apiData.apiDestructionBattle?.apiM2 == 1) {
        return EventDebuffType.airbaseDefense;
      }
    }
    if (model is ReqMapStartEntity) {
      if (model.apiData.apiDestructionBattle?.apiM2 == 1) {
        return EventDebuffType.airbaseDefense;
      }
    }
    if (model is ReqSortieBattleResultEntity) {
      if (model.apiData.apiM2 == 1) {
        return EventDebuffType.battleResult;
      }
    }
    if (model is ReqCombinedBattleResultEntity) {
      if (model.apiData?.apiM2 == 1) {
        return EventDebuffType.battleResult;
      }
    }
    if (model is PortEntity) {
      if (model.apiData.apiEventObject?.apiMFlag2 == 1) {
        return EventDebuffType.port;
      }
    }
    return EventDebuffType.none;
  }

  // void setShipStatusTimer() {
  //   for (var squad in squads) {
  //     // find lowest condition ship
  //     var ship = squad.ships
  //         .where((element) => element.condition != null)
  //         .reduce((value, element) => value.condition! < element.condition!
  //             ? value
  //             : element);
  //     if (ship.condition != null) {
  //
  //     }
  //   }
  // }
}
