import 'dart:convert';

import 'kancolle_battle_log.dart';
import 'package:objectbox/objectbox.dart';

import 'kancolle_quest_log.dart';

@Entity(uid: 332593390095459654)
class KancolleBattleLogEntity {
  int id;

  @Index()
  int timestamp;

  String logStr;

  KancolleBattleLogEntity({this.id = 0, required this.timestamp, required this.logStr});


  factory KancolleBattleLogEntity.fromLog(KancolleBattleLog log) {
    return KancolleBattleLogEntity(timestamp: log.id, logStr: jsonEncode(log.toJson()));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "timestamp": timestamp,
      "logStr": logStr
    };
  }

}

@Entity()
class KancolleQuestLogEntity {
  int id;
  int questId;
  int timestamp;
  String logStr;

  KancolleQuestLogEntity({this.id = 0, required this.questId, required this.timestamp, required this.logStr});


  factory KancolleQuestLogEntity.fromLog(KancolleQuestLog log, {int? timestamp}) {
    return KancolleQuestLogEntity(questId: log.id, timestamp: timestamp ?? DateTime.now().millisecondsSinceEpoch, logStr: jsonEncode(log.toJson()));
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
