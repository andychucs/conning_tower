import 'dart:convert';
import 'dart:developer';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/tasks_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import 'operation_queue.dart';

class KancolleData {
  final OperationQueue queue;
  final List<Squad> squads;
  int operationCancel;
  final Ref ref;
  final SeaForceBase seaForceBase;

  KancolleData(
      {required this.queue,
      required this.squads,
      required this.operationCancel,
      required this.seaForceBase,
      required this.ref});

  KancolleData copyWith(
      {OperationQueue? queue,
      List<Squad>? squads,
      int? operationCancel,
      SeaForceBase? seaForceBase,
      Ref? ref}) {
    return KancolleData(
      queue: queue ?? this.queue,
      squads: squads ?? this.squads,
      operationCancel: operationCancel ?? this.operationCancel,
      seaForceBase: seaForceBase ?? this.seaForceBase,
      ref: ref ?? this.ref,
    );
  }

  KancolleData parseWith(String source, String data) {
    KancolleData newData = copyWith();

    Map<int, tz.TZDateTime> endTimeMap = {
      for (int i in [2, 3, 4]) i: newData.queue.map[i]!.endTime
    };

    parse(source, data);

    setNotification(endTimeMap, newData);

    return newData;
  }

  void setNotification(
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

  void parse(String source, String data) {
    String path = source.split("kcsapi").last;
    dynamic model = DataModelAdapter().parseData(path, jsonDecode(data));

    if (model is ReqMissionStartEntity) {
      log("MissionStart");
    }

    if (model is GetMemberDeckEntity) {
      // print(model);
      for (var data in model.apiData) {
        int id = data.apiId;
        if (id > 1) {
          // if (squads.length < id) {
          //   squads.add(Squad(
          //       id: id,
          //       name: data.apiName,
          //       operation: data.apiMission[1],
          //       ships: []));
          // }
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
              tz.local, data.apiMission[2]);
          if (data.apiMission[1] != 0) {
            queue.executeOperation(
                id,
                Operation(
                    id: data.apiMission[1],
                    code: data.apiMission[1].toString(),
                    endTime: endDatetime));
          }
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
          operationCancel = data.apiMission[1];
        }
      });
    }

    if (model is GetMemberShipDeckEntity) {
      int index = model.apiData.apiDeckData.first.apiId - 1; // 单舰队
      squads[index].ships.clear();
      for (var data in model.apiData.apiShipData) {
        Ship ship = Ship(
            uid: data.apiId,
            shipId: data.apiShipId,
            name: "Ship ${data.apiShipId}",
            level: data.apiLv,
            exp: data.apiExp,
            nowHP: data.apiNowhp,
            maxHP: data.apiMaxhp);
        log(ship.toString());
        log(ship.damaged().toString());
        squads[index].ships.add(ship);
      }
    }

    if (model is PortEntity) {
      List<Ship> allShips = [];
      for (var data in model.apiData.apiShip) {
        Ship ship = Ship(
            uid: data.apiId,
            shipId: data.apiShipId,
            name: "Ship ${data.apiShipId}",
            level: data.apiLv,
            exp: data.apiExp,
            nowHP: data.apiNowhp,
            maxHP: data.apiMaxhp);
        allShips.add(ship);
      }
      Map<int, Ship> shipsMap =
          Map.fromIterable(allShips, key: (item) => item.uid);

      seaForceBase.updateMaterial(model.apiData.apiMaterial);

      for (var data in model.apiData.apiDeckPort) {
        int id = data.apiId;
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
          log(squads[id - 1].toString());
        } else {
          squads[id - 1] = Squad(
            id: id,
            name: data.apiName,
            operation: data.apiMission[1],
            ships: ships,
          );
          log(squads[id - 1].toString());
        }
        if (id > 1) {
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
              tz.local, data.apiMission[2]);
          if (data.apiMission[1] != 0) {
            queue.executeOperation(
                id,
                Operation(
                    id: data.apiMission[1],
                    code: data.apiMission[1].toString(),
                    endTime: endDatetime));
          }
        }
      }
    }
  }
}
