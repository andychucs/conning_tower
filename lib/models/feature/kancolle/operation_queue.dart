import 'package:conning_tower/constants.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart';

part 'operation_queue.freezed.dart';


@unfreezed
class OperationQueue with _$OperationQueue {
  const OperationQueue._();

  factory OperationQueue({required Map<int, Operation> map}) =
      _OperationQueue;

  void executeOperation(int squad, Operation operation) {
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
        endTime: TZDateTime.now(local).add(duration));
  }
}

@freezed
class Operation with _$Operation {
  factory Operation(
      {required int id,
      required TZDateTime endTime}) = _Operation;
}
