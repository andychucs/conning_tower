// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_sortie_battle_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqSortieBattleEntity _$$_ReqSortieBattleEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqSortieBattleEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqSortieBattleApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqSortieBattleEntityToJson(
        _$_ReqSortieBattleEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqSortieBattleApiDataEntity _$$_ReqSortieBattleApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqSortieBattleApiDataEntity(
      apiDeckId: json['api_deck_id'] as int,
      apiFormation: (json['api_formation'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiFNowhps:
          (json['api_f_nowhps'] as List<dynamic>).map((e) => e as int).toList(),
      apiFMaxhps:
          (json['api_f_maxhps'] as List<dynamic>).map((e) => e as int).toList(),
      apiFParam: json['api_fParam'] as List<dynamic>,
      apiShipKe:
          (json['api_ship_ke'] as List<dynamic>).map((e) => e as int).toList(),
      apiShipLv:
          (json['api_ship_lv'] as List<dynamic>).map((e) => e as int).toList(),
      apiENowhps:
          (json['api_e_nowhps'] as List<dynamic>).map((e) => e as int).toList(),
      apiEMaxhps:
          (json['api_e_maxhps'] as List<dynamic>).map((e) => e as int).toList(),
      apiESlot: json['api_eSlot'] as List<dynamic>,
      apiEParam: json['api_eParam'] as List<dynamic>,
      apiSmokeType: json['api_smoke_type'] as int,
      apiMidnightFlag: json['api_midnight_flag'] as int,
      apiSearch:
          (json['api_search'] as List<dynamic>).map((e) => e as int).toList(),
      apiStageFlag: (json['api_stage_flag'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiKouku: ReqSortieBattleApiDataApiKoukuEntity.fromJson(
          json['api_kouku'] as Map<String, dynamic>),
      apiSupportFlag: json['api_support_flag'] as int,
      apiSupportInfo: json['api_support_info'],
      apiOpeningTaisenFlag: json['api_opening_taisen_flag'] as int,
      apiOpeningTaisen: json['api_opening_taisen'],
      apiOpeningFlag: json['api_opening_flag'] as int,
      apiOpeningAtack: json['api_opening_atack'],
      apiHouraiFlag: (json['api_hourai_flag'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiHougeki1: json['api_hougeki1'] == null
          ? null
          : ReqSortieBattleApiDataApiHougekiEntity.fromJson(
              json['api_hougeki1'] as Map<String, dynamic>),
      apiHougeki2: json['api_hougeki2'] == null
          ? null
          : ReqSortieBattleApiDataApiHougekiEntity.fromJson(
              json['api_hougeki2'] as Map<String, dynamic>),
      apiHougeki3: json['api_hougeki3'] == null
          ? null
          : ReqSortieBattleApiDataApiHougekiEntity.fromJson(
              json['api_hougeki3'] as Map<String, dynamic>),
      apiRaigeki: json['api_raigeki'] == null
          ? null
          : ReqSortieBattleApiDataApiRaigekiEntity.fromJson(
              json['api_raigeki'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqSortieBattleApiDataEntityToJson(
        _$_ReqSortieBattleApiDataEntity instance) =>
    <String, dynamic>{
      'api_deck_id': instance.apiDeckId,
      'api_formation': instance.apiFormation,
      'api_f_nowhps': instance.apiFNowhps,
      'api_f_maxhps': instance.apiFMaxhps,
      'api_fParam': instance.apiFParam,
      'api_ship_ke': instance.apiShipKe,
      'api_ship_lv': instance.apiShipLv,
      'api_e_nowhps': instance.apiENowhps,
      'api_e_maxhps': instance.apiEMaxhps,
      'api_eSlot': instance.apiESlot,
      'api_eParam': instance.apiEParam,
      'api_smoke_type': instance.apiSmokeType,
      'api_midnight_flag': instance.apiMidnightFlag,
      'api_search': instance.apiSearch,
      'api_stage_flag': instance.apiStageFlag,
      'api_kouku': instance.apiKouku,
      'api_support_flag': instance.apiSupportFlag,
      'api_support_info': instance.apiSupportInfo,
      'api_opening_taisen_flag': instance.apiOpeningTaisenFlag,
      'api_opening_taisen': instance.apiOpeningTaisen,
      'api_opening_flag': instance.apiOpeningFlag,
      'api_opening_atack': instance.apiOpeningAtack,
      'api_hourai_flag': instance.apiHouraiFlag,
      'api_hougeki1': instance.apiHougeki1,
      'api_hougeki2': instance.apiHougeki2,
      'api_hougeki3': instance.apiHougeki3,
      'api_raigeki': instance.apiRaigeki,
    };

_$_ReqSortieBattleApiDataApiKoukuEntity
    _$$_ReqSortieBattleApiDataApiKoukuEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleApiDataApiKoukuEntity(
          apiPlaneFrom: json['api_plane_from'] as List<dynamic>,
          apiStage1: ReqSortieBattleApiDataApiKoukuApiStage1Entity.fromJson(
              json['api_stage1'] as Map<String, dynamic>),
          apiStage2: json['api_stage2'],
          apiStage3: json['api_stage3'],
        );

Map<String, dynamic> _$$_ReqSortieBattleApiDataApiKoukuEntityToJson(
        _$_ReqSortieBattleApiDataApiKoukuEntity instance) =>
    <String, dynamic>{
      'api_plane_from': instance.apiPlaneFrom,
      'api_stage1': instance.apiStage1,
      'api_stage2': instance.apiStage2,
      'api_stage3': instance.apiStage3,
    };

_$_ReqSortieBattleApiDataApiKoukuApiStage1Entity
    _$$_ReqSortieBattleApiDataApiKoukuApiStage1EntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleApiDataApiKoukuApiStage1Entity(
          apiFCount: json['api_f_count'] as int,
          apiFLostcount: json['api_f_lostcount'] as int,
          apiECount: json['api_e_count'] as int,
          apiELostcount: json['api_e_lostcount'] as int,
          apiDispSeiku: json['api_disp_seiku'] as int,
          apiTouchPlane: (json['api_touch_plane'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_ReqSortieBattleApiDataApiKoukuApiStage1EntityToJson(
        _$_ReqSortieBattleApiDataApiKoukuApiStage1Entity instance) =>
    <String, dynamic>{
      'api_f_count': instance.apiFCount,
      'api_f_lostcount': instance.apiFLostcount,
      'api_e_count': instance.apiECount,
      'api_e_lostcount': instance.apiELostcount,
      'api_disp_seiku': instance.apiDispSeiku,
      'api_touch_plane': instance.apiTouchPlane,
    };

_$_ReqSortieBattleApiDataApiHougekiEntity
    _$$_ReqSortieBattleApiDataApiHougekiEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleApiDataApiHougekiEntity(
          apiAtEflag: (json['api_at_eflag'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiAtList: (json['api_at_list'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiAtType: (json['api_at_type'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiDfList: (json['api_df_list'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList(),
          apiSiList: (json['api_si_list'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList(),
          apiClList: (json['api_cl_list'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList(),
          apiDamage: (json['api_damage'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
              .toList(),
        );

Map<String, dynamic> _$$_ReqSortieBattleApiDataApiHougekiEntityToJson(
        _$_ReqSortieBattleApiDataApiHougekiEntity instance) =>
    <String, dynamic>{
      'api_at_eflag': instance.apiAtEflag,
      'api_at_list': instance.apiAtList,
      'api_at_type': instance.apiAtType,
      'api_df_list': instance.apiDfList,
      'api_si_list': instance.apiSiList,
      'api_cl_list': instance.apiClList,
      'api_damage': instance.apiDamage,
    };

_$_ReqSortieBattleApiDataApiRaigekiEntity
    _$$_ReqSortieBattleApiDataApiRaigekiEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleApiDataApiRaigekiEntity(
          apiFrai:
              (json['api_frai'] as List<dynamic>).map((e) => e as num).toList(),
          apiFcl:
              (json['api_fcl'] as List<dynamic>).map((e) => e as num).toList(),
          apiFdam:
              (json['api_fdam'] as List<dynamic>).map((e) => e as num).toList(),
          apiFydam: (json['api_fydam'] as List<dynamic>)
              .map((e) => e as num)
              .toList(),
          apiErai:
              (json['api_erai'] as List<dynamic>).map((e) => e as num).toList(),
          apiEcl:
              (json['api_ecl'] as List<dynamic>).map((e) => e as num).toList(),
          apiEdam:
              (json['api_edam'] as List<dynamic>).map((e) => e as num).toList(),
          apiEydam: (json['api_eydam'] as List<dynamic>)
              .map((e) => e as num)
              .toList(),
        );

Map<String, dynamic> _$$_ReqSortieBattleApiDataApiRaigekiEntityToJson(
        _$_ReqSortieBattleApiDataApiRaigekiEntity instance) =>
    <String, dynamic>{
      'api_frai': instance.apiFrai,
      'api_fcl': instance.apiFcl,
      'api_fdam': instance.apiFdam,
      'api_fydam': instance.apiFydam,
      'api_erai': instance.apiErai,
      'api_ecl': instance.apiEcl,
      'api_edam': instance.apiEdam,
      'api_eydam': instance.apiEydam,
    };
