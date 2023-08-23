import 'dart:convert';
import 'dart:developer';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import 'operation_queue.dart';

import 'fleet.dart';

final rawDataProvider = StateProvider<RawData>((ref) {
  return RawData(source: '', data: '');
});

class RawData {
  late String source;
  late String data;

  RawData({required this.source, required this.data});
}

final kancolleDataProvider = StateProvider<KancolleData>((ref) {
  final OperationQueue queue = OperationQueue(map: {
    2: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
    3: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
    4: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
  });
  final List<Squad> squads = [Squad(id: 1, name: '第1艦隊')];

  return KancolleData(
      queue: queue, squads: squads, operationCancel: 999, ref: ref);
});

class KancolleData {
  final OperationQueue queue;
  final List<Squad> squads;
  int operationCancel;
  final Ref ref;

  KancolleData(
      {required this.queue,
      required this.squads,
      required this.operationCancel,
      required this.ref});

  KancolleData copyWith(
      {OperationQueue? queue,
      List<Squad>? squads,
      int? operationCancel,
      Ref? ref}) {
    return KancolleData(
      queue: queue ?? this.queue,
      squads: squads ?? this.squads,
      operationCancel: operationCancel ?? this.operationCancel,
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
      print("MissionStart");
    }

    if (model is GetMemberDeckEntity) {
      print(model);
      for (var data in model.apiData) {
        int id = data.apiId;
        if (id > 1) {
          if (squads.length < id) {
            squads.add(Squad(id: id, name: data.apiName));
          }
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

    if (model is PortEntity) {
      // print(model);
      for (var data in model.apiData.apiDeckPort) {
        int id = data.apiId;
        if (id > 1) {
          if (squads.length < id) {
            squads.add(Squad(id: id, name: data.apiName));
          }
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
              tz.local, data.apiMission[2]);
          print(data);
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
