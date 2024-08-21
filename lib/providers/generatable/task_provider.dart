import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/tasks_provider.dart';
import 'package:conning_tower/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:validators/validators.dart';
import 'package:yaml/yaml.dart';

import 'package:conning_tower/utils/notification_util.dart';

part 'task_provider.freezed.dart';

part 'task_provider.g.dart';

bool isFirstOpen = true;

@freezed
class TaskUtilState with _$TaskUtilState {
  factory TaskUtilState({
    required String source,
    required Tasks tasks,
    required String url,
    required TextEditingController urlSourceController,
    required TextEditingController textSourceController,
  }) = _TaskUtilState;
}

@riverpod
class TaskUtil extends _$TaskUtil {
  @override
  Future<TaskUtilState> build() async {
    return _fetchTaskUtilState();
  }

  Future<void> loadLocalTasks() async {
    try {
      final file = await _localJsonFile;

      String contents = await file.readAsString();

      debugPrint(contents);

      Tasks latestTasks = Tasks.fromJson(jsonDecode(contents));

      ref.read(tasksStateProvider.notifier).update((state) => latestTasks);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _saveLocalTasks() async {
    final file = await _localJsonFile;

    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    Tasks latestTasks = ref.read(tasksStateProvider);

    await file.writeAsString(jsonEncode(latestTasks.toJson()));
  }

  Future<void> deleteLocalTasks() async {
    final file = await _localJsonFile;

    if (file.existsSync()) {
      await file.delete();
    }
  }

  Future<TaskUtilState> _fetchTaskUtilState() async {
    final url = localStorage.getString("tasksUrl") ?? "";
    TaskUtilState taskUtilState = baseTaskUtilState("default", url);
    try {
      if (isFirstOpen) {
        await loadLocalTasks();
        await notification.requestPermissions();
        isFirstOpen = false;
      }
      Tasks latestTasks = ref.read(tasksStateProvider);
      if (latestTasks.items.isNotEmpty) {
        taskUtilState = TaskUtilState(
            source: "runtime",
            tasks: latestTasks,
            url: url,
            urlSourceController: TextEditingController(text: url),
            textSourceController: TextEditingController(text: ""));
      }
      await _saveLocalTasks();
    } catch (e, s) {
      taskUtilState = TaskUtilState(
          source: "error",
          tasks: Tasks(items: [
            Task(
                id: "1",
                title: "Error: $e",
                time: kZeroTime,
                description: "$s",
                tag: "")
          ]),
          url: url,
          urlSourceController: TextEditingController(text: url),
          textSourceController: TextEditingController(text: ""));
    }
    return taskUtilState;
  }

  Tasks emptyTasks() => const Tasks(items: []);

  TaskUtilState baseTaskUtilState(String source, String url) => TaskUtilState(
      source: source,
      tasks: emptyTasks(),
      url: url,
      urlSourceController: TextEditingController(text: url),
      textSourceController: TextEditingController(text: ""));

  Future<File> get _localJsonFile async {
    final path = await localPath;
    return File('$path/providers/task/tasks.json');
  }

  Future<File> get _localYamlFile async {
    final path = await localPath;
    return File('$path/providers/task/tasks.yaml');
  }

  Future<void> setTasksUrl(String url) async {
    state = const AsyncValue.loading();
    if (isURL(url)) {
      localStorage.setString("tasksUrl", url);
      // localStorage.setString("tasksSource", "url");
      state = await AsyncValue.guard(() async {
        // latestTasks = emptyTasks();
        try {
          if (url.isNotEmpty) {
            if (!isURL(url)) {
              throw Exception(S.current.InvalidUrlError);
            }

            final json = await http.get(Uri.parse(url));

            if (json.statusCode != 200) {
              throw Exception("HTTP status code: ${json.statusCode}");
            }

            final tasksJson = jsonDecode(json.body);
            debugPrint(url);
            debugPrint(json.statusCode.toString());
            var tasks = Tasks.fromJson(tasksJson);

            if (tasks.items.length <= kMaxTaskNum) {
              ref.read(tasksStateProvider.notifier).update((state) => tasks);
            } else {
              Toast.showError(title: S.current.TasksNumOverLimit);
            }
          }
        } catch (e, s) {
          return TaskUtilState(
              source: "error",
              tasks: Tasks(items: [
                Task(
                    id: "1",
                    title: "Error: $e",
                    time: kZeroTime,
                    description: "$s",
                    tag: "")
              ]),
              url: url,
              urlSourceController: TextEditingController(text: url),
              textSourceController: TextEditingController(text: ""));
        }
        return _fetchTaskUtilState();
      });
      debugPrint(state.toString());
    } else {
      Toast.showError(title: S.current.InvalidUrlError);
    }
  }

  Future<void> setTasksString(String content) async {
    state = const AsyncValue.loading();
    if (isJSON(content)) {
      try {
        state = await AsyncValue.guard(() async {
          // latestTasks = emptyTasks();
          await Future.delayed(const Duration(
              milliseconds:
                  100)); // When it must be async, the TasksSheet will be rebuilt after loading is completed
          Tasks latestTasks = Tasks.fromJson(jsonDecode(content));
          ref.read(tasksStateProvider.notifier).update((state) => latestTasks);
          return _fetchTaskUtilState();
        });
        debugPrint(state.toString());
        // await _saveLocalTasks();
      } catch (e) {
        Toast.showError(title: S.current.InvalidJsonError);
      }
    } else if (isYaml(content)) {
      try {
        state = await AsyncValue.guard(() async {
          // latestTasks = emptyTasks();
          await Future.delayed(const Duration(
              milliseconds: 100)); // 必须为非同步时，完成loading才会重新构建TasksSheet
          Tasks latestTasks = parseYaml(content);
          ref.read(tasksStateProvider.notifier).update((state) => latestTasks);
          return _fetchTaskUtilState();
        });
        debugPrint(state.toString());
        // await _saveLocalTasks();
      } catch (e) {
        Toast.showError(title: S.current.InvalidYamlError);
      }
    }
  }

  Tasks parseYaml(String yamlString) {
    final yamlList = loadYaml(yamlString) as YamlList;
    final tasks = yamlList.map((yamlMap) {
      final taskMap = yamlMap as YamlMap;
      return Task(
        id: taskMap['id'].toString(),
        title: taskMap['title'].toString(),
        time: taskMap['time'].toString(),
        description: taskMap['description'].toString(),
        tag: taskMap['tag'].toString(),
      );
    }).toList();
    return Tasks(items: tasks);
  }

  Future<void> onPinTask(Task task) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(
          milliseconds:
              50)); // When it must be async, the TasksSheet will be rebuilt after loading is completed
      Tasks latestTasks = ref.read(tasksStateProvider);
      if (latestTasks.items.contains(task)) {
        debugPrint(latestTasks.toString());
        var items = latestTasks.items.toList();
        items.remove(task);
        items.insert(0, task);
        latestTasks = latestTasks.copyWith(items: items);
        debugPrint("after remove");
        debugPrint(latestTasks.toString());
        ref.watch(tasksStateProvider.notifier).update((state) => latestTasks);
      }
      return _fetchTaskUtilState();
    });
    debugPrint(state.toString());
    await _saveLocalTasks();
  }

  void onSaveSource(TaskUtilState tasksUtilState) {
    final url = tasksUtilState.urlSourceController.text;
    final text = tasksUtilState.textSourceController.text;

    if (url.isNotEmpty) {
      setTasksUrl(url);
    } else if (text.isNotEmpty) {
      setTasksString(text);
    } else {
      Toast.showError(title: S.current.EmptyFieldError);
    }
  }

  void onDownloadData({String url = kTaskUrlExample}) {
    setTasksUrl(url);
  }
}
