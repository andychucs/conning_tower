import 'dart:convert';

import 'package:conning_tower/models/feature/dashboard/kancolle/quest_assistant.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'kancolle_quest_log.freezed.dart';
part 'kancolle_quest_log.g.dart';

@unfreezed
class KancolleQuestLog with _$KancolleQuestLog {
  factory KancolleQuestLog({
    required int id, // quest id
    String? admiral,
    String? title,
    int? state,
    required List<QuestMission> mission,
  }) = _KancolleQuestLog;

  factory KancolleQuestLog.fromJson(Map<String, dynamic> json) =>
      _$KancolleQuestLogFromJson(json);
}

@Entity()
class KancolleQuestLogEntity {
  int id;
  int questId;
  int timestamp;
  String logStr;

  KancolleQuestLogEntity(
      {this.id = 0,
      required this.questId,
      required this.timestamp,
      required this.logStr});

  factory KancolleQuestLogEntity.fromLog(KancolleQuestLog log,
      {int? timestamp}) {
    return KancolleQuestLogEntity(
        questId: log.id,
        timestamp: timestamp ?? DateTime.now().millisecondsSinceEpoch,
        logStr: jsonEncode(log.toJson()));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'questId': questId,
      'timestamp': timestamp,
      'logStr': logStr,
    };
  }
}
