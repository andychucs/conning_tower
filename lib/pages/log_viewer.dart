import 'dart:convert';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/objectbox.g.dart';
import 'package:conning_tower/utils/objectbox.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

enum LogType { battle }

class LogViewer extends ConsumerWidget {
  final String? previousPageTitle;

  const LogViewer({super.key, required this.previousPageTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text("LogViewer"),
        previousPageTitle: previousPageTitle,
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoScrollbar(
          child: ListView(
            children: [
              CupertinoListSection.insetGrouped(
                footer: FutureBuilder(
                    future: objectbox.storeSize(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData)
                        return CupertinoListSectionDescription(snapshot.data!);
                      return Container();
                    }),
                children: [
                  CupertinoListTile(
                    title: Text("戦闘"),
                    trailing: CupertinoListTileChevron(),
                    onTap: () =>
                        navigatorToCupertino(context, LogDataPage.battle()),
                  ),
                  // CupertinoListTile(
                  //   title: Text("建造"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                  // CupertinoListTile(
                  //   title: Text("開発"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                  // CupertinoListTile(
                  //   title: Text("遠征"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(
                    leading: const DummyIcon(
                        color: CupertinoColors.destructiveRed,
                        icon: CupertinoIcons.trash),
                    title: Text("Clear"),
                    onTap: () async {
                      await objectbox.clear();
                      objectbox = await ObjectBox.create();
                      Fluttertoast.showToast(msg: "All log cleared");
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogDataPage extends StatefulWidget {
  final LogType logType;

  LogDataPage.battle({super.key}) : logType = LogType.battle;

  @override
  State<LogDataPage> createState() => _LogDataPageState();
}

class _LogDataPageState extends State<LogDataPage> {
  int queryLimit = 20;

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    Box<KancolleLogEntity> dataBox = objectbox.battleLog;

    Query<KancolleLogEntity> query = dataBox
        .query()
        .order(KancolleLogEntity_.id, flags: Order.descending)
        .build();
    query
      ..offset = 0
      ..limit = queryLimit;

    List<KancolleLogEntity> data = query.find();

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
        middle: Text("戦闘"),
        previousPageTitle: "LogViewer",
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
        child: CupertinoScrollbar(
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
                    return LogItem(
                      log: log,
                      date: date,
                      time: time,
                      logType: widget.logType,
                    );
                  }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogItem extends StatelessWidget {
  const LogItem({
    super.key,
    required this.log,
    required this.date,
    required this.time,
    required this.logType,
  });

  final KancolleLogEntity log;
  final String date;
  final String time;
  final LogType logType;

  @override
  Widget build(BuildContext context) {
    var battleData = KancolleBattleLog.fromJson(jsonDecode(log.logStr));
    return CupertinoListTile(
      leading: Text('${battleData.mapInfo.areaId}-${battleData.mapInfo.num}'),
      title: Text(battleData.mapInfo.name),
      subtitle: Text('$date $time'),
      onTap: () => navigatorToCupertino(
        context,
        CupertinoPageScaffold(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.systemGroupedBackground,
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
          child: SingleChildScrollView(child: Text(log.logStr)),
        ),
      ),
    );
  }
}
