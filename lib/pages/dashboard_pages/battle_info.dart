import 'dart:convert';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/providers/raw_data_provider.dart';
import 'package:conning_tower/widgets/components/label.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

const EdgeInsetsDirectional _kBattleInfoGridMargin =
    EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 8.0, 5.0);

class BattleInfo extends ConsumerStatefulWidget {
  const BattleInfo({super.key});

  @override
  ConsumerState createState() => _BattleInfoState();
}

class _BattleInfoState extends ConsumerState<BattleInfo> {
  @override
  Widget build(BuildContext context) {
    bool combinedFleet = true;
    int crossAxisCount = 1;
    final data = ref.watch(kancolleDataProvider);
    final battleInfo = data.battleInfo;
    final useItemData = data.dataInfo.itemInfo;
    final shipInfo = data.dataInfo.shipInfo;

    var squads = [...?battleInfo.inBattleSquads, ...?battleInfo.enemySquads];

    var items = [];

    for (final squad in squads) {
      items.add(CupertinoListSection.insetGrouped(
        margin: _kBattleInfoGridMargin,
        header: squads.first == squad
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    CupertinoListSectionDescription(squad.name),
                    GestureDetector(
                      child: Icon(
                        CupertinoIcons.exclamationmark_circle,
                        size: 20,
                        color: CupertinoDynamicColor.resolve(
                            kHeaderFooterColor, context),
                      ),
                      onTap: () => navigatorToCupertino(
                          context,
                          CupertinoActionPage(
                              title: S.current.KCDashboardBattleReport,
                              child: ListView(
                                children: [
                                  CupertinoListSection.insetGrouped(
                                    header: CupertinoListSectionDescription(S.current.KCDashboardBattleDescription),
                                    footer: SelectableText(
                                        "BattleInfo:\n${battleInfo.toString()}\nData:\n${ref.watch(rawDataProvider).source}\n${jsonDecode(ref.watch(rawDataProvider).data)}"),
                                    children: [
                                      CupertinoListTile(
                                        title: const Text("Copy Data"),
                                        onTap: () => Clipboard.setData(
                                            ClipboardData(
                                                text: ref
                                                    .watch(rawDataProvider)
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
                      shipInfo?[squad.ships[index].shipId]?.apiName ??
                      'N/A',
                  dmg: battleInfo.dmgMap?[squad.ships[index].hashCode] ?? 0,
                  dmgTaken:
                      battleInfo.dmgTakenMap?[squad.ships[index].hashCode] ?? 0,
                  useEmoji: ref.read(settingsProvider).kcSparkEmoji,
                )),
      ));
    }

    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false,
          transitionBetweenRoutes: false,
          backgroundColor: CupertinoColors.systemGroupedBackground,
          border: null,
          middle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
            ],
          ),
        ),
        child: items.isNotEmpty
            ? LayoutBuilder(
                builder: (context, constraints) {
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
              )
            : Container(),
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
    return CupertinoListTile.notched(
      leading: AttributeLabel.vertical(label: 'DMG', value: '$dmg'),
      leadingToTitle: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
            if (ship.condition != null)
              Row(
                children: [
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
                  const SizedBox(width: 5),
                  Text(
                    '${ship.condition}',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  )
                ],
              ),
            Text(
              "${(ship.nowHP >= 0 ? ship.nowHP : 0)}/${ship.maxHP}",
              style: const TextStyle(fontWeight: FontWeight.normal),
            )
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
        lineHeight: 12.0,
        percent: (ship.nowHP >= 0 ? ship.nowHP : 0) / ship.maxHP,
        progressColor: ship.damageColor,
        trailing: SizedBox(
          width: 50,
          child: dmgTaken < 0
              ? Text(
                  "$dmgTaken",
                  textAlign: TextAlign.right,
                )
              : null,
        ),
      ),
    );
  }
}
