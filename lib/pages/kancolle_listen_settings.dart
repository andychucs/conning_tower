import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/task_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
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
        title: 'KC',
        previousPageTitle: S.of(context).AdvancedGameSupport,
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              footer: CupertinoListSectionDescription(S.of(context).ToolUATip),
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).KanColleDataListener),
                  trailing: CupertinoSwitch(
                    value: useKancolleListener,
                    onChanged: (value) async {
                      HapticFeedback.heavyImpact();
                      setState(() {
                        useKancolleListener = value;
                      });
                      ref.watch(webControllerProvider).manageKCUserScript(value);
                      localStorage.setBool('useKancolleListener', value);
                      debugPrint("useKancolleListener:$useKancolleListener");
                    },
                  ),
                ),
                CupertinoListTile(
                  title: Text(S.of(context).FleetData),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        FleetInfoPage(
                            title: S.of(context).FleetData,
                            previousPageTitle: 'KC'));
                  },
                ),
                CupertinoListTile(
                  title: Text(S.of(context).OperationData),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        TaskInfoPage(
                            title: S.of(context).OperationData,
                            previousPageTitle: 'KC'));
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
          child: const Icon(CupertinoIcons.refresh),
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
                          data: (data) {
                            Future((){
                              ref.watch(kancolleDataProvider.notifier).update((state) => state.copyWith(kcwikiData: data));
                            });
                            return Text("${data.ships.length}");
                          },
                          error: (e, s) => Text(S.of(context).Error),
                          loading: () => const CupertinoActivityIndicator(),
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          if (kcwikiData.hasValue) {
                            final ships = kcwikiData.value!.ships;
                            navigatorToCupertino(
                                context, ShipDataItemsList(ships: ships));
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

class ShipDataItemsList extends StatefulWidget {
  const ShipDataItemsList({
    super.key,
    required this.ships,
  });

  final List<Ship> ships;

  @override
  State<ShipDataItemsList> createState() => _ShipDataItemsListState();
}

class _ShipDataItemsListState extends State<ShipDataItemsList> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    var ships = [...widget.ships];
    if (searchText.isNotEmpty) {
      ships = ships
          .where((ship) =>
              ship.name!.toLowerCase().contains(searchText.toLowerCase()) ||
              ship.yomi!.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }
    return CupertinoActionPage(
        title: S.of(context).ShipData,
        previousPageTitle: S.of(context).FleetData,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: CupertinoSearchTextField(
              onChanged: (text) {
                setState(() {
                  searchText = text;
                });
              },
            ),
          ),
          CupertinoListSection.insetGrouped(
            children: ships.isNotEmpty
                ? List.generate(
                    ships.length,
                    (index) => CupertinoListTile(
                          title: Text(ships[index].name!),
                          subtitle:
                              Text("改造Lv: ${ships[index].afterLv ?? "-"}"),
                          additionalInfo: Text(ships[index].yomi ?? ''),
                        ))
                : [const CupertinoListTile(title: Text("N/A"))],
          )
        ]));
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
            onTap: () => ref
                .watch(taskUtilProvider.notifier)
                .onDownloadData(url: kTaskUrlKC),
            child: const Icon(CupertinoIcons.refresh),
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
                      onPressed: () => ref
                          .watch(taskUtilProvider.notifier)
                          .onDownloadData(url: kTaskUrlKC),
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
