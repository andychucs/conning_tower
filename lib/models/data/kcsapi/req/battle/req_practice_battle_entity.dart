import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_practice_battle_entity.freezed.dart';

part 'req_practice_battle_entity.g.dart';

@unfreezed
class ReqPracticeBattleEntity with _$ReqPracticeBattleEntity {
  static const source = "/api_req_practice/battle";

  factory ReqPracticeBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqPracticeBattleApiDataEntity? apiData,
  }) = _ReqPracticeBattleEntity;

  factory ReqPracticeBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqPracticeBattleEntityFromJson(json);
}

@unfreezed
class ReqPracticeBattleApiDataEntity
    with _$ReqPracticeBattleApiDataEntity
    implements FullGunFireRoundBattle {
  factory ReqPracticeBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') required List<dynamic> apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_e_effect_list') List<dynamic>? apiEEffectList,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku') AircraftRoundData? apiKouku,
    @JsonKey(name: 'api_opening_taisen_flag') int? apiOpeningTaisenFlag,
    @JsonKey(name: 'api_opening_taisen') GunFireRoundEntity? apiOpeningTaisen,
    @JsonKey(name: 'api_opening_flag') int? apiOpeningFlag,
    @JsonKey(name: 'api_opening_atack')
    OpeningTorpedoRoundEntity? apiOpeningAtack,
    @JsonKey(name: 'api_hourai_flag') required List<int> apiHouraiFlag,
    @JsonKey(name: 'api_hougeki1') GunFireRoundEntity? apiHougeki1,
    @JsonKey(name: 'api_hougeki2') GunFireRoundEntity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3') GunFireRoundEntity? apiHougeki3,
    @JsonKey(name: 'api_raigeki') TorpedoRoundEntity? apiRaigeki,
    List<int>? apiEscapeIdx,
  }) = _ReqPracticeBattleApiDataEntity;

  factory ReqPracticeBattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqPracticeBattleApiDataEntityFromJson(json);
}
