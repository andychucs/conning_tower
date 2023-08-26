// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kcwiki_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KcwikiData _$$_KcwikiDataFromJson(Map<String, dynamic> json) =>
    _$_KcwikiData(
      ships: (json['ships'] as List<dynamic>)
          .map((e) => Ship.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_KcwikiDataToJson(_$_KcwikiData instance) =>
    <String, dynamic>{
      'ships': instance.ships,
    };
