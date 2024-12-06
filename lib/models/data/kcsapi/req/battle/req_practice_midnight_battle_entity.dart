import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_practice_midnight_battle_entity.freezed.dart';

part 'req_practice_midnight_battle_entity.g.dart';

@unfreezed
class ReqPracticeMidnightBattleEntity with _$ReqPracticeMidnightBattleEntity {
  static const source = "/api_req_practice/midnight_battle";

  factory ReqPracticeMidnightBattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqPracticeMidnightBattleApiDataEntity? apiData,
  }) = _ReqPracticeMidnightBattleEntity;

  factory ReqPracticeMidnightBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqPracticeMidnightBattleEntityFromJson(json);
}

@unfreezed
class ReqPracticeMidnightBattleApiDataEntity
    with _$ReqPracticeMidnightBattleApiDataEntity
    implements BattleBasicModel {
  factory ReqPracticeMidnightBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') required List<dynamic> apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') required List<List<int>> apiESlot,
    @JsonKey(name: 'api_eParam') required List<dynamic> apiEParam,
    @JsonKey(name: 'api_e_effect_list') List<dynamic>? apiEEffectList,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_touch_plane') List<int?>? apiTouchPlane,
    @JsonKey(name: 'api_flare_pos') List<int?>? apiFlarePos,
    @JsonKey(name: 'api_hougeki') NightBattleGunFireRoundEntity? apiHougeki,
    List<int>? apiEscapeIdx,
  }) = _ReqPracticeMidnightBattleApiDataEntity;

  factory ReqPracticeMidnightBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqPracticeMidnightBattleApiDataEntityFromJson(json);
}
