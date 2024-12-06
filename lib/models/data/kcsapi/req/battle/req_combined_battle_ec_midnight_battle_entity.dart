import 'battle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_combined_battle_ec_midnight_battle_entity.freezed.dart';

part 'req_combined_battle_ec_midnight_battle_entity.g.dart';

@unfreezed
class ReqCombinedBattleECMidnightBattleEntity
    with _$ReqCombinedBattleECMidnightBattleEntity {
  static const source = "/api_req_combined_battle/ec_midnight_battle";

  factory ReqCombinedBattleECMidnightBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data')
    ReqCombinedBattleEcMidnightBattleApiDataEntity? apiData,
  }) = _ReqCombinedBattleECMidnightBattleEntity;

  factory ReqCombinedBattleECMidnightBattleEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECMidnightBattleEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleEcMidnightBattleApiDataEntity
    with _$ReqCombinedBattleEcMidnightBattleApiDataEntity
    implements DoubleVsDoubleBattleData, NightBattleData {
  factory ReqCombinedBattleEcMidnightBattleApiDataEntity({
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
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_e_nowhps_combined') List<dynamic>? apiENowhpsCombined,
    @JsonKey(name: 'api_e_maxhps_combined') List<dynamic>? apiEMaxhpsCombined,
    @JsonKey(name: 'api_eSlot') required List<List<int>> apiESlot,
    @JsonKey(name: 'api_eSlot_combined') List<List<int>>? apiESlotCombined,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_eParam_combined') List<dynamic>? apiEParamCombined,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_active_deck') List<dynamic>? apiActiveDeck,
    @JsonKey(name: 'api_touch_plane') List<dynamic>? apiTouchPlane,
    @JsonKey(name: 'api_flare_pos') List<dynamic>? apiFlarePos,
    @JsonKey(name: 'api_hougeki') NightBattleGunFireRoundEntity? apiHougeki,
    List<int>? apiEscapeIdx,
    List<int>? apiEscapeIdxCombined,
    BattleFriendlyInfo? apiFriendlyInfo,
    FriendlyFleetBattle? apiFriendlyBattle,
  }) = _ReqCombinedBattleEcMidnightBattleApiDataEntity;

  factory ReqCombinedBattleEcMidnightBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleEcMidnightBattleApiDataEntityFromJson(json);
}
