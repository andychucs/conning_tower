import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_battle_midnight_battle_entity.freezed.dart';

part 'req_battle_midnight_battle_entity.g.dart';

@unfreezed
class ReqBattleMidnightBattleEntity with _$ReqBattleMidnightBattleEntity {
  static const source = "/api_req_battle_midnight/battle";

  factory ReqBattleMidnightBattleEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data')
    required ReqBattleMidnightBattleApiDataEntity apiData,
  }) = _ReqBattleMidnightBattleEntity;

  factory ReqBattleMidnightBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqBattleMidnightBattleEntityFromJson(json);
}

@unfreezed
class ReqBattleMidnightBattleApiDataEntity
    with _$ReqBattleMidnightBattleApiDataEntity
    implements NightBattleData {
  factory ReqBattleMidnightBattleApiDataEntity({
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
    @JsonKey(name: 'api_balloon_cell') required int apiBalloonCell,
    @JsonKey(name: 'api_touch_plane') required List<int> apiTouchPlane,
    @JsonKey(name: 'api_flare_pos') required List<int> apiFlarePos,
    @JsonKey(name: 'api_hougeki') NightBattleGunFireRoundEntity? apiHougeki,
    List<int>? apiEscapeIdx,
    BattleFriendlyInfo? apiFriendlyInfo,
    FriendlyFleetBattle? apiFriendlyBattle,
  }) = _ReqBattleMidnightBattleApiDataEntity;

  factory ReqBattleMidnightBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqBattleMidnightBattleApiDataEntityFromJson(json);
}
