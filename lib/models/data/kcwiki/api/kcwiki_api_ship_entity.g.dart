// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kcwiki_api_ship_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KcwikiApiShipEntity _$$_KcwikiApiShipEntityFromJson(
        Map<String, dynamic> json) =>
    _$_KcwikiApiShipEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      sortNo: json['sort_no'] as int?,
      stype: json['stype'] as int,
      afterShipId: json['after_ship_id'] as int?,
      filename: json['filename'] as String?,
      wikiId: json['wiki_id'] as String?,
      chineseName: json['chinese_name'] as String?,
      stypeName: json['stype_name'] as String?,
      stypeNameChinese: json['stype_name_chinese'] as String?,
      canDrop: json['can_drop'] as bool?,
    );

Map<String, dynamic> _$$_KcwikiApiShipEntityToJson(
        _$_KcwikiApiShipEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sort_no': instance.sortNo,
      'stype': instance.stype,
      'after_ship_id': instance.afterShipId,
      'filename': instance.filename,
      'wiki_id': instance.wikiId,
      'chinese_name': instance.chineseName,
      'stype_name': instance.stypeName,
      'stype_name_chinese': instance.stypeNameChinese,
      'can_drop': instance.canDrop,
    };
