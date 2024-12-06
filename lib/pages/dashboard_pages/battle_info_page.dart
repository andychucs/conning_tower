import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:conning_tower/models/feature/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/kancolle/data.dart';
import 'package:conning_tower/models/feature/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/kancolle/ship.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/providers/raw_data_provider.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../utils/local_navigator.dart';
import '../../utils/toast.dart';
import '../../widgets/dialog.dart';
import '../../widgets/kancolle_battle_more_info_page.dart';

const EdgeInsetsDirectional _kBattleInfoGridMargin =
    EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0);

const kDefaultMap =
    MapInfo(id: 0, num: 0, areaId: 0, name: '', operationName: '');

class BattleInfoPage extends ConsumerStatefulWidget {
  const BattleInfoPage({super.key});

  @override
  ConsumerState createState() => _BattleInfoPageState();
}

class _BattleInfoPageState extends ConsumerState<BattleInfoPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    int crossAxisCount = 1;
    final data = ref.watch(kancolleDataProvider);
    final kcWikiData = ref.watch(kcWikiDataStateProvider);
    final battleInfo = data.battleInfo;
    final useItemData = data.dataInfo.itemInfo;
    final shipInfo = data.dataInfo.shipInfo;
    // var squads = [...?battleInfo.inBattleSquads, ...?battleInfo.enemySquads];

    return SafeArea(
      child: Padding(
        padding: tabContentMargin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: LocalNavigatorBuilder(builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                automaticallyImplyLeading: false,
                transitionBetweenRoutes: false,
                backgroundColor: CupertinoColors.systemGroupedBackground,
                border: null,
                trailing: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Text(S.of(context).KCDashboardBattleMoreInfo),
                  onPressed: () => navigatorToCupertino(
                          context, KancolleBattleMoreInfoPage())
                      .then((value) => setState(() {})),
                ),
                middle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (battleInfo.result == null)
                      Text(
                        battleInfo.contactStatus,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    if (battleInfo.result == null &&
                        battleInfo.airSuperiority != '')
                      Text(
                        battleInfo.airSuperiority,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    if (battleInfo.result != null)
                      Text(
                        '${battleInfo.result}',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    if (battleInfo.dropName != null)
                      Text(
                        '${battleInfo.dropName} GET!',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    if (battleInfo.dropItemId != null)
                      Text(
                        '${battleInfo.dropItemName ?? useItemData?[battleInfo.dropItemId]?.apiName} GET!',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    if (battleInfo.mapRoute != null &&
                        battleInfo.formation == null)
                      Text(
                        S.of(context).KCDashboardBattleLastChosen(
                            BattleInfo.getFormationText(
                                objectbox.getRouteFormation(
                                    battleInfo.mapInfo?.id,
                                    battleInfo.mapRoute))),
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                  ],
                ),
              ),
              child: Column(
                children: [
                  if ((battleInfo.inBattleSquads ?? []).isEmpty)
                    const Center(
                      child: Text("暁の水平線に勝利を刻みなさい"),
                    ),
                  if (battleInfo.note != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(battleInfo.note!,
                          style:
                              CupertinoTheme.of(context).textTheme.textStyle),
                    ),
                  if ((battleInfo.inBattleSquads ?? []).isNotEmpty)
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          var items = [];

                          for (final squad in [...?battleInfo.inBattleSquads]) {
                            items.add(CupertinoListSection.insetGrouped(
                              // margin: _kBattleInfoGridMargin,
                              header: battleInfo.inBattleSquads?.first == squad
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                          CupertinoListSectionDescription(
                                              '${squad.name} ${battleInfo.ourFormation}'),
                                          GestureDetector(
                                            child: Icon(
                                              CupertinoIcons
                                                  .exclamationmark_circle,
                                              size: 20,
                                              color:
                                                  CupertinoDynamicColor.resolve(
                                                      kHeaderFooterColor,
                                                      context),
                                            ),
                                            onTap: () => navigatorToCupertino(
                                                context,
                                                CupertinoActionPage(
                                                    title: S.current
                                                        .KCDashboardBattleReport,
                                                    child: ListView(
                                                      children: [
                                                        CupertinoListSection
                                                            .insetGrouped(
                                                          footer: SelectableText(
                                                              "BattleInfo:\n${battleInfo.toString()}"),
                                                          children: [
                                                            CupertinoListTile(
                                                              title: const Text(
                                                                  "Copy Data"),
                                                              subtitle: Text(ref
                                                                  .watch(
                                                                      rawDataProvider)
                                                                  .source),
                                                              onTap: () => Clipboard.setData(
                                                                  ClipboardData(
                                                                      text: ref
                                                                          .watch(
                                                                              rawDataProvider)
                                                                          .data)),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ))),
                                          ),
                                        ])
                                  : CupertinoListSectionDescription(squad.name),
                              children: List.generate(
                                  squad.ships.length,
                                  (index) => ShipInfoInBattle(
                                        ship: squad.ships[index],
                                        name: squad.ships[index].name ??
                                            shipInfo?[squad.ships[index].shipId]
                                                ?.apiName ??
                                            'N/A',
                                        dmg: battleInfo.dmgMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        dmgTaken: battleInfo.dmgTakenMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        useEmoji: ref
                                            .read(settingsProvider)
                                            .kcSparkEmoji,
                                      )),
                            ));
                          }
                          for (final squad in [...?battleInfo.friendSquads]) {
                            items.add(CupertinoListSection.insetGrouped(
                              // margin: _kBattleInfoGridMargin,
                              header:
                                  CupertinoListSectionDescription(squad.name),
                              children: List.generate(
                                  squad.ships.length,
                                  (index) => ShipInfoInBattle(
                                        ship: squad.ships[index],
                                        name: squad.ships[index].name ??
                                            shipInfo?[squad.ships[index].shipId]
                                                ?.apiName ??
                                            'N/A',
                                        dmg: battleInfo.dmgMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        dmgTaken: battleInfo.dmgTakenMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        useEmoji: ref
                                            .read(settingsProvider)
                                            .kcSparkEmoji,
                                      )),
                            ));
                          }
                          for (final squad in [...?battleInfo.enemySquads]) {
                            items.add(CupertinoListSection.insetGrouped(
                              // margin: _kBattleInfoGridMargin,
                              header: battleInfo.enemySquads?.first == squad
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                          CupertinoListSectionDescription(
                                              '${squad.name} ${battleInfo.enemyFormation}'),
                                        ])
                                  : CupertinoListSectionDescription(squad.name),
                              children: List.generate(
                                  squad.ships.length,
                                  (index) => ShipInfoInBattle(
                                        ship: squad.ships[index],
                                        name: squad.ships[index].name ??
                                            shipInfo?[squad.ships[index].shipId]
                                                ?.apiName ??
                                            'N/A',
                                        dmg: battleInfo.dmgMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        dmgTaken: battleInfo.dmgTakenMap?[
                                                squad.ships[index].hashCode] ??
                                            0,
                                        useEmoji: ref
                                            .read(settingsProvider)
                                            .kcSparkEmoji,
                                      )),
                            ));
                          }

                          debugPrint(constraints.maxWidth.toString());
                          if (constraints.maxWidth >= 600) {
                            crossAxisCount = 2;
                          }
                          return MasonryGridView.count(
                            crossAxisCount: crossAxisCount,
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return items[index];
                            },
                          );
                        },
                      ),
                    ),
                  if (battleInfo.mapInfo != null)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MapInfoButton(data: data, battleInfo: battleInfo),
                            Text(
                              routeName(battleInfo, kcWikiData),
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .textStyle
                                  .merge(TextStyle(
                                      color: CupertinoColors.secondaryLabel
                                          .resolveFrom(context))),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  String routeName(BattleInfo battleInfo, AsyncValue<KcWikiData> kcWikiData) {
    if (battleInfo.mapRoute != null && battleInfo.mapInfo != null) {
      return kcWikiData.when(
        data: (data) {
          return getRouteName(data, battleInfo);
        },
        error: (e, s) {
          Toast.showError(title: "Wiki Data Load Error");
          return "";
          // Handle the error state
        },
        loading: () {
          Toast.show(title: "Wiki Data Loading...");
          return "";
          // Handle the loading state
        },
      );
    }
    return "";
  }

  String getRouteName(KcWikiData data, BattleInfo battleInfo) {
    String routeName = "";
    try {
      final kcWikiMapData = data.maps;
      final map = kcWikiMapData.firstWhere(
        (element) => element.id == battleInfo.mapInfo!.id,
        orElse: () => MapData(
            id: -1,
            name: "",
            routes: {},
            cells: {}), // Provide a fallback value to avoid StateError
      );
      if (map.id != -1) {
        // Check if a map was found
        final route = map.routes[battleInfo.mapRoute.toString()];
        if (route != null) {
          // Safely append '(Boss)' if the target cell is a boss cell
          routeName =
              ' ${route.from ?? ''} → ${route.to}${map.cells[route.to]?.boss ?? false ? '(Boss)' : ''}';
        }
      }
    } catch (e) {
      log(e.toString());
    }

    return routeName;
  }

  @override
  bool get wantKeepAlive => true;
}

class MapInfoButton extends StatelessWidget {
  const MapInfoButton({
    super.key,
    required this.data,
    required this.battleInfo,
  });

  final KancolleData data;
  final BattleInfo battleInfo;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: CupertinoDynamicColor.resolve(
          CupertinoColors.secondarySystemGroupedBackground, context),
      minSize: CupertinoTheme.of(context).textTheme.tabLabelTextStyle.fontSize,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      onPressed: () {
        final mapState = data.mapStateMap?[battleInfo.mapInfo!.id];
        showAdaptiveDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => PointerInterceptor(
            child: AlertDialog.adaptive(
              title: Text('${battleInfo.mapInfo?.name}'),
              content: mapState == null
                  ? null
                  : SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (mapState.rank != null) Text(mapState.rankName),
                          Text("${mapState.now}/${mapState.max}"),
                          LinearPercentIndicator(
                            lineHeight: 16,
                            percent: mapState.rate,
                            backgroundColor: CupertinoDynamicColor.resolve(
                                CupertinoColors.systemGroupedBackground,
                                context),
                            animation: true,
                            animationDuration: 500,
                            barRadius: const Radius.circular(8),
                            animateFromLastPercent: true,
                            progressColor: mapState.color,
                          ),
                        ],
                      ),
                    ),
              actions: [
                adaptiveAction(
                    context: context,
                    child: Text(S.of(context).TextYes),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            "${battleInfo.mapInfo?.areaCode} - ${battleInfo.mapInfo?.num}",
            style: CupertinoTheme.of(context).textTheme.textStyle.merge(
                TextStyle(color: CupertinoColors.label.resolveFrom(context))),
          ),
        ],
      ),
    );
  }
}

class ShipInfoInBattle extends StatelessWidget {
  final Ship ship;
  final String name;
  final int dmg;
  final int dmgTaken;
  final bool useEmoji;

  const ShipInfoInBattle({
    super.key,
    required this.ship,
    required this.name,
    required this.dmg,
    required this.dmgTaken,
    this.useEmoji = false,
  });

  @override
  Widget build(BuildContext context) {
    late double damagePercent;
    late String damageText;

    if (ship.maxHP > 0) {
      damagePercent = (ship.nowHP >= 0 ? ship.nowHP : 0) / ship.maxHP;
      damageText = "${(ship.nowHP >= 0 ? ship.nowHP : 0)}/${ship.maxHP}";
    } else {
      damagePercent = 0.0;
      damageText = ship.hpStatus ?? "Unknown";
    }

    return CupertinoListTile.notched(
      leading: buildLeading(),
      leadingSize: 48,
      padding: EdgeInsets.only(right: 14.0, left: 4.0),
      leadingToTitle: 4.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Lv.${ship.level}",
                style: const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            if (ship.condition != null)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      '${ship.condition}',
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                  if (useEmoji) Text(ship.sparkEmoji),
                  if (!useEmoji)
                    CircularPercentIndicator(
                      backgroundColor: CupertinoDynamicColor.resolve(
                          CupertinoColors.systemGroupedBackground, context),
                      reverse: true,
                      radius: 10.0,
                      lineWidth: 5.0,
                      animation: true,
                      animationDuration: 500,
                      animateFromLastPercent: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      percent: ship.condition! / 100,
                      progressColor: ship.sparkColor,
                    ),
                ],
              ),
          ],
        ),
      ),
      subtitle: LinearPercentIndicator(
        backgroundColor: CupertinoDynamicColor.resolve(
            CupertinoColors.systemGroupedBackground, context),
        animation: true,
        animationDuration: 500,
        barRadius: const Radius.circular(6),
        animateFromLastPercent: true,
        lineHeight: 8.0,
        percent: damagePercent,
        progressColor: ship.damageColor,
        trailing: SizedBox(
          width: 56,
          child: Text(
            damageText,
            textAlign: TextAlign.right,
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        ),
      ),
    );
  }

  Widget buildLeading() {
    const dmgSize = 14.0;

    if (ship.escape ?? false) {
      return const Icon(
        CupertinoIcons.escape,
        color: CupertinoColors.inactiveGray,
        size: 20,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.arrow_drop_up,
              color: Colors.redAccent,
              size: dmgSize,
            ),
            Expanded(
              child: AutoSizeText(
                '$dmg',
                textAlign: TextAlign.end,
                softWrap: false,
                maxFontSize: dmgSize,
                minFontSize: dmgSize - 8,
                maxLines: 1,
              ),
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.blueAccent,
              size: dmgSize,
            ),
            Expanded(
              child: AutoSizeText(
                '$dmgTaken',
                textAlign: TextAlign.end,
                softWrap: false,
                maxFontSize: dmgSize,
                minFontSize: dmgSize - 8,
                maxLines: 1,
              ),
            )
          ],
        ),
      ],
    );
  }
}
