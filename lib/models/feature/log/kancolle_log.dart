import 'dart:convert';

import '../../../generated/l10n.dart';
import 'kancolle_battle_log.dart';
import 'package:objectbox/objectbox.dart';

import 'kancolle_quest_log.dart';

enum Resource {
  fuel,
  ammo,
  steel,
  bauxite,
  instantCreateShip,
  instantRepairs,
  developmentMaterials,
  improvementMaterials
}

const allResource = [
  "fuel",
  "ammo",
  "steel",
  "bauxite",
  "ic",
  "ir",
  "dm",
  "im"
];

final resourceNameMap = {
  "fuel": S.current.KCResourceFuel,
  "ammo": S.current.KCResourceAmmo,
  "steel": S.current.KCResourceSteel,
  "bauxite": S.current.KCResourceBauxite,
  "ic": S.current.KCResourceInstantCreateShip,
  "ir": S.current.KCResourceInstantRepair,
  "dm": S.current.KCResourceDevelopmentMaterial,
  "im": S.current.KCResourceImprovementMaterial
};

@Entity(uid: 332593390095459654)
class KancolleBattleLogEntity {
  int id;

  @Index()
  int timestamp;

  String logStr;

  KancolleBattleLogEntity(
      {this.id = 0, required this.timestamp, required this.logStr});

  factory KancolleBattleLogEntity.fromLog(KancolleBattleLog log) {
    return KancolleBattleLogEntity(
        timestamp: log.id, logStr: jsonEncode(log.toJson()));
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "timestamp": timestamp, "logStr": logStr};
  }
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

@Entity()
class KancolleResourceLogEntity {
  int id;
  @Property(type: PropertyType.date)
  DateTime time;
  String admiral;
  String resource;
  int open;
  int close;
  int high;
  int low;

  KancolleResourceLogEntity(
      {this.id = 0,
      required this.time,
      required this.admiral,
      required this.resource,
      required this.open,
      required this.close,
      required this.high,
      required this.low})
      : assert(allResource.contains(resource));
  factory KancolleResourceLogEntity.fromJson(Map<String, dynamic> json) {
    return KancolleResourceLogEntity(
      time: json['timestamp'],
      admiral: json['admiral'],
      resource: json['resource'],
      open: json['open'],
      close: json['close'],
      high: json['high'],
      low: json['low'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'time': time.toString(),
      'admiral': admiral,
      'resource': resource,
      'open': open,
      'close': close,
      'high': high,
      'low': low,
    };
  }
}
