// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_misssion_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqMisssionResultEntity _$$_ReqMisssionResultEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMisssionResultEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqMisssionResultApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqMisssionResultEntityToJson(
        _$_ReqMisssionResultEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqMisssionResultApiDataEntity _$$_ReqMisssionResultApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMisssionResultApiDataEntity(
      apiShipId:
          (json['api_ship_id'] as List<dynamic>).map((e) => e as int).toList(),
      apiClearResult: json['api_clear_result'] as int,
      apiGetExp: json['api_get_exp'] as int,
      apiMemberLv: json['api_member_lv'] as int,
      apiMemberExp: json['api_member_exp'] as int,
      apiGetShipExp: (json['api_get_ship_exp'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiGetExpLvup: json['api_get_exp_lvup'] as List<dynamic>,
      apiMapareaName: json['api_maparea_name'] as String,
      apiDetail: json['api_detail'] as String,
      apiQuestName: json['api_quest_name'] as String,
      apiQuestLevel: json['api_quest_level'] as int,
      apiGetMaterial: json['api_get_material'] as int,
      apiUseitemFlag: (json['api_useitem_flag'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_ReqMisssionResultApiDataEntityToJson(
        _$_ReqMisssionResultApiDataEntity instance) =>
    <String, dynamic>{
      'api_ship_id': instance.apiShipId,
      'api_clear_result': instance.apiClearResult,
      'api_get_exp': instance.apiGetExp,
      'api_member_lv': instance.apiMemberLv,
      'api_member_exp': instance.apiMemberExp,
      'api_get_ship_exp': instance.apiGetShipExp,
      'api_get_exp_lvup': instance.apiGetExpLvup,
      'api_maparea_name': instance.apiMapareaName,
      'api_detail': instance.apiDetail,
      'api_quest_name': instance.apiQuestName,
      'api_quest_level': instance.apiQuestLevel,
      'api_get_material': instance.apiGetMaterial,
      'api_useitem_flag': instance.apiUseitemFlag,
    };
