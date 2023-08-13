import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/task_provider.dart';
import 'package:conning_tower/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TasksSheet extends ConsumerStatefulWidget {
  const TasksSheet({Key? key}) : super(key: key);

  @override
  ConsumerState<TasksSheet> createState() => _TasksSheetState();
}

class _TasksSheetState extends ConsumerState<TasksSheet> {
  @override
  Widget build(BuildContext context) {
    final taskUtil = ref.watch(taskUtilProvider);

    return Material(
      child: taskUtil.when(
        data: (tasksUtilState) {
          var tasks = tasksUtilState.tasks.items;
          final brightness = MediaQuery.platformBrightnessOf(context);
          return Navigator(
            onGenerateRoute: (_) => MaterialPageRoute(
              builder: (context) => Builder(
                builder: (context) => CupertinoPageScaffold(
                  backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
                  navigationBar: CupertinoNavigationBar(
                    transitionBetweenRoutes: false,
                    leading: GestureDetector(
                      child: Icon(
                        CupertinoIcons.question_circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CupertinoPageScaffold(
                              backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
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
                                          .watch(taskUtilProvider.notifier)
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
                        backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
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
                                ref
                                    .watch(taskUtilProvider.notifier)
                                    .setNotification(task);
                              },
                              child: CupertinoListTile.notched(
                                leading: Text(task.id),
                                title: Text(task.title, style: TextStyle(fontWeight: FontWeight.normal),),
                                subtitle: Text(task.time),
                                trailing: const CupertinoListTileChevron(),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CupertinoPageScaffold(
                                            backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
                                        navigationBar: CupertinoNavigationBar(
                                          transitionBetweenRoutes: false,
                                          middle: Text(task.title),
                                          trailing: GestureDetector(
                                            child: GestureDetector(
                                              child: Icon(CupertinoIcons.arrow_up_to_line,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pop();
                                                ref
                                                    .watch(taskUtilProvider
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
    final brightness = MediaQuery.platformBrightnessOf(context);
    return CupertinoPageScaffold(
      backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
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
    final brightness = MediaQuery.platformBrightnessOf(context);

    return SafeArea(
      bottom: false,
      child: CupertinoListSection.insetGrouped(
        backgroundColor: brightness == Brightness.dark ? Theme.of(context).scaffoldBackgroundColor : CupertinoColors.systemGroupedBackground,
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
