// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_deck_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMemberDeckEntity _$$_GetMemberDeckEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberDeckEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: (json['api_data'] as List<dynamic>)
          .map((e) =>
              GetMemberDeckApiDataEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetMemberDeckEntityToJson(
        _$_GetMemberDeckEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetMemberDeckApiDataEntity _$$_GetMemberDeckApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberDeckApiDataEntity(
      apiMemberId: json['api_member_id'] as int,
      apiId: json['api_id'] as int,
      apiName: json['api_name'] as String,
      apiNameId: json['api_name_id'] as String,
      apiMission:
          (json['api_mission'] as List<dynamic>).map((e) => e as int).toList(),
      apiFlagship: json['api_flagship'] as String,
      apiShip:
          (json['api_ship'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_GetMemberDeckApiDataEntityToJson(
        _$_GetMemberDeckApiDataEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_id': instance.apiId,
      'api_name': instance.apiName,
      'api_name_id': instance.apiNameId,
      'api_mission': instance.apiMission,
      'api_flagship': instance.apiFlagship,
      'api_ship': instance.apiShip,
    };
