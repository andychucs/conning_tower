import 'package:conning_tower/generated/l10n.dart';
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
        title: S.of(context).KanColleDataListener,
        previousPageTitle: S.of(context).SettingsButton,
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).KanColleDataListener),
                  subtitle: Text(S.of(context).ToolUATip),
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
                  title: Text(S.of(context).DownloadFleetData),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        FleetInfoPage(
                            title: S.of(context).FleetData,
                            previousPageTitle:
                                S.of(context).KanColleDataListener));
                  },
                ),
                CupertinoListTile(
                  title: Text(S.of(context).DownloadOperationData),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        TaskInfoPage(
                            title: S.of(context).OperationData,
                            previousPageTitle:
                                S.of(context).KanColleDataListener));
                  },
                ),
              ],
            )
          ],
        ));
  }
}

class FleetInfoPage extends ConsumerWidget {
  const FleetInfoPage({
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
          onTap: () async {
            await ref.watch(kcwikiDataStateProvider.notifier).fetchData();
          },
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
                        title: Text(S.of(context).ShipData),
                        additionalInfo: kcwikiData.when(
                          data: (data) => Text("${data.ships.length}"),
                          error: (e, s) => Text(S.of(context).Error),
                          loading: () => CupertinoActivityIndicator(),
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          if (kcwikiData.hasValue) {
                            navigatorToCupertino(
                                context,
                                CupertinoActionPage(
                                    title: S.of(context).ShipData,
                                    previousPageTitle: S.of(context).FleetData,
                                    child: ListView(children: [
                                      CupertinoListSection.insetGrouped(
                                        children: List.generate(
                                            kcwikiData.value!.ships.length,
                                            (index) => CupertinoListTile(
                                                  title: Text(kcwikiData.value!
                                                      .ships[index].name),
                                                  subtitle: Text(
                                                      "ID: ${kcwikiData.value!.ships[index].id}"),
                                                  additionalInfo: Text(
                                                      kcwikiData
                                                              .value!
                                                              .ships[index]
                                                              .stypeName ??
                                                          ''),
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
              data: (data) {
                var items = data.tasks.items;
                if (items.isEmpty) {
                  return Center(
                    child: CupertinoButton(
                      child: Text(S.of(context).DownloadOperationData),
                      onPressed: () =>
                          ref.watch(taskUtilProvider.notifier).onDownloadData(),
                    ),
                  );
                }
                return CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate([
                        CupertinoListSection.insetGrouped(
                          children: List.generate(
                              items.length,
                              (index) => CupertinoListTile(
                                    leading: Text(items[index].id),
                                    title: Text(items[index].title),
                                    additionalInfo: Text(items[index].time),
                                  )),
                        ),
                      ]),
                    )
                  ],
                );
              },
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
