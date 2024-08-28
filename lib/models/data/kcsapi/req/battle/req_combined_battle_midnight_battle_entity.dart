import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_combined_battle_midnight_battle_entity.freezed.dart';

part 'req_combined_battle_midnight_battle_entity.g.dart';

@unfreezed
class ReqCombinedBattleMidnightBattleEntity
    with _$ReqCombinedBattleMidnightBattleEntity {
  static const source = "/api_req_combined_battle/midnight_battle";

  factory ReqCombinedBattleMidnightBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data')
    ReqCombinedBattleMidnightBattleApiDataEntity? apiData,
  }) = _ReqCombinedBattleMidnightBattleEntity;

  factory ReqCombinedBattleMidnightBattleEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleMidnightBattleEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleMidnightBattleApiDataEntity
    with _$ReqCombinedBattleMidnightBattleApiDataEntity
    implements DoubleVsSingleBattleData, NightBattleData {
  factory ReqCombinedBattleMidnightBattleApiDataEntity({
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
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_atoll_cell') int? apiAtollCell,
    @JsonKey(name: 'api_touch_plane') List<int?>? apiTouchPlane,
    @JsonKey(name: 'api_flare_pos') List<int?>? apiFlarePos,
    @JsonKey(name: 'api_hougeki') NightBattleGunFireRoundEntity? apiHougeki,
    List<int>? apiEscapeIdx,
    List<int>? apiEscapeIdxCombined,
    BattleFriendlyInfo? apiFriendlyInfo,
    FriendlyFleetBattle? apiFriendlyBattle,
  }) = _ReqCombinedBattleMidnightBattleApiDataEntity;

  factory ReqCombinedBattleMidnightBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleMidnightBattleApiDataEntityFromJson(json);
}
