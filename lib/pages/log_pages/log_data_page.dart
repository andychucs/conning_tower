import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/objectbox.g.dart';
import 'package:conning_tower/pages/log_pages/log_item.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

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
