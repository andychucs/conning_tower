import 'dart:convert';
import 'dart:developer' as dev;

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/objectbox.g.dart';
import 'package:conning_tower/pages/log_pages/log_item.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

class BattleLogDataPage extends ConsumerStatefulWidget {
  const BattleLogDataPage({super.key});

  @override
  ConsumerState createState() => _BattleLogDataPageState();
}

class _BattleLogDataPageState extends ConsumerState<BattleLogDataPage> {
  int queryLimit = 20;

  @override
  Widget build(BuildContext context) {
    final runtimeData = ref.watch(kancolleDataProvider);
    final kcWikiData = ref.watch(kcWikiDataStateProvider);

    ScrollController scrollController = ScrollController();

    Box<KancolleBattleLogEntity> dataBox = objectbox.battleLog;

    Query<KancolleBattleLogEntity> query = dataBox
        .query()
        .order(KancolleBattleLogEntity_.id, flags: Order.descending)
        .build();
    query
      ..offset = 0
      ..limit = queryLimit;

    List<KancolleBattleLogEntity> data = query.find();

    debugPrint("num:${data.length}");

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          debugPrint('At the top');
        } else {
          setState(() {
            queryLimit += queryLimit;
            data = query.find();
          });
          debugPrint('At the bottom');
        }
      }
    });

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).TextBattle),
        previousPageTitle: S.of(context).KanColleLogbook,
        // trailing: GestureDetector(
        //   onTap: () {
        //
        //   },
        //   child: Icon(
        //     CupertinoIcons.calendar,
        //     color: CupertinoTheme.of(context).textTheme.navActionTextStyle.color,
        //   ),
        // ),
      ),
      child: SafeArea(
        bottom: false,
        child: Builder(builder: (context) {
          return kcWikiData.when(
              data: (kcWikiData) {
                return kcWikiDataBody(scrollController, data, kcWikiData, runtimeData);
              },
              error: (error, stackTrace) {
                dev.log(error.toString());
                return runtimeDataBody(scrollController, data, runtimeData);
              },
              loading: () => const Center(
                    child: CupertinoActivityIndicator(
                      radius: 30,
                    ),
                  ));
        }),
      ),
    );
  }

  Widget kcWikiDataBody(ScrollController scrollController,
      List<KancolleBattleLogEntity> data, KcWikiData kcWikiData, KancolleData runtimeData) {
    dev.log("use kcwiki data");
    return CupertinoScrollbar(
      controller: scrollController,
      child: ListView(
        controller: scrollController,
        children: [
          if (data.isNotEmpty)
            CupertinoListSection.insetGrouped(
              children: List.generate(data.length, (index) {
                var log = data[index];
                var datetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
                    tz.local, log.timestamp);
                String date = DateFormat.yMMMMd().format(datetime);
                String time = DateFormat('HH:mm:ss').format(datetime);
                final battleData =
                    KancolleBattleLog.fromJson(jsonDecode(log.logStr));
                String admiralName = battleData.admiral ?? '';
                final mapId = battleData.mapInfo.id;
                final map = kcWikiData.maps.firstWhere(
                    (element) => element.id == mapId,
                    orElse: () => MapData(
                        id: mapId, name: "", routes: {}, cells: {}));

                late String mapName;
                String mapCode = "${mapId ~/ 10}-${mapId % 10}";
                if (map.name == '') {
                  final mapArea = runtimeData
                      .dataInfo.mapAreaInfo?[battleData.mapInfo.id ~/ 10];
                  final map = mapArea?.map.firstWhere(
                          (element) => element.id == battleData.mapInfo.id);
                  mapName = map?.name ?? '';
                } else {
                  mapName = map.name;
                }
                return LogItem(
                  log: log,
                  logType: LogType.battle,
                  title: Text("$mapCode $mapName"),
                  subtitle: Text('$date $time $admiralName'),
                  // leading: Text(mapCode),
                  kcWikiData: kcWikiData,
                );
              }),
            ),
        ],
      ),
    );
  }

  Widget runtimeDataBody(ScrollController scrollController,
      List<KancolleBattleLogEntity> data, KancolleData runtimeData) {
    dev.log("use runtime data");
    return CupertinoScrollbar(
      controller: scrollController,
      child: ListView(
        controller: scrollController,
        children: [
          if (data.isNotEmpty)
            CupertinoListSection.insetGrouped(
              children: List.generate(data.length, (index) {
                var log = data[index];
                var datetime = tz.TZDateTime.fromMillisecondsSinceEpoch(
                    tz.local, log.timestamp);
                String date = DateFormat.yMMMMd().format(datetime);
                String time = DateFormat('HH:mm:ss').format(datetime);
                final battleData =
                    KancolleBattleLog.fromJson(jsonDecode(log.logStr));
                String admiralName = battleData.admiral ?? '';
                final mapArea = runtimeData
                    .dataInfo.mapAreaInfo?[battleData.mapInfo.id ~/ 10];
                final map = mapArea?.map.firstWhere(
                    (element) => element.id == battleData.mapInfo.id);
                String mapName = map?.name ?? '';
                String mapCode = '${map?.areaId}-${map?.num}';

                if (mapName == '') {
                  return LogItem(
                    log: log,
                    logType: LogType.battle,
                    title: Text(
                        "${battleData.mapInfo.id ~/ 10}-${battleData.mapInfo.id % 10}"),
                    subtitle: Text('$date $time'),
                    onTap: () {
                      Fluttertoast.showToast(msg: "Error: Map not found");
                    },
                  );
                }
                return LogItem(
                  log: log,
                  logType: LogType.battle,
                  title: Text("$mapCode $mapName"),
                  subtitle: Text('$date $time $admiralName'),
                  // leading: Text(mapCode),
                );
              }),
            ),
        ],
      ),
    );
  }
}
