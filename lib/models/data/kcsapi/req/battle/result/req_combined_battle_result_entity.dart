import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_combined_battle_result_entity.freezed.dart';

part 'req_combined_battle_result_entity.g.dart';

@unfreezed
class ReqCombinedBattleResultEntity with _$ReqCombinedBattleResultEntity {
  static const source = "/api_req_combined_battle/battleresult";

  factory ReqCombinedBattleResultEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqCombinedBattleResultApiDataEntity? apiData,
  }) = _ReqCombinedBattleResultEntity;

  factory ReqCombinedBattleResultEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqCombinedBattleResultEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleResultApiDataEntity
    with _$ReqCombinedBattleResultApiDataEntity {
  factory ReqCombinedBattleResultApiDataEntity({
    @JsonKey(name: 'api_ship_id') List<int?>? apiShipId,
    @JsonKey(name: 'api_win_rank') String? apiWinRank,
    @JsonKey(name: 'api_get_exp') int? apiGetExp,
    @JsonKey(name: 'api_mvp') int? apiMvp,
    @JsonKey(name: 'api_mvp_combined') dynamic apiMvpCombined,
    @JsonKey(name: 'api_member_lv') int? apiMemberLv,
    @JsonKey(name: 'api_member_exp') int? apiMemberExp,
    @JsonKey(name: 'api_get_base_exp') int? apiGetBaseExp,
    @JsonKey(name: 'api_get_ship_exp') List<int?>? apiGetShipExp,
    @JsonKey(name: 'api_get_ship_exp_combined') dynamic apiGetShipExpCombined,
    @JsonKey(name: 'api_get_exp_lvup') List<dynamic>? apiGetExpLvup,
    @JsonKey(name: 'api_get_exp_lvup_combined') dynamic apiGetExpLvupCombined,
    @JsonKey(name: 'api_dests') int? apiDests,
    @JsonKey(name: 'api_destsf') int? apiDestsf,
    @JsonKey(name: 'api_quest_name') String? apiQuestName,
    @JsonKey(name: 'api_quest_level') int? apiQuestLevel,
    @JsonKey(name: 'api_enemy_info') BattleResultEnemyInfoEntity? apiEnemyInfo,
    @JsonKey(name: 'api_first_clear') int? apiFirstClear,
    @JsonKey(name: 'api_get_flag') List<int?>? apiGetFlag,
    @JsonKey(name: 'api_get_ship') BattleResultGetShipEntity? apiGetShip,
    @JsonKey(name: 'api_get_eventflag') int? apiGetEventflag,
    @JsonKey(name: 'api_get_exmap_rate') dynamic apiGetExmapRate,
    @JsonKey(name: 'api_get_exmap_useitem_id') dynamic apiGetExmapUseitemId,
    @JsonKey(name: 'api_escape_flag') int? apiEscapeFlag,
    @JsonKey(name: 'api_escape') BattleResultEscapeEntity? apiEscape,
    @JsonKey(name: 'api_m2') int? apiM2,
  }) = _ReqCombinedBattleResultApiDataEntity;

  factory ReqCombinedBattleResultApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleResultApiDataEntityFromJson(json);
}

@unfreezed
class BattleResultEnemyInfoEntity with _$BattleResultEnemyInfoEntity {
  factory BattleResultEnemyInfoEntity({
    @JsonKey(name: 'api_level') String? apiLevel,
    @JsonKey(name: 'api_rank') String? apiRank,
    @JsonKey(name: 'api_deck_name') String? apiDeckName,
  }) = _BattleResultEnemyInfoEntity;

  factory BattleResultEnemyInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BattleResultEnemyInfoEntityFromJson(json);
}

@unfreezed
class BattleResultGetShipEntity with _$BattleResultGetShipEntity {
  factory BattleResultGetShipEntity({
    @JsonKey(name: 'api_ship_id') int? apiShipId,
    @JsonKey(name: 'api_ship_type') String? apiShipType,
    @JsonKey(name: 'api_ship_name') String? apiShipName,
    @JsonKey(name: 'api_ship_getmes') String? apiShipGetmes,
  }) = _BattleResultGetShipEntity;

  factory BattleResultGetShipEntity.fromJson(Map<String, dynamic> json) =>
      _$BattleResultGetShipEntityFromJson(json);
}

@freezed
class BattleResultEscapeEntity with _$BattleResultEscapeEntity {
  // data structure also see: https://www.cat-ears.net/?p=38652
  const factory BattleResultEscapeEntity({
    @JsonKey(name: 'api_escape_idx') required List<int> apiEscapeIdx,
    @JsonKey(name: 'api_tow_idx') List<int>? apiTowIdx,
  }) = _BattleResultEscapeEntity;

  factory BattleResultEscapeEntity.fromJson(Map<String, dynamic> json) =>
      _$BattleResultEscapeEntityFromJson(json);
}