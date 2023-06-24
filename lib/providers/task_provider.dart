import 'dart:convert';

import 'package:conning_tower/models/feature/task.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_provider.g.dart';

@riverpod
class Tasks extends _$Tasks {
  @override
  List<Task> build() {
    return [];
  }

  void _fetchTask() async {
    final response = await http.get(
        Uri.parse('https://andychucs.github.io/kcdata/json/CT_tasks.json'));
    final json = jsonDecode(response.body) as List<Map<String, dynamic>>;
    state = json.map(Task.fromJson).toList();
  }
}
