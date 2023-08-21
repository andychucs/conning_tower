// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_mission_return_instruction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqMissionReturnInstructionEntity
    _$$_ReqMissionReturnInstructionEntityFromJson(Map<String, dynamic> json) =>
        _$_ReqMissionReturnInstructionEntity(
          apiResult: json['api_result'] as int,
          apiResultMsg: json['api_result_msg'] as String,
          apiData: ReqMissionReturnInstructionApiDataEntity.fromJson(
              json['api_data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ReqMissionReturnInstructionEntityToJson(
        _$_ReqMissionReturnInstructionEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqMissionReturnInstructionApiDataEntity
    _$$_ReqMissionReturnInstructionApiDataEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMissionReturnInstructionApiDataEntity(
          apiMission: (json['api_mission'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_ReqMissionReturnInstructionApiDataEntityToJson(
        _$_ReqMissionReturnInstructionApiDataEntity instance) =>
    <String, dynamic>{
      'api_mission': instance.apiMission,
    };
