// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_battle_midnight_battle_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqBattleMidnightBattleEntity _$$_ReqBattleMidnightBattleEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqBattleMidnightBattleEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqBattleMidnightBattleApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqBattleMidnightBattleEntityToJson(
        _$_ReqBattleMidnightBattleEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqBattleMidnightBattleApiDataEntity
    _$$_ReqBattleMidnightBattleApiDataEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqBattleMidnightBattleApiDataEntity(
          apiDeckId: json['api_deck_id'] as int,
          apiFormation: (json['api_formation'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiFNowhps: (json['api_f_nowhps'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiFMaxhps: (json['api_f_maxhps'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiFParam: json['api_fParam'] as List<dynamic>,
          apiShipKe: (json['api_ship_ke'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiShipLv: (json['api_ship_lv'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiENowhps: (json['api_e_nowhps'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiEMaxhps: (json['api_e_maxhps'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiESlot: json['api_eSlot'] as List<dynamic>,
          apiEParam: json['api_eParam'] as List<dynamic>,
          apiSmokeType: json['api_smoke_type'] as int,
          apiBalloonCell: json['api_balloon_cell'] as int,
          apiTouchPlane: (json['api_touch_plane'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiFlarePos: (json['api_flare_pos'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiHougeki: json['api_hougeki'] == null
              ? null
              : ReqBattleMidnightBattleApiDataApiHougekiEntity.fromJson(
                  json['api_hougeki'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ReqBattleMidnightBattleApiDataEntityToJson(
        _$_ReqBattleMidnightBattleApiDataEntity instance) =>
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
      'api_balloon_cell': instance.apiBalloonCell,
      'api_touch_plane': instance.apiTouchPlane,
      'api_flare_pos': instance.apiFlarePos,
      'api_hougeki': instance.apiHougeki,
    };

_$_ReqBattleMidnightBattleApiDataApiHougekiEntity
    _$$_ReqBattleMidnightBattleApiDataApiHougekiEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqBattleMidnightBattleApiDataApiHougekiEntity(
          apiAtEflag: (json['api_at_eflag'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiAtList: (json['api_at_list'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiNMotherList: (json['api_n_mother_list'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiDfList: (json['api_df_list'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList(),
          apiSiList: json['api_si_list'] as List<dynamic>,
          apiClList: (json['api_cl_list'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList(),
          apiSpList: (json['api_sp_list'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiDamage: (json['api_damage'] as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
              .toList(),
        );

Map<String, dynamic> _$$_ReqBattleMidnightBattleApiDataApiHougekiEntityToJson(
        _$_ReqBattleMidnightBattleApiDataApiHougekiEntity instance) =>
    <String, dynamic>{
      'api_at_eflag': instance.apiAtEflag,
      'api_at_list': instance.apiAtList,
      'api_n_mother_list': instance.apiNMotherList,
      'api_df_list': instance.apiDfList,
      'api_si_list': instance.apiSiList,
      'api_cl_list': instance.apiClList,
      'api_sp_list': instance.apiSpList,
      'api_damage': instance.apiDamage,
    };
