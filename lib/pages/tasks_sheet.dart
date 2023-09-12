import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/generatable/task_provider.dart';
import 'package:conning_tower/providers/tasks_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TaskDashboard extends ConsumerStatefulWidget {
  const TaskDashboard({super.key});

  @override
  ConsumerState<TaskDashboard> createState() => _TaskDashboardState();
}

class _TaskDashboardState extends ConsumerState<TaskDashboard> {
  late bool localLoad;

  @override
  void initState() {
    localLoad = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Tasks latestTasks = ref.watch(tasksStateProvider);
    if (!localLoad) {
      localLoad = true;
      ref.watch(taskUtilProvider.notifier).loadLocalTasks();
    }

    if (latestTasks.items.isNotEmpty) {
      return SingleChildScrollView(
        child: CupertinoListSection.insetGrouped(
          header: CupertinoListSectionDescription(
              S.of(context).TaskPageOperationTip),
          children: List.generate(latestTasks.items.length, (index) {
            var task = latestTasks.items[index];
            return CupertinoListTile(
              title: Text(task.title),
              additionalInfo: Text(task.time),
              onTap: () {
                notification.setNotification(task);
              },
            );
          }),
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).TaskNotAdded),
          CupertinoButton(
            color: CupertinoColors.activeBlue,
            onPressed: () {
              showCupertinoModalBottomSheet(
                expand: true,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => const TasksSheet(),
              );
            },
            child: Text(S.of(context).TaskReminders),
          ),
        ],
      ),
    );
  }
}

class TasksSheet extends ConsumerStatefulWidget {
  const TasksSheet({Key? key}) : super(key: key);

  @override
  ConsumerState<TasksSheet> createState() => _TasksSheetState();
}

class _TasksSheetState extends ConsumerState<TasksSheet> {
  @override
  Widget build(BuildContext context) {
    final taskUtil = ref.watch(taskUtilProvider);
    Tasks latestTasks = ref.watch(tasksStateProvider);

    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      body: taskUtil.when(
        data: (tasksUtilState) {
          var tasks = tasksUtilState.tasks.items;
          final brightness = MediaQuery.platformBrightnessOf(context);
          return Navigator(
            onGenerateRoute: (_) => CupertinoPageRoute(
              builder: (context) => Builder(
                builder: (context) => CupertinoPageScaffold(
                  backgroundColor: CupertinoColors.systemGroupedBackground,
                  navigationBar: CupertinoNavigationBar(
                    transitionBetweenRoutes: false,
                    leading: GestureDetector(
                      child: Icon(
                        CupertinoIcons.question_circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const TaskReminderHelp(),
                          ),
                        );
                      },
                    ),
                    middle: Text(S.of(context).TaskPageTitle),
                    trailing: GestureDetector(
                      child: Icon(
                        CupertinoIcons.square_arrow_down,
                        color: Theme.of(context).primaryColor,
                      ),
                      onTap: () {
                        if (kIsOpenSource) {
                          ref.read(taskUtilProvider.notifier).onDownloadData();
                          return;
                        }

                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => CupertinoPageScaffold(
                              backgroundColor: CupertinoColors.systemGroupedBackground,
                              navigationBar: CupertinoNavigationBar(
                                transitionBetweenRoutes: false,
                                middle: Text(S.of(context).AddDataSource),
                                trailing: GestureDetector(
                                  child: Text(
                                    S.of(context).TextSave,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    setState(() {
                                      ref
                                          .read(taskUtilProvider.notifier)
                                          .onSaveSource(tasksUtilState);
                                    });
                                  },
                                ),
                              ),
                              child: TaskDataSource(
                                  tasksUtilState: tasksUtilState),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  child: SafeArea(
                    bottom: false,
                    child: SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: CupertinoListSection.insetGrouped(
                        backgroundColor: CupertinoColors.systemGroupedBackground,
                        footer: const SizedBox(
                          height: 20,
                        ),
                        header: latestTasks.items.isEmpty
                            ? Text(S.of(context).TaskNotAdded)
                            : null,
                        children: List.generate(
                          tasks.length,
                          (index) {
                            Task task = tasks[index];
                            return GestureDetector(
                              onDoubleTap: () {
                                notification.setNotification(task);
                              },
                              child: CupertinoListTile.notched(
                                leading: Text(task.id),
                                title: Text(task.title, style: TextStyle(fontWeight: FontWeight.normal),),
                                subtitle: Text(task.time),
                                trailing: const CupertinoListTileChevron(),
                                onTap: () {
                                  Navigator.of(context).push(
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          CupertinoPageScaffold(
                                        backgroundColor: CupertinoColors.systemGroupedBackground,
                                        navigationBar: CupertinoNavigationBar(
                                          transitionBetweenRoutes: false,
                                          middle: Text(task.title),
                                          trailing: GestureDetector(
                                            child: GestureDetector(
                                              child: Icon(
                                                CupertinoIcons.arrow_up_to_line,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pop();
                                                ref
                                                    .read(taskUtilProvider
                                                        .notifier)
                                                    .onPinTask(task);
                                              });
                                            },
                                          ),
                                        ),
                                        child: TaskInfo(task: task),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        loading: () => const Center(
          child: CupertinoActivityIndicator(
            radius: 30,
          ),
        ),
        error: (err, stack) {
          debugPrintStack(stackTrace: stack);
          return Text('Error: $err');
        },
      ),
    );
  }
}

class TaskDataSource extends StatelessWidget {
  const TaskDataSource({
    super.key,
    required this.tasksUtilState,
  });

  final TaskUtilState tasksUtilState;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(S.current.UrlExample),
            SelectableText(kTaskUrlExample),
            Text(S.current.UrlRequestFormat),
            Divider(),
            CupertinoTextField(
              placeholder: 'URL',
              controller: tasksUtilState.urlSourceController,
            ),
            Divider(),
            Text(S.current.JsonExample),
            textLink(kTaskJsonExample, kTaskJsonExample),
            Text(S.current.YamlExample),
            textLink(kTaskYamlExample, kTaskYamlExample),
            Divider(),
            CupertinoTextField(
              placeholder: 'YAML or JSON',
              minLines: 4,
              maxLines: null,
              controller: tasksUtilState.textSourceController,
            ),
          ],
        ),
      ),
    );
  }
}

class TaskReminderHelp extends StatelessWidget {
  const TaskReminderHelp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text(S.of(context).TextHelp),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(S.of(context).TaskRemindersHelpContent),
        ),
      ),
    );
  }
}

class TaskInfo extends StatelessWidget {
  const TaskInfo({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: CupertinoListSection.insetGrouped(
        footer: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AutoSizeText(
            task.description,
            minFontSize: 16,
          ),
        ),
        children: [
          CupertinoListTile(
            title: Text(S.of(context).TextId),
            additionalInfo: Text(task.id),
          ),
          CupertinoListTile(
            title: Text(S.of(context).TextTitle),
            additionalInfo: Text(task.title),
          ),
          CupertinoListTile(
            title: Text(S.of(context).TextTag),
            additionalInfo: Text(task.tag),
          ),
          CupertinoListTile(
            title: Text(S.of(context).TextTime),
            additionalInfo: Text(task.time),
          ),
        ],
      ),
    );
  }
}
