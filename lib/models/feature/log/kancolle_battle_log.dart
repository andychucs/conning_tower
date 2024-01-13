import 'package:conning_tower/models/feature/dashboard/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kancolle_battle_log.freezed.dart';
part 'kancolle_battle_log.g.dart';

@unfreezed
class KancolleBattleLog with _$KancolleBattleLog{
  factory KancolleBattleLog({
    required int id, // timestamp
    required MapInfoLog mapInfo,
    required List<Squad> squads,
    required List<DataLogEntity> data,
  }) = _KancolleBattleLog;

  factory KancolleBattleLog.fromJson(Map<String, dynamic> json) =>
      _$KancolleBattleLogFromJson(json);
}
