import 'dart:convert';
import 'dart:developer';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/alert_provider.dart';
import 'package:conning_tower/providers/tasks_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import 'operation_queue.dart';

class KancolleData {
  final OperationQueue queue;
  final List<Squad> squads;
  final SeaForceBase seaForceBase;
  final Fleet fleet;
  final KcwikiData kcwikiData;
  final Ref ref;

  KancolleData(
      {required this.queue,
      required this.squads,
      required this.seaForceBase,
      required this.fleet,
      required this.kcwikiData,
      required this.ref});

  KancolleData copyWith(
      {OperationQueue? queue,
      List<Squad>? squads,
      SeaForceBase? seaForceBase,
      Fleet? fleet,
      KcwikiData? kcwikiData,
      Ref? ref}) {
    return KancolleData(
      queue: queue ?? this.queue,
      squads: squads ?? this.squads,
      seaForceBase: seaForceBase ?? this.seaForceBase,
      fleet: fleet ?? this.fleet,
      kcwikiData: kcwikiData ?? this.kcwikiData,
      ref: ref ?? this.ref,
    );
  }

  void parse(String source, String data) {
    String path = source.split("kcsapi").last;
    dynamic model = DataModelAdapter().parseData(path, jsonDecode(data));

    if (model is ReqMissionStartEntity) {
      log("MissionStart");
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
              key,
              Operation(
                  id: data.apiMission[1],
                  code: data.apiMission[1].toString(),
                  endTime: endDatetime));
        }
      });
    }

    if (model is GetMemberShipDeckEntity) {
      if (model.apiData.apiDeckData.length > 1) {
        for (var squad in model.apiData.apiDeckData) {
          int index = squad.apiId - 1;
          var ships = model.apiData.apiShipData.where((element) => squad.apiShip.contains(element.apiId)).toList();
          updateSquadShips(index, ships);
        }
      }
      int index = model.apiData.apiDeckData.first.apiId - 1; // 单舰队
      updateSquadShips(index, model.apiData.apiShipData);
    }

    if (model is PortEntity) {
      updateFleetShips(model.apiData.apiShip);

      seaForceBase.updateMaterial(model.apiData.apiMaterial);

      for (var data in model.apiData.apiDeckPort) {
        int id = data.apiId;
        updateSquads(data, id);
        log(squads.last.toString());
        if (id > 1) {
          updateOperationQueue(data, id);
        }
      }
    }
  }

  KancolleData parseWith(String source, String data) {
    KancolleData newData = copyWith();
    try {
      if (_operationSource(source)) {
        Map<int, tz.TZDateTime> endTimeMap = {
          for (int i in [2, 3, 4]) i: newData.queue.map[i]!.endTime
        };
        parse(source, data);
        _setNotification(endTimeMap, newData);
      } else {
        parse(source, data);
      }

      if (_shouldAlertSource(source)) addAlert();
    } catch (e,s) {
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
    if (apiShip.length > fleet.ships.length) {
      List<Ship> allShips = [];
      for (var data in apiShip) {
        late String shipName;
        try {
          shipName = kcwikiData.ships.firstWhere((element) => element.id == data.apiShipId).name ?? "Ship No.${data.apiShipId}";
        } catch (e) {
          shipName = "Ship No.${data.apiShipId}";
        }
        Ship ship = Ship(
            uid: data.apiId,
            shipId: data.apiShipId,
            name: shipName,
            level: data.apiLv,
            exp: data.apiExp,
            nowHP: data.apiNowhp,
            maxHP: data.apiMaxhp);
        allShips.add(ship);
      }
      fleet.ships = allShips;
    }
  }

  void updateOperationQueue(DeckData data, int id) {
    if (data.apiMission[1] != 0) {
      tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
          tz.local, data.apiMission[2]);
      queue.executeOperation(
          id,
          Operation(
              id: data.apiMission[1],
              code: data.apiMission[1].toString(),
              endTime: endDatetime));
    }
  }

  void updateSquads(PortApiDataApiDeckPortEntity data, int id) {
    Map<int, Ship> shipsMap =
        Map.fromIterable(fleet.ships, key: (item) => item.uid);
    List<Ship> ships = [
      for (int uid in data.apiShip)
        if (uid != -1) shipsMap[uid]!
    ];
    if (id > squads.length) {
      squads.add(Squad(
        id: id,
        name: data.apiName,
        operation: data.apiMission[1],
        ships: ships,
      ));
    } else {
      squads[id - 1] = Squad(
        id: id,
        name: data.apiName,
        operation: data.apiMission[1],
        ships: ships,
      );
    }
  }

  void updateSquadShips(
      int index, List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData) {
    Squad squad = squads[index].copyWith();
    squad.ships.clear();
    for (var data in apiShipData) {
      late String shipName;
      try {
        shipName = kcwikiData.ships.firstWhere((element) => element.id == data.apiShipId).name ?? "Ship No.${data.apiShipId}";
      } catch (e) {
        shipName = "Ship No.${data.apiShipId}";
      }
      Ship ship = Ship(
          uid: data.apiId,
          shipId: data.apiShipId,
          name: shipName,
          level: data.apiLv,
          exp: data.apiExp,
          nowHP: data.apiNowhp,
          maxHP: data.apiMaxhp);
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
        Map<String, Task> taskMap = Map.fromIterable(
            ref.watch(tasksStateProvider).items,
            key: (task) => task.id);

        log("before:$value");
        log("after:${operation.endTime}");
        log("End time change ${operation.code}");

        if (taskMap.containsKey(operation.code)) {
          notification.setNotificationWithEndTime(
              taskMap[operation.code]!, operation.endTime);
        } else {
          notification.setNotificationWithOperation(operation);
        }
      }
    });
  }
}
