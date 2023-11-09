// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_require_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMemberRequireInfoEntity _$$_GetMemberRequireInfoEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberRequireInfoEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: GetMemberRequireInfoApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetMemberRequireInfoEntityToJson(
        _$_GetMemberRequireInfoEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetMemberRequireInfoApiDataEntity
    _$$_GetMemberRequireInfoApiDataEntityFromJson(Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataEntity(
          apiBasic: GetMemberRequireInfoApiDataApiBasicEntity.fromJson(
              json['api_basic'] as Map<String, dynamic>),
          apiSlotItem: (json['api_slot_item'] as List<dynamic>?)
              ?.map((e) =>
                  GetMemberRequireInfoApiDataApiSlotItemEntity.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          apiUnsetslot: json['api_unsetslot'],
          apiKdock: (json['api_kdock'] as List<dynamic>?)
              ?.map((e) => GetMemberRequireInfoApiDataApiKdockEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          apiUseitem: (json['api_useitem'] as List<dynamic>?)
              ?.map((e) => GetMemberRequireInfoApiDataApiUseitemEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          apiFurniture: (json['api_furniture'] as List<dynamic>?)
              ?.map((e) =>
                  GetMemberRequireInfoApiDataApiFurnitureEntity.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          apiExtraSupply: (json['api_extra_supply'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiOssSetting: json['api_oss_setting'] == null
              ? null
              : GetMemberRequireInfoApiDataApiOssSettingEntity.fromJson(
                  json['api_oss_setting'] as Map<String, dynamic>),
          apiSkinId: json['api_skin_id'] as int,
          apiPositionId: json['api_position_id'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataEntityToJson(
        _$_GetMemberRequireInfoApiDataEntity instance) =>
    <String, dynamic>{
      'api_basic': instance.apiBasic,
      'api_slot_item': instance.apiSlotItem,
      'api_unsetslot': instance.apiUnsetslot,
      'api_kdock': instance.apiKdock,
      'api_useitem': instance.apiUseitem,
      'api_furniture': instance.apiFurniture,
      'api_extra_supply': instance.apiExtraSupply,
      'api_oss_setting': instance.apiOssSetting,
      'api_skin_id': instance.apiSkinId,
      'api_position_id': instance.apiPositionId,
    };

_$_GetMemberRequireInfoApiDataApiBasicEntity
    _$$_GetMemberRequireInfoApiDataApiBasicEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiBasicEntity(
          apiMemberId: json['api_member_id'] as int,
          apiFirstflag: json['api_firstflag'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiBasicEntityToJson(
        _$_GetMemberRequireInfoApiDataApiBasicEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_firstflag': instance.apiFirstflag,
    };

_$_GetMemberRequireInfoApiDataApiSlotItemEntity
    _$$_GetMemberRequireInfoApiDataApiSlotItemEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiSlotItemEntity(
          apiId: json['api_id'] as int,
          apiSlotitemId: json['api_slotitem_id'] as int,
          apiLocked: json['api_locked'] as int,
          apiLevel: json['api_level'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiSlotItemEntityToJson(
        _$_GetMemberRequireInfoApiDataApiSlotItemEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_slotitem_id': instance.apiSlotitemId,
      'api_locked': instance.apiLocked,
      'api_level': instance.apiLevel,
    };

_$_GetMemberRequireInfoApiDataApiKdockEntity
    _$$_GetMemberRequireInfoApiDataApiKdockEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiKdockEntity(
          apiId: json['api_id'] as int,
          apiState: json['api_state'] as int,
          apiCreatedShipId: json['api_created_ship_id'] as int,
          apiCompleteTime: json['api_complete_time'] as int,
          apiCompleteTimeStr: json['api_complete_time_str'] as String,
          apiItem1: json['api_item1'] as int,
          apiItem2: json['api_item2'] as int,
          apiItem3: json['api_item3'] as int,
          apiItem4: json['api_item4'] as int,
          apiItem5: json['api_item5'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiKdockEntityToJson(
        _$_GetMemberRequireInfoApiDataApiKdockEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_state': instance.apiState,
      'api_created_ship_id': instance.apiCreatedShipId,
      'api_complete_time': instance.apiCompleteTime,
      'api_complete_time_str': instance.apiCompleteTimeStr,
      'api_item1': instance.apiItem1,
      'api_item2': instance.apiItem2,
      'api_item3': instance.apiItem3,
      'api_item4': instance.apiItem4,
      'api_item5': instance.apiItem5,
    };

_$_GetMemberRequireInfoApiDataApiUseitemEntity
    _$$_GetMemberRequireInfoApiDataApiUseitemEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiUseitemEntity(
          apiId: json['api_id'] as int,
          apiCount: json['api_count'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiUseitemEntityToJson(
        _$_GetMemberRequireInfoApiDataApiUseitemEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_count': instance.apiCount,
    };

_$_GetMemberRequireInfoApiDataApiFurnitureEntity
    _$$_GetMemberRequireInfoApiDataApiFurnitureEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiFurnitureEntity(
          apiId: json['api_id'] as int,
          apiFurnitureType: json['api_furniture_type'] as int,
          apiFurnitureNo: json['api_furniture_no'] as int,
          apiFurnitureId: json['api_furniture_id'] as int,
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiFurnitureEntityToJson(
        _$_GetMemberRequireInfoApiDataApiFurnitureEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_furniture_type': instance.apiFurnitureType,
      'api_furniture_no': instance.apiFurnitureNo,
      'api_furniture_id': instance.apiFurnitureId,
    };

_$_GetMemberRequireInfoApiDataApiOssSettingEntity
    _$$_GetMemberRequireInfoApiDataApiOssSettingEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberRequireInfoApiDataApiOssSettingEntity(
          apiLanguageType: json['api_language_type'] as int,
          apiOssItems: (json['api_oss_items'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetMemberRequireInfoApiDataApiOssSettingEntityToJson(
        _$_GetMemberRequireInfoApiDataApiOssSettingEntity instance) =>
    <String, dynamic>{
      'api_language_type': instance.apiLanguageType,
      'api_oss_items': instance.apiOssItems,
    };
