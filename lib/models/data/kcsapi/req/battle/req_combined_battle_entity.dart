import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_combined_battle_entity.freezed.dart';

part 'req_combined_battle_entity.g.dart';

@unfreezed
class ReqCombinedBattleEntity with _$ReqCombinedBattleEntity {
  static get source => "/api_req_combined_battle/battle";

  factory ReqCombinedBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqCombinedBattleApiDataEntity? apiData,
  }) = _ReqCombinedBattleEntity;

  factory ReqCombinedBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqCombinedBattleEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleApiDataEntity with _$ReqCombinedBattleApiDataEntity implements DoubleVsSingleBattleData{
  factory ReqCombinedBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_f_nowhps_combined') List<int>? apiFNowhpsCombined,
    @JsonKey(name: 'api_f_maxhps_combined') List<int>? apiFMaxhpsCombined,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_fParam_combined') List<dynamic>? apiFParamCombined,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_atoll_cell') int? apiAtollCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_air_base_attack') List<AirBaseAttackRound?>? apiAirBaseAttack,
    CombineAircraftRound? apiInjectionKouku,
    AirBaseJetAircraftRound? apiAirBaseInjection,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku') CombineAircraftRound? apiKouku,
    @JsonKey(name: 'api_support_flag') int? apiSupportFlag,
    @JsonKey(name: 'api_support_info') dynamic apiSupportInfo,
    @JsonKey(name: 'api_opening_taisen_flag') int? apiOpeningTaisenFlag,
    @JsonKey(name: 'api_opening_taisen') GunFireRoundEntity? apiOpeningTaisen,
    @JsonKey(name: 'api_opening_flag') int? apiOpeningFlag,
    @JsonKey(name: 'api_opening_atack') OpeningTorpedoRoundEntity? apiOpeningAtack,
    @JsonKey(name: 'api_hourai_flag') List<int>? apiHouraiFlag,
    @JsonKey(name: 'api_hougeki1') GunFireRoundEntity? apiHougeki1,
    @JsonKey(name: 'api_raigeki') TorpedoRoundEntity? apiRaigeki,
    @JsonKey(name: 'api_hougeki2') GunFireRoundEntity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3') GunFireRoundEntity? apiHougeki3,
  }) = _ReqCombinedBattleApiDataEntity;

  factory ReqCombinedBattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqCombinedBattleApiDataEntityFromJson(json);
}
