import 'dart:convert';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/models/data/kcanotify/gamedata/expedition_entity.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart' as tz;

part 'operation_queue.freezed.dart';


@unfreezed
class OperationQueue with _$OperationQueue {
  const OperationQueue._();

  factory OperationQueue({required Map<int, Operation> map}) =
      _OperationQueue;

  Future<void> executeOperation(int squad, Operation operation) async {
    // if (operation.title == operation.id.toString()) {
    //   var source = await rootBundle.loadString('assets/resources/json/expedition.json');
    //   for (var json in jsonDecode(source)) {
    //     var expedition = ExpeditionEntity.fromJson(json);
    //
    //   }
    //   operation = operation.copyWith(title: );
    // }
    map[squad] = operation;
  }

  void executeTask(int squad, Task task) {
    String timeString = task.time;
    if (timeString == kZeroTime) return;

    List<String> parts = timeString.split(':');
    Duration duration = Duration(
      hours: int.parse(parts[0]),
      minutes: int.parse(parts[1]),
      seconds: int.parse(parts[2]),
    );
    map[squad] = Operation(
        id: 100,
        title: task.title,
        endTime: DateTime.now().add(duration));
  }
}

@freezed
class Operation with _$Operation {
  @Assert('title.length <= 20', 'title must have a maximum length of 20')
  factory Operation(
      {required int id,
      required String title,
      required DateTime endTime}) = _Operation;
}
