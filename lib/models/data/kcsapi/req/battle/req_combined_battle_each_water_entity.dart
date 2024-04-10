import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_combined_battle_each_water_entity.freezed.dart';

part 'req_combined_battle_each_water_entity.g.dart';

@unfreezed
class ReqCombinedBattleEachWaterEntity with _$ReqCombinedBattleEachWaterEntity {
  static get source => "/api_req_combined_battle/each_battle_water";

  factory ReqCombinedBattleEachWaterEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqCombinedBattleEachWaterApiDataEntity? apiData,
  }) = _ReqCombinedBattleEachWaterEntity;

  factory ReqCombinedBattleEachWaterEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleEachWaterEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleEachWaterApiDataEntity
    with _$ReqCombinedBattleEachWaterApiDataEntity
    implements DoubleVsDoubleBattleData {
  factory ReqCombinedBattleEachWaterApiDataEntity({
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
    @JsonKey(name: 'api_ship_ke_combined') List<int>? apiShipKeCombined,
    @JsonKey(name: 'api_ship_lv_combined') List<int>? apiShipLvCombined,
    @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
    @JsonKey(name: 'api_e_nowhps_combined') List<int>? apiENowhpsCombined,
    @JsonKey(name: 'api_e_maxhps_combined') List<int>? apiEMaxhpsCombined,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eSlot_combined') List<dynamic>? apiESlotCombined,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_eParam_combined') List<dynamic>? apiEParamCombined,
    @JsonKey(name: 'api_flavor_info') dynamic apiFlavorInfo,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_atoll_cell') int? apiAtollCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    AirBaseJetAircraftRound? apiAirBaseInjection,
    @JsonKey(name: 'api_injection_kouku') CombineAircraftRound? apiInjectionKouku,
    @JsonKey(name: 'api_air_base_attack') List<AirBaseAttackRound?>? apiAirBaseAttack,
    @JsonKey(name: 'api_air_base_rescue_type') int? apiAirBaseRescueType,
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
    @JsonKey(name: 'api_hougeki2') GunFireRoundEntity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3') GunFireRoundEntity? apiHougeki3,
    @JsonKey(name: 'api_raigeki') TorpedoRoundEntity? apiRaigeki,
  }) = _ReqCombinedBattleEachWaterApiDataEntity;

  factory ReqCombinedBattleEachWaterApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleEachWaterApiDataEntityFromJson(json);
}
