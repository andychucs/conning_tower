import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
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
    extends ConsumerState<KancolleListenSettings> {
  late bool enableAutoProcessSwitchValue;

  void _loadConfig() {
    setState(() {
      enableAutoProcess = (localStorage.getBool('enableAutoProcess') ?? true);
      enableAutoProcessSwitchValue = enableAutoProcess;
    });
  }

  @override
  void initState() {
    _loadConfig();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);

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
                    value: useKancolleListener,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      setState(() {
                        useKancolleListener = value;
                      });
                      ref
                          .watch(webControllerProvider)
                          .manageKCUserScript(value);
                      localStorage.setBool('useKancolleListener', value);
                      debugPrint("useKancolleListener:$useKancolleListener");
                    },
                  ),
                ),
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
                      ref.read(settingsProvider.notifier).seBool('kcBattleReportEnable', value);
                    },
                  ),
                ),
                CupertinoListTile(
                  title: Text(S.of(context).UseEmojiForFatigue),
                  trailing: CupertinoSwitch(
                    value: settings.kcSparkEmoji,
                    onChanged: (value) async {
                      HapticFeedback.mediumImpact();
                      ref.read(settingsProvider.notifier).seBool('kcSparkEmoji', value);
                    },
                  ),
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: const CupertinoListSectionDescription('Data'),
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).FleetData),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    navigatorToCupertino(
                        context,
                        FleetInfoPage(
                            title: S.of(context).FleetData,
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
                        enableAutoProcess = value;
                        localStorage.setBool('enableAutoProcess', value);
                        debugPrint("enableAutoProcess:$enableAutoProcess");
                        _loadConfig();
                      },
                    ),
                  ),
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
