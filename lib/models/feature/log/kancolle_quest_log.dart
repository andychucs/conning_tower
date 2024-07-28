import 'package:conning_tower/models/feature/dashboard/kancolle/quest_assistant.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'kancolle_log.dart';

part 'kancolle_quest_log.freezed.dart';
part 'kancolle_quest_log.g.dart';

@unfreezed
class KancolleQuestLog with _$KancolleQuestLog{
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
