import 'package:freezed_annotation/freezed_annotation.dart';
part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  @Assert('id.length <= 3', 'id must have a maximum length of 3')
  @Assert('title.length <= 20', 'title must have a maximum length of 20')
  @Assert("RegExp(r'^\\d{2}:[0-5]\\d:[0-5]\\d\$').hasMatch(time)", 'Invalid time format, maximum value is 99:59:59')
  @Assert('description.length <= 200', 'description must have a maximum length of 200')
  @Assert('tag.length <= 20', 'tag must have a maximum length of 20')
  factory Task({
    required String id,
    required String title,
    required String time,
    required String description,
    required String tag,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

}

@freezed
class Tasks with _$Tasks {
  const factory Tasks({
    required List<Task> items
}) = _Tasks;

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);

}
