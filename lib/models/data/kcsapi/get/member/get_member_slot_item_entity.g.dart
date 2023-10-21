// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_slot_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMemberSlotItemEntity _$$_GetMemberSlotItemEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberSlotItemEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: (json['api_data'] as List<dynamic>)
          .map((e) => GetMemberSlotItemApiDataEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetMemberSlotItemEntityToJson(
        _$_GetMemberSlotItemEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetMemberSlotItemApiDataEntity _$$_GetMemberSlotItemApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberSlotItemApiDataEntity(
      apiId: json['api_id'] as int,
      apiSlotitemId: json['api_slotitem_id'] as int,
      apiLocked: json['api_locked'] as int,
      apiLevel: json['api_level'] as int,
    );

Map<String, dynamic> _$$_GetMemberSlotItemApiDataEntityToJson(
        _$_GetMemberSlotItemApiDataEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_slotitem_id': instance.apiSlotitemId,
      'api_locked': instance.apiLocked,
      'api_level': instance.apiLevel,
    };
