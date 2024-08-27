import 'dart:convert';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:conning_tower/models/feature/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/squads_share_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/toast.dart';

class LogDetailBattle extends ConsumerWidget {
  const LogDetailBattle({
    super.key,
    required this.logData,
    this.kcWikiData,
  });

  final KancolleBattleLogEntity logData;
  final KcWikiData? kcWikiData;

  String getRouteName(MapData? map, int mapRoute) {
    String routeName = 'Next: $mapRoute';

    try {
      if (map != null) {
        if (map.id != -1) {
          // Check if a map was found
          final route = map.routes[mapRoute.toString()];
          if (route != null) {
            // Safely append '(Boss)' if the target cell is a boss cell
            routeName =
                ' ${route.from ?? ''} → ${route.to}${map.cells[route.to]?.boss ?? false ? '(Boss)' : ''}';
          }
        }
      }
    } catch (e) {
      routeName = 'Next: $mapRoute';
    }

    return routeName;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var battleData = KancolleBattleLog.fromJson(jsonDecode(logData.logStr));
    var squads = battleData.squads;
    final runtimeData = ref.watch(kancolleDataProvider);
    // if (kcWikiData == null) {
    //   final kcWikiDataFuture = ref.watch(kcWikiDataStateProvider);
    //   kcWikiDataFuture.when(
    //       data: (data) {
    //         kcWikiData = data;
    //       },
    //       error: (e, s) {
    //         Fluttertoast.showToast(msg: "Data Load Error");
    //         // Handle the error state
    //       },
    //       loading: () {
    //         Fluttertoast.showToast(msg: "Data Loading...");
    //         // Handle the loading state
    //       },
    //     );
    // }
    // final shipInfo = runtimeData.dataInfo.shipInfo;
    final mapArea =
        runtimeData.dataInfo.mapAreaInfo?[battleData.mapInfo.id ~/ 10];
    final defaultMap = MapInfo(
        id: battleData.mapInfo.id,
        num: battleData.mapInfo.id ~/ 10,
        areaId: battleData.mapInfo.id % 10,
        name: 'Unknown',
        operationName: 'Unknown');

    MapInfo map = defaultMap;

    // Use KcWikiData if it's available
    final kcMapData = kcWikiData?.maps.firstWhere(
        (element) => element.id == battleData.mapInfo.id,
        orElse: () =>
            MapData(id: -1, name: defaultMap.name, routes: {}, cells: {}));
    if (kcMapData != null && kcMapData.id != -1) {
      map = MapInfo(
          id: kcMapData.id,
          num: kcMapData.id ~/ 10,
          areaId: kcMapData.id % 10,
          name: kcMapData.name,
          operationName: '');
    }

    if (map == defaultMap && mapArea != null) {
      map = mapArea.map.firstWhere(
          (element) => element.id == battleData.mapInfo.id,
          orElse: () => defaultMap);
    }

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(map.name),
        previousPageTitle: S.current.TextBattle,
        trailing: GestureDetector(
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: logData.logStr));
            Toast.showSuccess(title: S.current.TextCopyToClipboardSuccess);
          },
          child: Icon(
            CupertinoIcons.square_on_square,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      child: SafeArea(
        child: CupertinoScrollbar(
          child: CustomScrollView(slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                CupertinoListSection.insetGrouped(
                  header: CupertinoListSectionDescription(
                      S.current.TextFleetMembers),
                  children: [
                    SquadsShareButton.cupertinoListTile(squads: squads)
                  ],
                ),
                ...List.generate(battleData.data.length, (index) {
                  var log = battleData.data[index];
                  String path = log.source.split("kcsapi").last;
                  dynamic model = DataModelAdapter.toEntity(path, log.data);

                  if (model is ReqMapStartEntity || model is ReqMapNextEntity) {
                    var mapRoute = model.apiData.apiNo;
                    return CupertinoListSection.insetGrouped(
                      children: [
                        CupertinoListTile(
                          title: Text(
                            getRouteName(kcMapData, mapRoute),
                          ),
                        ),
                      ],
                    );
                  }

                  if (model is ReqSortieBattleEntity ||
                      model is ReqBattleMidnightBattleEntity) {
                    var squad = Squad.fromJson(
                        squads[model.apiData.apiDeckId - 1].toJson());
                    for (var (index, element) in squad.ships.indexed) {
                      element.nowHP = model.apiData.apiFNowhps[index];
                    }
                    return BattleLogFleet(squad: squad);
                  }

                  if (model is ReqSortieBattleResultEntity ||
                      model is ReqCombinedBattleResultEntity) {
                    String? dropName = model.apiData.apiGetShip?.apiShipName;

                    return CupertinoListSection.insetGrouped(
                      children: [
                        CupertinoListTile(
                          title: Text(model.apiData.apiWinRank),
                          additionalInfo:
                              dropName != null ? Text("$dropName GET!") : null,
                        ),
                      ],
                    );
                  }

                  if (model is GetMemberShipDeckEntity) {
                    return Container();
                  }

                  return CupertinoListSection.insetGrouped(
                    children: [CupertinoListTile(title: Text(path))],
                  );
                }),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

class BattleLogFleet extends StatelessWidget {
  const BattleLogFleet({
    super.key,
    required this.squad,
    // required this.shipInfo,
  });

  final Squad squad;

  // final Map<int, GetDataApiDataApiMstShipEntity>? shipInfo;

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      header: CupertinoListSectionDescription("Battle Fleet"),
      children: [
        for (final ship in squad.ships)
          CupertinoListTile(
            title: Text(ship.name!),
            additionalInfo: SizedBox(
                width: 70,
                child: Text(
                  "${ship.nowHP}/${ship.maxHP}",
                  textAlign: TextAlign.end,
                )),
            subtitle: LinearPercentIndicator(
              backgroundColor: CupertinoDynamicColor.resolve(
                  CupertinoColors.systemGroupedBackground, context),
              animation: true,
              animationDuration: 500,
              barRadius: const Radius.circular(2.5),
              animateFromLastPercent: true,
              lineHeight: 5.0,
              percent: ship.nowHP / ship.maxHP,
              progressColor: ship.damageColor,
            ),
            trailing: CircularPercentIndicator(
              backgroundColor: CupertinoDynamicColor.resolve(
                  CupertinoColors.systemGroupedBackground, context),
              reverse: true,
              radius: 12.0,
              lineWidth: 5.0,
              animation: true,
              animationDuration: 500,
              animateFromLastPercent: true,
              circularStrokeCap: CircularStrokeCap.round,
              percent: ship.condition! / 100,
              // center: Container(
              //   height: 6,
              //   width: 6,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: ship.fuelBullColor(
              //         shipInfo?[ship.shipId]!.apiFuelMax,
              //         shipInfo?[ship.shipId]!.apiBullMax),
              //   ),
              // ),
              progressColor: ship.sparkColor,
            ),
          ),
      ],
    );
  }
}
