import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/get/get.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcsapi/req/mission/mission.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import 'operation_queue.dart';

import 'fleet.dart';

final kancolleDataProvider = StateProvider<KancolleData>((ref) {
  return KancolleData();
});

class KancolleData {
  final OperationQueue queue = OperationQueue(map: {
    2: Operation(
      id: 100,
      title: 'PLACEHOLDER',
      endTime: DateTime.now(),
    ),
    3: Operation(
      id: 100,
      title: 'PLACEHOLDER',
      endTime: DateTime.now(),
    ),
    4: Operation(
      id: 100,
      title: 'PLACEHOLDER',
      endTime: DateTime.now(),
    ),
  });
  final List<Squad> squads = [Squad(id: 1, name: '第1艦隊')];

  void parse(String url, String source) {
    String path = url.split("kcsapi").last;
    dynamic model = DataModelAdapter().parseData(path, jsonDecode(source));

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
          queue.executeOperation(id, Operation(id: data.apiMission[1], title: data.apiMission[1].toString(), endTime: endDatetime));
        }
      }
    }

    if (model is PortEntity) {
      print(model);
      for (var data in model.apiData.apiDeckPort) {
        int id = data.apiId;
        if (id > 1) {
          if (squads.length < id) {
            squads.add(Squad(id: id, name: data.apiName));
          }
          tz.TZDateTime endDatetime = tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, data.apiMission[2]);
          queue.executeOperation(id, Operation(id: data.apiMission[1], title: data.apiMission[1].toString(), endTime: endDatetime));
        }
      }

    }

  }


}