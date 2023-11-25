import 'dart:convert';

import 'package:conning_tower/models/feature/dashboard/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'kancolle_battle_log.freezed.dart';
part 'kancolle_battle_log.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class KancolleBattleLog with _$KancolleBattleLog {
  const factory KancolleBattleLog({
    required int id, // timestamp
    required MapInfo mapInfo,
    required List<Squad> squads,
    required List<DataLogEntity> data,
  }) = _KancolleBattleLog;

  factory KancolleBattleLog.fromJson(Map<String, dynamic> json) =>
      _$KancolleBattleLogFromJson(json);
}

@Entity()
class KancolleBattleLogEntity {
  int id;

  @Index()
  int timestamp;

  String logStr;

  KancolleBattleLogEntity({this.id = 0, required this.timestamp, required this.logStr});


  factory KancolleBattleLogEntity.fromLog(KancolleBattleLog log) {
    return KancolleBattleLogEntity(timestamp: log.id, logStr: jsonEncode(log.toJson()));
  }

}