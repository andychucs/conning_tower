import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
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
  return KancolleData();
});

class KancolleData {
  final OperationQueue queue = OperationQueue(map: {
    2: Operation(
      id: 999,
      code: '--',
      endTime: DateTime.now(),
    ),
    3: Operation(
      id: 999,
      code: '--',
      endTime: DateTime.now(),
    ),
    4: Operation(
      id: 999,
      code: '--',
      endTime: DateTime.now(),
    ),
  });
  final List<Squad> squads = [Squad(id: 1, name: '第1艦隊')];

  int operationCancel = 999;

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
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, data.apiMission[2]);
          if (data.apiMission[1] != 0) {
            queue.executeOperation(id, Operation(id: data.apiMission[1], code: data.apiMission[1].toString(), endTime: endDatetime));
          }
        }
      }
    }

    if (model is ReqMissionReturnInstructionEntity) {
      var data = model.apiData;

      queue.map.forEach((key, value) {
        if (value.id == data.apiMission[1]) {
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, data.apiMission[2]);
          queue.executeOperation(key, Operation(id: data.apiMission[1], code: data.apiMission[1].toString(), endTime: endDatetime));
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
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, data.apiMission[2]);
          print(data);
          if (data.apiMission[1] != 0) {
            queue.executeOperation(id, Operation(id: data.apiMission[1], code: data.apiMission[1].toString(), endTime: endDatetime));
          }
        }
      }

    }

  }


}