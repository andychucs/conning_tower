import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_practice_battle_result_entity.freezed.dart';

part 'req_practice_battle_result_entity.g.dart';

@unfreezed
class ReqPracticeBattleResultEntity with _$ReqPracticeBattleResultEntity {
  static const source = '/api_req_practice/battle_result';

  factory ReqPracticeBattleResultEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqPracticeBattleResultApiDataEntity? apiData,
  }) = _ReqPracticeBattleResultEntity;

  factory ReqPracticeBattleResultEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqPracticeBattleResultEntityFromJson(json);
}

@unfreezed
class ReqPracticeBattleResultApiDataEntity
    with _$ReqPracticeBattleResultApiDataEntity {
  factory ReqPracticeBattleResultApiDataEntity({
    @JsonKey(name: 'api_ship_id') List<int?>? apiShipId,
    @JsonKey(name: 'api_win_rank') String? apiWinRank,
    @JsonKey(name: 'api_get_exp') int? apiGetExp,
    @JsonKey(name: 'api_member_lv') int? apiMemberLv,
    @JsonKey(name: 'api_member_exp') int? apiMemberExp,
    @JsonKey(name: 'api_get_base_exp') int? apiGetBaseExp,
    @JsonKey(name: 'api_mvp') int? apiMvp,
    @JsonKey(name: 'api_get_ship_exp') List<int?>? apiGetShipExp,
    @JsonKey(name: 'api_get_exp_lvup') List<dynamic>? apiGetExpLvup,
    @JsonKey(name: 'api_enemy_info')
    ReqPracticeBattleResultApiDataApiEnemyInfoEntity? apiEnemyInfo,
  }) = _ReqPracticeBattleResultApiDataEntity;

  factory ReqPracticeBattleResultApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqPracticeBattleResultApiDataEntityFromJson(json);
}

@unfreezed
class ReqPracticeBattleResultApiDataApiEnemyInfoEntity
    with _$ReqPracticeBattleResultApiDataApiEnemyInfoEntity {
  factory ReqPracticeBattleResultApiDataApiEnemyInfoEntity({
    @JsonKey(name: 'api_user_name') String? apiUserName,
    @JsonKey(name: 'api_level') int? apiLevel,
    @JsonKey(name: 'api_rank') String? apiRank,
    @JsonKey(name: 'api_deck_name') String? apiDeckName,
  }) = _ReqPracticeBattleResultApiDataApiEnemyInfoEntity;

  factory ReqPracticeBattleResultApiDataApiEnemyInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqPracticeBattleResultApiDataApiEnemyInfoEntityFromJson(json);
}
