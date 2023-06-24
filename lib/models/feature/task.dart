import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task(
      {required String id,
      required String title,
      required String time,
      required String description,
      required String tag}) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

// @freezed
// class Tasks with _$Tasks {
//   const factory Tasks({
//     required List<Task> tasks
// }) = _Tasks;
//
//   factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
//
// }
