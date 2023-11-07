import 'package:conning_tower/models/data/kcsapi/battle_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_sortie_battle_entity.freezed.dart';

part 'req_sortie_battle_entity.g.dart';

@unfreezed
class ReqSortieBattleEntity with _$ReqSortieBattleEntity {
  static get source => "/api_req_sortie/battle";

  factory ReqSortieBattleEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqSortieBattleApiDataEntity apiData,
  }) = _ReqSortieBattleEntity;

  factory ReqSortieBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieBattleEntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataEntity with _$ReqSortieBattleApiDataEntity {
  factory ReqSortieBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam')
    required List<dynamic> apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
    @JsonKey(name: 'api_eSlot')
    required List<dynamic> apiESlot,
    @JsonKey(name: 'api_eParam')
    required List<dynamic> apiEParam,
    @JsonKey(name: 'api_smoke_type') required int apiSmokeType,
    @JsonKey(name: 'api_midnight_flag') required int apiMidnightFlag,
    @JsonKey(name: 'api_search') required List<int> apiSearch,
    @JsonKey(name: 'api_stage_flag') required List<int> apiStageFlag,
    @JsonKey(name: 'api_kouku')
    required ReqSortieBattleApiDataApiKoukuEntity apiKouku,
    @JsonKey(name: 'api_support_flag') required int apiSupportFlag,
    @JsonKey(name: 'api_support_info') required dynamic apiSupportInfo,
    @JsonKey(name: 'api_opening_taisen_flag') required int apiOpeningTaisenFlag,
    @JsonKey(name: 'api_opening_taisen') required dynamic apiOpeningTaisen,
    @JsonKey(name: 'api_opening_flag') required int apiOpeningFlag,
    @JsonKey(name: 'api_opening_atack') required dynamic apiOpeningAtack,
    @JsonKey(name: 'api_hourai_flag') required List<int> apiHouraiFlag,
    @JsonKey(name: 'api_hougeki1') ReqSortieBattleApiDataApiHougekiEntity? apiHougeki1,
    @JsonKey(name: 'api_hougeki2') ReqSortieBattleApiDataApiHougekiEntity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3') ReqSortieBattleApiDataApiHougekiEntity? apiHougeki3,
    @JsonKey(name: 'api_raigeki') ReqSortieBattleApiDataApiRaigekiEntity? apiRaigeki,
  }) = _ReqSortieBattleApiDataEntity;

  factory ReqSortieBattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataEntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataApiKoukuEntity
    with _$ReqSortieBattleApiDataApiKoukuEntity {
  factory ReqSortieBattleApiDataApiKoukuEntity({
    @JsonKey(name: 'api_plane_from')
    required List<dynamic>
        apiPlaneFrom,
    @JsonKey(name: 'api_stage1')
    required ReqSortieBattleApiDataApiKoukuApiStage1Entity apiStage1,
    @JsonKey(name: 'api_stage2') required dynamic apiStage2,
    @JsonKey(name: 'api_stage3') required dynamic apiStage3,
  }) = _ReqSortieBattleApiDataApiKoukuEntity;

  factory ReqSortieBattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataApiKoukuEntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataApiKoukuApiStage1Entity
    with _$ReqSortieBattleApiDataApiKoukuApiStage1Entity {
  factory ReqSortieBattleApiDataApiKoukuApiStage1Entity({
    @JsonKey(name: 'api_f_count') required int apiFCount,
    @JsonKey(name: 'api_f_lostcount') required int apiFLostcount,
    @JsonKey(name: 'api_e_count') required int apiECount,
    @JsonKey(name: 'api_e_lostcount') required int apiELostcount,
    @JsonKey(name: 'api_disp_seiku') required int apiDispSeiku,
    @JsonKey(name: 'api_touch_plane') required List<int> apiTouchPlane,
  }) = _ReqSortieBattleApiDataApiKoukuApiStage1Entity;

  factory ReqSortieBattleApiDataApiKoukuApiStage1Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataApiKoukuApiStage1EntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataApiHougekiEntity
    with _$ReqSortieBattleApiDataApiHougekiEntity implements GunFireRound {
  factory ReqSortieBattleApiDataApiHougekiEntity({
    @JsonKey(name: 'api_at_eflag') required List<int> apiAtEflag,
    @JsonKey(name: 'api_at_list') required List<int> apiAtList,
    @JsonKey(name: 'api_at_type') required List<int> apiAtType,
    @JsonKey(name: 'api_df_list')
    required List<List<int>> apiDfList,
    @JsonKey(name: 'api_si_list')
    required List<List<int>> apiSiList,
    @JsonKey(name: 'api_cl_list')
    required List<List<int>> apiClList,
    @JsonKey(name: 'api_damage')
    required List<List<num>> apiDamage,
  }) = _ReqSortieBattleApiDataApiHougekiEntity;

  factory ReqSortieBattleApiDataApiHougekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataApiHougekiEntityFromJson(json);
}

@unfreezed
class ReqSortieBattleApiDataApiRaigekiEntity
    with _$ReqSortieBattleApiDataApiRaigekiEntity {
  factory ReqSortieBattleApiDataApiRaigekiEntity({
    @JsonKey(name: 'api_frai') required List<num> apiFrai,
    @JsonKey(name: 'api_fcl') required List<num> apiFcl,
    @JsonKey(name: 'api_fdam') required List<num> apiFdam,
    @JsonKey(name: 'api_fydam') required List<num> apiFydam,
    @JsonKey(name: 'api_erai') required List<num> apiErai,
    @JsonKey(name: 'api_ecl') required List<num> apiEcl,
    @JsonKey(name: 'api_edam') required List<num> apiEdam,
    @JsonKey(name: 'api_eydam') required List<num> apiEydam,
  }) = _ReqSortieBattleApiDataApiRaigekiEntity;

  factory ReqSortieBattleApiDataApiRaigekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieBattleApiDataApiRaigekiEntityFromJson(json);
}
