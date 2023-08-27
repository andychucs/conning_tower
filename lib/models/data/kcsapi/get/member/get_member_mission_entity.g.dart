// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_mission_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMemberMissionEntity _$$_GetMemberMissionEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberMissionEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: GetMemberMissionApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetMemberMissionEntityToJson(
        _$_GetMemberMissionEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetMemberMissionApiDataEntity _$$_GetMemberMissionApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberMissionApiDataEntity(
      apiListItems: (json['api_list_items'] as List<dynamic>)
          .map((e) => GetMemberMissionApiDataApiListItemsEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiLimitTime: (json['api_limit_time'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_GetMemberMissionApiDataEntityToJson(
        _$_GetMemberMissionApiDataEntity instance) =>
    <String, dynamic>{
      'api_list_items': instance.apiListItems,
      'api_limit_time': instance.apiLimitTime,
    };

_$_GetMemberMissionApiDataApiListItemsEntity
    _$$_GetMemberMissionApiDataApiListItemsEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberMissionApiDataApiListItemsEntity(
          apiMissionId: json['api_mission_id'] as int,
          apiState: json['api_state'] as int,
        );

Map<String, dynamic> _$$_GetMemberMissionApiDataApiListItemsEntityToJson(
        _$_GetMemberMissionApiDataApiListItemsEntity instance) =>
    <String, dynamic>{
      'api_mission_id': instance.apiMissionId,
      'api_state': instance.apiState,
    };
