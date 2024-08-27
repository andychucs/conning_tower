import 'dart:convert';

import 'package:conning_tower/models/feature/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'kancolle_battle_log.freezed.dart';
part 'kancolle_battle_log.g.dart';

@unfreezed
class KancolleBattleLog with _$KancolleBattleLog {
  factory KancolleBattleLog({
    required int id, // timestamp
    String? admiral,
    required MapInfoLog mapInfo,
    required List<Squad> squads,
    required List<DataLogEntity> data,
  }) = _KancolleBattleLog;

  factory KancolleBattleLog.fromJson(Map<String, dynamic> json) =>
      _$KancolleBattleLogFromJson(json);
}

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
