// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapArea _$$_MapAreaFromJson(Map<String, dynamic> json) => _$_MapArea(
      id: json['id'] as int,
      name: json['name'] as String,
      maps: (json['maps'] as List<dynamic>).map((e) => e as int).toList(),
      event: json['event'] as bool,
      level: json['level'] as int?,
    );

Map<String, dynamic> _$$_MapAreaToJson(_$_MapArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'maps': instance.maps,
      'event': instance.event,
      'level': instance.level,
    };
