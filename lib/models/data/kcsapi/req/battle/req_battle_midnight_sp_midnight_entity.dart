import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_battle_midnight_sp_midnight_entity.freezed.dart';
part 'req_battle_midnight_sp_midnight_entity.g.dart';

@unfreezed
class ReqBattleMidnightSpMidnightEntity
    with _$ReqBattleMidnightSpMidnightEntity {
  static get source => "/api_req_battle_midnight/sp_midnight";

  factory ReqBattleMidnightSpMidnightEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data')
    ReqBattleMidnightSpMidnightDataApiDataEntity? apiData,
  }) = _ReqBattleMidnightSpMidnightEntity;

  factory ReqBattleMidnightSpMidnightEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqBattleMidnightSpMidnightEntityFromJson(json);
}

@unfreezed
class ReqBattleMidnightSpMidnightDataApiDataEntity
    with _$ReqBattleMidnightSpMidnightDataApiDataEntity implements SingleVsSingleBaseModel{
  factory ReqBattleMidnightSpMidnightDataApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_n_support_flag') int? apiNSupportFlag,
    @JsonKey(name: 'api_touch_plane') List<int?>? apiTouchPlane,
    @JsonKey(name: 'api_flare_pos') List<int?>? apiFlarePos,
    @JsonKey(name: 'api_hougeki')
    ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity? apiHougeki,
  }) = _ReqBattleMidnightSpMidnightDataApiDataEntity;

  factory ReqBattleMidnightSpMidnightDataApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqBattleMidnightSpMidnightDataApiDataEntityFromJson(json);
}

@unfreezed
class ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity
    with _$ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity
    implements GunFireRound {
  factory ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity({
    @JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int>? apiAtList,
    @JsonKey(name: 'api_n_mother_list') List<int>? apiNMotherList,
    @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
    @JsonKey(name: 'api_sp_list') List<int>? apiSpList,
    @JsonKey(name: 'api_damage') List<List<num>>? apiDamage,
  }) = _ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity;

  factory ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqBattleMidnightSpMidnightDataApiDataApiHougekiEntityFromJson(json);
}
