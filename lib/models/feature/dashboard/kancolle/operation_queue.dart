import 'dart:convert';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/data/mission.dart';
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
    String taskId = missionToTask[operation.id];
    operation = operation.copyWith(code: taskId);
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
        code: task.id,
        endTime: DateTime.now().add(duration));
  }
}

@freezed
class Operation with _$Operation {
  factory Operation(
      {required int id,
      required String code,
      required DateTime endTime}) = _Operation;
}
