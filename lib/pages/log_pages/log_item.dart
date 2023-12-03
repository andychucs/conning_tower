import 'dart:convert';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/pages/log_pages/log_detail_battle.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:flutter/cupertino.dart';

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
        LogDetailBattle(log: log),
      ),
    );
  }
}
