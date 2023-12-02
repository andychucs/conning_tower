import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/data/kcsapi/req/sortie/req_sortie_battle_entity.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LogDetailBattle extends ConsumerWidget {
  const LogDetailBattle({
    super.key,
    required this.log,
  });

  final KancolleLogEntity log;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var battleData = KancolleBattleLog.fromJson(jsonDecode(log.logStr));
    var squads = battleData.squads;
    // var runtimeData = ref.watch(kancolleDataProvider);
    // final shipInfo = runtimeData.dataInfo.shipInfo;


    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(battleData.mapInfo.name),
        previousPageTitle: "戦闘",
        trailing: GestureDetector(
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: log.logStr));
            Fluttertoast.showToast(msg: "Copy");
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
                ...List.generate(battleData.data.length, (index) {
                  var log = battleData.data[index];
                  String path = log.source.split("kcsapi").last;
                  dynamic model = DataModelAdapter().parseData(path, log.data);

                  if (model is ReqSortieBattleEntity || model is ReqBattleMidnightBattleEntity) {
                    var squad = Squad.fromJson(squads[model.apiData.apiDeckId - 1].toJson());
                    for (var (index, element) in squad.ships.indexed) {
                      element.nowHP = model.apiData.apiFNowhps[index];
                    }
                    return BattleLogFleet(squad: squad);
                  }
                  
                  if (model is ReqSortieBattleResultEntity) {
                    String? dropName = model.apiData.apiGetShip?.apiShipName;
                    
                    return CupertinoListSection.insetGrouped(
                      children: [
                        CupertinoListTile(
                            title: Text(model.apiData.apiWinRank),
                          additionalInfo: dropName != null ? Text("$dropName GET!") : null,
                        ),
                      ],
                    );
                  }

                  return CupertinoListSection.insetGrouped(
                    children: [
                      CupertinoListTile(title: Text(path))
                    ],
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
              backgroundColor:
              CupertinoDynamicColor.resolve(
                  CupertinoColors
                      .systemGroupedBackground,
                  context),
              animation: true,
              animationDuration: 500,
              barRadius: const Radius.circular(2.5),
              animateFromLastPercent: true,
              lineHeight: 5.0,
              percent: ship.nowHP / ship.maxHP,
              progressColor: ship.damageColor,
            ),
            trailing: CircularPercentIndicator(
              backgroundColor:
              CupertinoDynamicColor.resolve(
                  CupertinoColors
                      .systemGroupedBackground,
                  context),
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
