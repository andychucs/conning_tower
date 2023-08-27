// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_mission_start_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqMissionStartEntity _$$_ReqMissionStartEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMissionStartEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqMissionStartApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqMissionStartEntityToJson(
        _$_ReqMissionStartEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqMissionStartApiDataEntity _$$_ReqMissionStartApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMissionStartApiDataEntity(
      apiComplatetime: json['api_complatetime'] as int,
      apiComplatetimeStr: json['api_complatetime_str'] as String,
    );

Map<String, dynamic> _$$_ReqMissionStartApiDataEntityToJson(
        _$_ReqMissionStartApiDataEntity instance) =>
    <String, dynamic>{
      'api_complatetime': instance.apiComplatetime,
      'api_complatetime_str': instance.apiComplatetimeStr,
    };
