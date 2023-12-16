import 'dart:convert';
import 'dart:developer';

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
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import 'operation_queue.dart';

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

  KancolleData({
    required this.queue,
    required this.squads,
    required this.seaForceBase,
    required this.fleet,
    required this.ref,
    required this.dataInfo,
    required this.battleInfo,
    this.battleLog,
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
      battleLog: battleLog
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
    int timestamp = rawData.timestamp;
    String path = source.split("kcsapi").last;

    if (isBattleAPI(path)) {
      if (!ref.read(settingsProvider).kcBattleReportEnable) return;
      if (battleLog != null) {
        battleLog?.data.add(rawData.toDecoded());
      }
    }

    if (path == GetMemberShipDeckEntity.source) {
      battleLog?.data.add(rawData.toDecoded());
    }

    dynamic model = DataModelAdapter().parseData(path, jsonDecode(data));

    if (model is ReqBattleMidnightBattleEntity) {
      var squad = squads[model.apiData.apiDeckId - 1];
      battleInfo.parseReqBattleMidnightBattle(model.apiData, squad);
    }

    if (model is ReqSortieBattleEntity) {
      var squad = squads[model.apiData.apiDeckId - 1];
      battleInfo.parseReqSortieBattle(model.apiData, squad);
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
      battleLog = KancolleBattleLog(id: timestamp, mapInfo: MapInfoLog.fromEntity(battleInfo.mapInfo!), squads: [for (var squad in squads) Squad.fromJson(squad.toJson())], data: [rawData.toDecoded()]);
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
        objectbox.battleLog.put(KancolleLogEntity.fromLog(battleLog!));
      }
      battleLog = null; // reset battle log
      updateFleetShips(model.apiData.apiShip);

      seaForceBase.updateCommanderInfo(model.apiData.apiBasic);
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
      fleet.equipment = model.apiData.apiSlotItem ?? [];
    }

    if (model is GetMemberSlotItemEntity) {
      fleet.equipment = model.apiData;
    }
  }

  KancolleData parseWith(RawData rawData) {
    String source = rawData.source;
    String data = rawData.data;
    late KancolleData newData;
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
      if (kDebugMode) {
        rethrow;
      }
      String errorMsg = e.toString();
      String st = '';
      if (s.toString().contains('\n')) {
        st = s.toString().split('\n').first;
      }
      errorMsg = '$errorMsg\n$st\nsource:$source\ndata:$data';
      log(s.toString());
      ref
          .watch(alertStateProvider.notifier)
          .update((state) => {"title": "Error", "content": errorMsg});
    }
    return newData;
  }

  void addAlert() {
    var sb = StringBuffer();
    for (var squad in squads) {
      for (var ship in squad.ships) {
        if (ship.damaged()) {
          sb.write("${squad.name}-${ship.name} 大破\n");
          log("${squad.name}-${ship.name} 大破");
          // break;
        }
      }
    }
    if (sb.isNotEmpty) {
      ref
          .watch(alertStateProvider.notifier)
          .update((state) => {"title": "大破", "content": sb.toString()});
    }
  }

  void updateFleetShips(List<PortApiDataApiShipEntity> apiShip) {
    List<Ship> allShips = [];
    for (var data in apiShip) {
      String shipName = dataInfo.shipInfo?[data.apiShipId]?.apiName ??
          "Ship No.${data.apiShipId}";
      allShips.add(Ship.fromApi(data, shipName));
    }
    fleet.ships = allShips;
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
      String shipName = dataInfo.shipInfo?[data.apiShipId]?.apiName ??
          "Ship No.${data.apiShipId}";
      Ship ship = Ship.fromApi(data, shipName);
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
