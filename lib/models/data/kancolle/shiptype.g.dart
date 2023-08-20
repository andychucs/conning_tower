// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shiptype.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipType _$$_ShipTypeFromJson(Map<String, dynamic> json) => _$_ShipType(
      id: json['id'] as int,
      sortNo: json['sort_no'] as int,
      name: json['name'] as String,
      scnt: json['scnt'] as int,
      kcnt: json['kcnt'] as int,
      equipType: Map<String, int>.from(json['equip_type'] as Map),
      chineseName: json['chinese_name'] as String,
      englishName: json['english_name'] as String,
    );

Map<String, dynamic> _$$_ShipTypeToJson(_$_ShipType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort_no': instance.sortNo,
      'name': instance.name,
      'scnt': instance.scnt,
      'kcnt': instance.kcnt,
      'equip_type': instance.equipType,
      'chinese_name': instance.chineseName,
      'english_name': instance.englishName,
    };
