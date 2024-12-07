import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:conning_tower/pages/libs_info.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/generatable/task_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KancolleListenSettings extends ConsumerStatefulWidget {
  final bool showNavigatorBar;
  const KancolleListenSettings({super.key, this.showNavigatorBar = true});

  @override
  ConsumerState createState() => _KancolleListenSettingsState();
}

class _KancolleListenSettingsState
    extends ConsumerState<KancolleListenSettings> with AutomaticKeepAliveClientMixin{
  late bool enableAutoProcessSwitchValue;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final settings = ref.watch(settingsProvider);
    enableAutoProcessSwitchValue = settings.enableAutoProcess;

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: widget.showNavigatorBar
          ? CupertinoNavigationBar(
              backgroundColor: CupertinoColors.systemGroupedBackground,
              middle: Text('KC'),
              previousPageTitle: S.of(context).AdvancedGameSupport,
            )
          : null,
      child: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).KanColleDataListener),
                  subtitle: Text(S.of(context).ToolUATip),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeBlue,
                      icon: CupertinoIcons.search),
                  trailing: CupertinoSwitch(
                    value: settings.useKancolleListener,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      ref
                          .watch(webControllerProvider)
                          .manageKCUserScript(value);
                      ref.watch(settingsProvider.notifier).setBool('useKancolleListener', value);
                    },
                  ),
                ),
                if (Platform.isAndroid)
                  CupertinoListTile(
                    title: Text("${S.of(context).KanColleDataListener} (Android Intercept)"),
                    subtitle: Text(S.of(context).ToolUATip),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.search),
                    trailing: CupertinoSwitch(
                      value: settings.kancolleListenerType == 1,
                      onChanged: (value) async {
                        HapticFeedback.mediumImpact();
                        ref.watch(settingsProvider.notifier).setInt('kancolleListenerType', value ? 1 : 0);
                      },
                    ),
                  ),
                CupertinoListTile(
                  title: Text(S.of(context).KanColleLogbook),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => navigatorToCupertino(context, LogViewer(previousPageTitle: widget.showNavigatorBar ? 'KC' : null)),
                )
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: CupertinoListSectionDescription(S.of(context).KCDashboardBattleReport),
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).KCDashboardBattleReport),
                  subtitle: Text(S.of(context).KanColleDataListener),
                  trailing: CupertinoSwitch(
                    value: settings.kcBattleReportEnable,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      ref.read(settingsProvider.notifier).setBool('kcBattleReportEnable', value);
                    },
                  ),
                ),
                CupertinoListTile(
                  title: Text(S.of(context).UseEmojiForFatigue),
                  trailing: CupertinoSwitch(
                    value: settings.kcSparkEmoji,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      ref.read(settingsProvider.notifier).setBool('kcSparkEmoji', value);
                    },
                  ),
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: CupertinoListSectionDescription("Data"),
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).WikiDataLabel),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        FleetInfoPage(
                            title: S.of(context).WikiDataLabel,
                            previousPageTitle:
                                widget.showNavigatorBar ? 'KC' : null));
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
                            previousPageTitle:
                                widget.showNavigatorBar ? 'KC' : null));
                  },
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
                header: CupertinoListSectionDescription(
                    S.of(context).ToolTitleGameSound),
                children: [
                  CupertinoListTile(
                    title: Text(S.of(context).GameUnmute),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.volume_down),
                    onTap: () async {
                      HapticFeedback.mediumImpact();
                      await ref.read(webControllerProvider).unmuteGame();
                    },
                  ),
                  CupertinoListTile(
                    title: Text(S.of(context).GameMute),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeOrange,
                        icon: CupertinoIcons.volume_off),
                    onTap: () async {
                      HapticFeedback.mediumImpact();
                      await ref.read(webControllerProvider).muteGame();
                    },
                  ),
                ]),
            CupertinoListSection.insetGrouped(
                header: CupertinoListSectionDescription(
                    S.of(context).ToolTitleGameScreen),
                children: [
                  CupertinoListTile(
                    title: Text(S.of(context).AppResize),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.fullscreen),
                    onTap: () async {
                      HapticFeedback.mediumImpact();
                      await ref.read(webControllerProvider).adjustWindow();
                    },
                  ),
                  CupertinoListTile(
                    title: Text(S.of(context).AppRedirect),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeOrange,
                        icon: CupertinoIcons.rectangle_expand_vertical),
                    onTap: () async {
                      HapticFeedback.mediumImpact();
                      await ref.read(webControllerProvider).httpRedirect();
                    },
                  ),
                  CupertinoListTile(
                    title: Text(S.of(context).SettingsEnableAutoProcess),
                    leading: const DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.fullscreen),
                    trailing: CupertinoSwitch(
                      value: enableAutoProcessSwitchValue,
                      onChanged: (value) async {
                        HapticFeedback.mediumImpact();
                        setState(() {
                          enableAutoProcessSwitchValue = value;
                        });
                        ref.watch(settingsProvider.notifier).setBool('enableAutoProcess', value);
                      },
                    ),
                  ),
                ]),
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text("Automatic Bypass Foreign Block"),
                  subtitle: Text("For oversea user"),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeBlue,
                      icon: CupertinoIcons.globe),
                  trailing: CupertinoSwitch(
                    value: ref.watch(settingsProvider).useDMMCookieModify,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      ref
                          .watch(webControllerProvider)
                          .manageUserScriptOnDMM(value);
                      ref.watch(settingsProvider.notifier).setBool('useDMMCookieModify', value);
                    },
                  ),
                ),
                CupertinoListTile(
                  title: Text("Modify DMM Cookie"),
                  subtitle: Text("For oversea user"),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeGreen,
                      icon: CupertinoIcons.airplane),
                  onTap: () async {
                    HapticFeedback.mediumImpact();
                    await ref.read(webControllerProvider).kancolleCookieModify();
                  },
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(
                    title: const Text("Libraries"),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => navigatorToCupertino(
                        context,
                        CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              backgroundColor: CupertinoColors.systemGroupedBackground,
                              middle: const Text('Libraries'),
                              previousPageTitle: widget.showNavigatorBar ? 'KC' : null,
                            ),
                            child: const LibsInfo(assetsPath: 'assets/kc-libs-info/',))),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}

class FleetInfoPage extends ConsumerWidget {
  const FleetInfoPage({
    super.key,
    required this.title,
    required this.previousPageTitle,
  });

  final String title;
  final String? previousPageTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kcWikiData = ref.watch(kcWikiDataStateProvider);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(title),
        previousPageTitle: previousPageTitle,
        trailing: GestureDetector(
          onTap: () async {
            await ref.watch(kcWikiDataStateProvider.notifier).fetchData();
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
                        additionalInfo: kcWikiData.when(
                          data: (data) {
                            return Text("${data.ships.length}");
                          },
                          error: (e, s) => Text(S.of(context).Error),
                          loading: () => const CupertinoActivityIndicator(),
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          if (kcWikiData.hasValue) {
                            final ships = kcWikiData.value!.ships;
                            navigatorToCupertino(
                                context, ShipDataItemsList(ships: ships));
                          }
                        },
                      ),
                      CupertinoListTile(
                        title: Text("Data Commit ID(Local)"),
                        subtitle: Text(ref.read(kcWikiDataStateProvider.notifier).getDataRefSha()),
                      ),
                      CupertinoListTile(
                        title: Text("Data Commit ID(Remote)"),
                        subtitle: FutureBuilder<String?>(
                          future: ref.read(kcWikiDataStateProvider.notifier).fetchDataRefSha(timeout: 10000),
                          builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
                            if (snapshot.hasData) {
                              if (snapshot.data == null) {
                                return const Text('Connect to GitHub Failed');
                              }
                              return Text(snapshot.data!);
                            }
                            return const Text('Loading...');
                          },

                        ),
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
        child: CupertinoScrollbar(
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
          ]),
        ));
  }
}

class TaskInfoPage extends ConsumerWidget {
  const TaskInfoPage({
    super.key,
    required this.title,
    required this.previousPageTitle,
  });

  final String title;
  final String? previousPageTitle;

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
                return CupertinoScrollbar(
                  child: CustomScrollView(
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
                  ),
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
