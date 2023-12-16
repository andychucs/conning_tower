import 'dart:convert';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/pages/log_pages/log_detail_battle.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:flutter/cupertino.dart';

class LogItem extends StatelessWidget {
  const LogItem({
    super.key,
    required this.log,
    required this.logType,
    this.leading,
    required this.title,
    this.subtitle,
    this.onTap,
    this.kcWikiData,
  });

  final KancolleLogEntity log;
  final LogType logType;
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final VoidCallback? onTap;
  final KcWikiData? kcWikiData;


  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      onTap: () => onTap != null ? onTap!() : navigatorToCupertino(
        context,
        LogDetailBattle(log: log, kcWikiData: kcWikiData),
      ),
    );
  }
}
