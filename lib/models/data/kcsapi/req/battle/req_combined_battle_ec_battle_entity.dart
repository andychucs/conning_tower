import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_combined_battle_ec_battle_entity.freezed.dart';

part 'req_combined_battle_ec_battle_entity.g.dart';

@unfreezed
class ReqCombinedBattleECBattleEntity with _$ReqCombinedBattleECBattleEntity {
  static get source => "/api_req_combined_battle/ec_battle";

  factory ReqCombinedBattleECBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqCombinedBattleECBattleApiDataEntity? apiData,
  }) = _ReqCombinedBattleECBattleEntity;

  factory ReqCombinedBattleECBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataEntity
    with _$ReqCombinedBattleECBattleApiDataEntity
    implements SingleVsDoubleBattleData {
  factory ReqCombinedBattleECBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
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
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_air_base_attack') List<AirBaseAttackRound?>? apiAirBaseAttack,
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
    AirBaseJetAircraftRound? apiAirBaseInjection,
    CombineAircraftRound? apiInjectionKouku,
  }) = _ReqCombinedBattleECBattleApiDataEntity;

  factory ReqCombinedBattleECBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataEntityFromJson(json);
}


