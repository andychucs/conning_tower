import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_combined_battle_ec_battle_entity.freezed.dart';

part 'req_combined_battle_ec_battle_entity.g.dart';

@unfreezed
class ReqCombinedBattleECBattleEntity with _$ReqCombinedBattleECBattleEntity {
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
    with _$ReqCombinedBattleECBattleApiDataEntity {
  factory ReqCombinedBattleECBattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') int? apiDeckId,
    @JsonKey(name: 'api_formation') List<int?>? apiFormation,
    @JsonKey(name: 'api_f_nowhps') List<int?>? apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') List<int?>? apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_ship_ke') List<int?>? apiShipKe,
    @JsonKey(name: 'api_ship_lv') List<int?>? apiShipLv,
    @JsonKey(name: 'api_ship_ke_combined') List<int?>? apiShipKeCombined,
    @JsonKey(name: 'api_ship_lv_combined') List<int?>? apiShipLvCombined,
    @JsonKey(name: 'api_e_nowhps') List<int?>? apiENowhps,
    @JsonKey(name: 'api_e_maxhps') List<int?>? apiEMaxhps,
    @JsonKey(name: 'api_e_nowhps_combined') List<int?>? apiENowhpsCombined,
    @JsonKey(name: 'api_e_maxhps_combined') List<int?>? apiEMaxhpsCombined,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eSlot_combined') List<dynamic>? apiESlotCombined,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_eParam_combined') List<dynamic>? apiEParamCombined,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_air_base_attack')
    List<ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity?>?
        apiAirBaseAttack,
    @JsonKey(name: 'api_stage_flag') List<int?>? apiStageFlag,
    @JsonKey(name: 'api_kouku')
    ReqCombinedBattleECBattleApiDataApiKoukuEntity? apiKouku,
    @JsonKey(name: 'api_support_flag') int? apiSupportFlag,
    @JsonKey(name: 'api_support_info') dynamic apiSupportInfo,
    @JsonKey(name: 'api_opening_taisen_flag') int? apiOpeningTaisenFlag,
    @JsonKey(name: 'api_opening_taisen') dynamic apiOpeningTaisen,
    @JsonKey(name: 'api_opening_flag') int? apiOpeningFlag,
    @JsonKey(name: 'api_opening_atack') dynamic apiOpeningAtack,
    @JsonKey(name: 'api_hourai_flag') List<int?>? apiHouraiFlag,
    @JsonKey(name: 'api_hougeki1')
    ReqCombinedBattleECBattleApiDataApiHougeki1Entity? apiHougeki1,
    @JsonKey(name: 'api_raigeki')
    ReqCombinedBattleECBattleApiDataApiRaigekiEntity? apiRaigeki,
    @JsonKey(name: 'api_hougeki2')
    ReqCombinedBattleECBattleApiDataApiHougeki2Entity? apiHougeki2,
    @JsonKey(name: 'api_hougeki3')
    ReqCombinedBattleECBattleApiDataApiHougeki3Entity? apiHougeki3,
  }) = _ReqCombinedBattleECBattleApiDataEntity;

  factory ReqCombinedBattleECBattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity
    with _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity({
    @JsonKey(name: 'api_base_id') int? apiBaseId,
    @JsonKey(name: 'api_stage_flag') List<int?>? apiStageFlag,
    @JsonKey(name: 'api_plane_from') List<List<int>?>? apiPlaneFrom,
    @JsonKey(name: 'api_squadron_plane')
    List<ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity?>?
        apiSquadronPlane,
    @JsonKey(name: 'api_stage1')
    ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity? apiStage1,
    @JsonKey(name: 'api_stage2')
    ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity? apiStage2,
    @JsonKey(name: 'api_stage3')
    ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity? apiStage3,
    @JsonKey(name: 'api_stage3_combined')
    ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity?
        apiStage3Combined,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity
    with
        _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity({
    @JsonKey(name: 'api_mst_id') int? apiMstId,
    @JsonKey(name: 'api_count') int? apiCount,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiSquadronPlaneEntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity
    with _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity({
    @JsonKey(name: 'api_f_count') int? apiFCount,
    @JsonKey(name: 'api_f_lostcount') int? apiFLostcount,
    @JsonKey(name: 'api_e_count') int? apiECount,
    @JsonKey(name: 'api_e_lostcount') int? apiELostcount,
    @JsonKey(name: 'api_disp_seiku') int? apiDispSeiku,
    @JsonKey(name: 'api_touch_plane') List<int?>? apiTouchPlane,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage1EntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity
    with _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity({
    @JsonKey(name: 'api_f_count') int? apiFCount,
    @JsonKey(name: 'api_f_lostcount') int? apiFLostcount,
    @JsonKey(name: 'api_e_count') int? apiECount,
    @JsonKey(name: 'api_e_lostcount') int? apiELostcount,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage2EntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity
    with _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity({
    @JsonKey(name: 'api_erai_flag') List<int?>? apiEraiFlag,
    @JsonKey(name: 'api_ebak_flag') List<int?>? apiEbakFlag,
    @JsonKey(name: 'api_ecl_flag') List<int?>? apiEclFlag,
    @JsonKey(name: 'api_edam') List<int?>? apiEdam,
    @JsonKey(name: 'api_e_sp_list') List<dynamic>? apiESpList,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3EntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity
    with
        _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity {
  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity({
    @JsonKey(name: 'api_erai_flag') List<int?>? apiEraiFlag,
    @JsonKey(name: 'api_ebak_flag') List<int?>? apiEbakFlag,
    @JsonKey(name: 'api_ecl_flag') List<int?>? apiEclFlag,
    @JsonKey(name: 'api_edam') List<int?>? apiEdam,
    @JsonKey(name: 'api_e_sp_list') List<dynamic>? apiESpList,
  }) = _ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity;

  factory ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiAirBaseAttackApiStage3CombinedEntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuEntity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuEntity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuEntity({
    @JsonKey(name: 'api_plane_from') List<dynamic>? apiPlaneFrom,
    @JsonKey(name: 'api_stage1')
    ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity? apiStage1,
    @JsonKey(name: 'api_stage2')
    ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity? apiStage2,
    @JsonKey(name: 'api_stage3')
    ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity? apiStage3,
    @JsonKey(name: 'api_stage3_combined')
    ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity?
        apiStage3Combined,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuEntity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity({
    @JsonKey(name: 'api_f_count') int? apiFCount,
    @JsonKey(name: 'api_f_lostcount') int? apiFLostcount,
    @JsonKey(name: 'api_e_count') int? apiECount,
    @JsonKey(name: 'api_e_lostcount') int? apiELostcount,
    @JsonKey(name: 'api_disp_seiku') int? apiDispSeiku,
    @JsonKey(name: 'api_touch_plane') List<int?>? apiTouchPlane,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage1Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage1EntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity({
    @JsonKey(name: 'api_f_count') int? apiFCount,
    @JsonKey(name: 'api_f_lostcount') int? apiFLostcount,
    @JsonKey(name: 'api_e_count') int? apiECount,
    @JsonKey(name: 'api_e_lostcount') int? apiELostcount,
    @JsonKey(name: 'api_air_fire')
    ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity?
        apiAirFire,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage2Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage2EntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity({
    @JsonKey(name: 'api_idx') int? apiIdx,
    @JsonKey(name: 'api_kind') int? apiKind,
    @JsonKey(name: 'api_use_items') List<int?>? apiUseItems,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage2ApiAirFireEntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity({
    @JsonKey(name: 'api_frai_flag') List<int?>? apiFraiFlag,
    @JsonKey(name: 'api_erai_flag') List<int?>? apiEraiFlag,
    @JsonKey(name: 'api_fbak_flag') List<int?>? apiFbakFlag,
    @JsonKey(name: 'api_ebak_flag') List<int?>? apiEbakFlag,
    @JsonKey(name: 'api_fcl_flag') List<int?>? apiFclFlag,
    @JsonKey(name: 'api_ecl_flag') List<int?>? apiEclFlag,
    @JsonKey(name: 'api_fdam') List<int?>? apiFdam,
    @JsonKey(name: 'api_edam') List<int?>? apiEdam,
    @JsonKey(name: 'api_f_sp_list') List<dynamic>? apiFSpList,
    @JsonKey(name: 'api_e_sp_list') List<dynamic>? apiESpList,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage3Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage3EntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity
    with _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity {
  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity({
    @JsonKey(name: 'api_frai_flag') dynamic apiFraiFlag,
    @JsonKey(name: 'api_erai_flag') List<int?>? apiEraiFlag,
    @JsonKey(name: 'api_fbak_flag') dynamic apiFbakFlag,
    @JsonKey(name: 'api_ebak_flag') List<int?>? apiEbakFlag,
    @JsonKey(name: 'api_fcl_flag') dynamic apiFclFlag,
    @JsonKey(name: 'api_ecl_flag') List<int?>? apiEclFlag,
    @JsonKey(name: 'api_fdam') dynamic apiFdam,
    @JsonKey(name: 'api_edam') List<int?>? apiEdam,
    @JsonKey(name: 'api_f_sp_list') dynamic apiFSpList,
    @JsonKey(name: 'api_e_sp_list') List<dynamic>? apiESpList,
  }) = _ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity;

  factory ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiKoukuApiStage3CombinedEntityFromJson(
          json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiHougeki1Entity
    with _$ReqCombinedBattleECBattleApiDataApiHougeki1Entity {
  factory ReqCombinedBattleECBattleApiDataApiHougeki1Entity({
    @JsonKey(name: 'api_at_eflag') List<int?>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int?>? apiAtList,
    @JsonKey(name: 'api_at_type') List<int?>? apiAtType,
    @JsonKey(name: 'api_df_list') List<dynamic>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<dynamic>? apiClList,
    @JsonKey(name: 'api_damage') List<dynamic>? apiDamage,
  }) = _ReqCombinedBattleECBattleApiDataApiHougeki1Entity;

  factory ReqCombinedBattleECBattleApiDataApiHougeki1Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiHougeki1EntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiRaigekiEntity
    with _$ReqCombinedBattleECBattleApiDataApiRaigekiEntity {
  factory ReqCombinedBattleECBattleApiDataApiRaigekiEntity({
    @JsonKey(name: 'api_frai') List<int?>? apiFrai,
    @JsonKey(name: 'api_fcl') List<int?>? apiFcl,
    @JsonKey(name: 'api_fdam') List<int?>? apiFdam,
    @JsonKey(name: 'api_fydam') List<int?>? apiFydam,
    @JsonKey(name: 'api_erai') List<int?>? apiErai,
    @JsonKey(name: 'api_ecl') List<int?>? apiEcl,
    @JsonKey(name: 'api_edam') List<int?>? apiEdam,
    @JsonKey(name: 'api_eydam') List<int?>? apiEydam,
  }) = _ReqCombinedBattleECBattleApiDataApiRaigekiEntity;

  factory ReqCombinedBattleECBattleApiDataApiRaigekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiRaigekiEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiHougeki2Entity
    with _$ReqCombinedBattleECBattleApiDataApiHougeki2Entity {
  factory ReqCombinedBattleECBattleApiDataApiHougeki2Entity({
    @JsonKey(name: 'api_at_eflag') List<int?>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int?>? apiAtList,
    @JsonKey(name: 'api_at_type') List<int?>? apiAtType,
    @JsonKey(name: 'api_df_list') List<dynamic>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<dynamic>? apiClList,
    @JsonKey(name: 'api_damage') List<dynamic>? apiDamage,
  }) = _ReqCombinedBattleECBattleApiDataApiHougeki2Entity;

  factory ReqCombinedBattleECBattleApiDataApiHougeki2Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiHougeki2EntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleECBattleApiDataApiHougeki3Entity
    with _$ReqCombinedBattleECBattleApiDataApiHougeki3Entity {
  factory ReqCombinedBattleECBattleApiDataApiHougeki3Entity({
    @JsonKey(name: 'api_at_eflag') List<int?>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int?>? apiAtList,
    @JsonKey(name: 'api_at_type') List<int?>? apiAtType,
    @JsonKey(name: 'api_df_list') List<dynamic>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<dynamic>? apiClList,
    @JsonKey(name: 'api_damage') List<dynamic>? apiDamage,
  }) = _ReqCombinedBattleECBattleApiDataApiHougeki3Entity;

  factory ReqCombinedBattleECBattleApiDataApiHougeki3Entity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleECBattleApiDataApiHougeki3EntityFromJson(json);
}
