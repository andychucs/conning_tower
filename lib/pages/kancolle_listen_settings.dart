import 'dart:developer';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/task_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KancollelistenSettings extends ConsumerStatefulWidget {
  const KancollelistenSettings({super.key});

  @override
  ConsumerState createState() => _KancollelistenSettingsState();
}

class _KancollelistenSettingsState
    extends ConsumerState<KancollelistenSettings> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionPage(
        title: "Listen",
        previousPageTitle: '',
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text("enable"),
                  trailing: CupertinoSwitch(
                    value: useKancolleListener,
                    onChanged: (value) async {
                      HapticFeedback.heavyImpact();
                      setState(() {
                        useKancolleListener = value;
                      });
                      localStorage.setBool('useKancolleListener', value);
                      debugPrint("useKancolleListener:$useKancolleListener");
                    },
                  ),
                ),
                CupertinoListTile(
                  title: Text("Dowload Ship Info"),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        ShipInfoPage(
                            title: "Dowload Ship Info",
                            previousPageTitle: "Listen"));
                  },
                ),
                CupertinoListTile(
                  title: Text("Dowload Ship Info"),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        TaskInfoPage(
                            title: "Dowload Task Info",
                            previousPageTitle: "Listen"));
                  },
                ),
              ],
            )
          ],
        ));
  }
}

class ShipInfoPage extends ConsumerWidget {
  const ShipInfoPage({
    super.key,
    required this.title,
    required this.previousPageTitle,
  });

  final String title;
  final String previousPageTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kcwikiData = ref.watch(kcwikiDataStateProvider);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(title),
        previousPageTitle: previousPageTitle,
        trailing: GestureDetector(
          onTap: () => ref.watch(kcwikiDataStateProvider.notifier).fetchData(),
          child: Icon(CupertinoIcons.refresh),
        ),
      ),
      child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  CupertinoListSection.insetGrouped(
                    children: [
                      CupertinoListTile(
                        title: Text("Ship"),
                        additionalInfo: kcwikiData.when(
                          data: (data) => Text("${data.ships.length}"),
                          error: (e, s) => Text("error"),
                          loading: () => CupertinoActivityIndicator(),
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          if (kcwikiData.hasValue) {
                            navigatorToCupertino(
                                context,
                                CupertinoActionPage(
                                    title: "title",
                                    previousPageTitle: "previousPageTitle",
                                    child: ListView(children: [
                                      CupertinoListSection.insetGrouped(
                                        children: List.generate(
                                            kcwikiData.value!.ships.length,
                                            (index) => CupertinoListTile(
                                                  title: Text(
                                                      "${kcwikiData.value!.ships[index].name}"),
                                                  subtitle: Text(
                                                      "ID: ${kcwikiData.value!.ships[index].id}"),
                                                )),
                                      )
                                    ])));
                          }
                        },
                      ),
                    ],
                  ),
                ]),
              )
            ],
          )),
    );
  }
}

class TaskInfoPage extends ConsumerWidget {
  const TaskInfoPage({
    super.key,
    required this.title,
    required this.previousPageTitle,
  });

  final String title;
  final String previousPageTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskUtil = ref.watch(taskUtilProvider);

    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          middle: Text(title),
          previousPageTitle: previousPageTitle,
          trailing: GestureDetector(
            onTap: () => ref.watch(taskUtilProvider.notifier).onDownloadData(),
            child: Icon(CupertinoIcons.refresh),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: taskUtil.when(
              data: (data) => CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate([
                          CupertinoListSection.insetGrouped(
                            children: List.generate(
                                data.tasks.items.length,
                                (index) => CupertinoListTile(
                                      leading: Text(data.tasks.items[index].id),
                                      title:
                                          Text(data.tasks.items[index].title),
                                      additionalInfo:
                                          Text(data.tasks.items[index].time),
                                    )),
                          ),
                        ]),
                      )
                    ],
                  ),
              error: (Object error, StackTrace stackTrace) => Center(
                    child: Text(error.toString()),
                  ),
              loading: () => const Center(
                    child: CupertinoActivityIndicator(
                      radius: 30,
                    ),
                  )),
        ));
  }
}
