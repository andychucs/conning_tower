import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_sortie_battle_entity.freezed.dart';

part 'req_sortie_battle_entity.g.dart';

@unfreezed
class ReqSortieBattleEntity with _$ReqSortieBattleEntity {
  static const source = "/api_req_sortie/battle";

  factory ReqSortieBattleEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqSortieBattleApiDataEntity apiData,
  }) = _ReqSortieBattleEntity;

  factory ReqSortieBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieBattleEntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataEntity
    with _$ReqSortieBattleApiDataEntity
    implements SingleVsSingleBattleData {
  factory ReqSortieBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') required List<dynamic> apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') required List<dynamic> apiESlot,
    @JsonKey(name: 'api_eParam') required List<dynamic> apiEParam,
    @JsonKey(name: 'api_smoke_type') required int apiSmokeType,
    @JsonKey(name: 'api_midnight_flag') required int apiMidnightFlag,
    @JsonKey(name: 'api_search') required List<int> apiSearch,
    @JsonKey(name: 'api_air_base_attack') List<AirBaseAttackRound?>? apiAirBaseAttack,
    @JsonKey(name: 'api_stage_flag') required List<int> apiStageFlag,
    @JsonKey(name: 'api_kouku') required NormalAircraftRound apiKouku,
    @JsonKey(name: 'api_support_flag') required int apiSupportFlag,
    @JsonKey(name: 'api_support_info') required BattleSupportInfo? apiSupportInfo,
    @JsonKey(name: 'api_opening_taisen_flag') required int apiOpeningTaisenFlag,
    @JsonKey(name: 'api_opening_taisen')
    GunFireRoundEntity?
        apiOpeningTaisen, // antisub use same format with gunfire
    @JsonKey(name: 'api_opening_flag') required int apiOpeningFlag,
    @JsonKey(name: 'api_opening_atack') OpeningTorpedoRoundEntity? apiOpeningAtack,
    @JsonKey(name: 'api_hourai_flag') required List<int> apiHouraiFlag,
    @JsonKey(name: 'api_hougeki1') GunFireRoundEntity? apiHougeki1,
    @JsonKey(name: 'api_hougeki2') GunFireRoundEntity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3') GunFireRoundEntity? apiHougeki3,
    @JsonKey(name: 'api_raigeki') TorpedoRoundEntity? apiRaigeki,
    AirBaseJetAircraftRound? apiAirBaseInjection,
    NormalAircraftRound? apiInjectionKouku,
    List<int>? apiEscapeIdx,
    BattleFriendlyInfo? apiFriendlyInfo,
    FriendlyFleetBattle? apiFriendlyBattle,
    CombineAircraftRound? apiFriendlyKouku,
  }) = _ReqSortieBattleApiDataEntity;

  factory ReqSortieBattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataEntityFromJson(json);
}



