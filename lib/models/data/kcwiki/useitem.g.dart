// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'useitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UseItem _$$_UseItemFromJson(Map<String, dynamic> json) => _$_UseItem(
      id: json['id'] as int,
      useType: json['usetype'] as int,
      category: json['category'] as int,
      name: json['name'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as int,
      chineseName: json['chinese_name'] as String,
      chineseDescription: json['chinese_description'] as String,
    );

Map<String, dynamic> _$$_UseItemToJson(_$_UseItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'usetype': instance.useType,
      'category': instance.category,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'chinese_name': instance.chineseName,
      'chinese_description': instance.chineseDescription,
    };
