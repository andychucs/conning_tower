// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedition_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpeditionEntity _$$_ExpeditionEntityFromJson(Map<String, dynamic> json) =>
    _$_ExpeditionEntity(
      no: json['no'] as String,
      code: json['code'] as String,
      area: json['area'] as int,
      name: ExpeditionNameEntity.fromJson(json['name'] as Map<String, dynamic>),
      time: json['time'] as int,
      resource:
          (json['resource'] as List<dynamic>).map((e) => e as int).toList(),
      reward: json['reward'] as List<dynamic>,
      exp: (json['exp'] as List<dynamic>).map((e) => e as int).toList(),
      totalNum: json['total-num'] as int,
      flagLv: json['flag-lv'] as int,
    );

Map<String, dynamic> _$$_ExpeditionEntityToJson(_$_ExpeditionEntity instance) =>
    <String, dynamic>{
      'no': instance.no,
      'code': instance.code,
      'area': instance.area,
      'name': instance.name,
      'time': instance.time,
      'resource': instance.resource,
      'reward': instance.reward,
      'exp': instance.exp,
      'total-num': instance.totalNum,
      'flag-lv': instance.flagLv,
    };

_$_ExpeditionNameEntity _$$_ExpeditionNameEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ExpeditionNameEntity(
      jp: json['jp'] as String,
      ko: json['ko'] as String,
      en: json['en'] as String,
      scn: json['scn'] as String,
      tcn: json['tcn'] as String,
    );

Map<String, dynamic> _$$_ExpeditionNameEntityToJson(
        _$_ExpeditionNameEntity instance) =>
    <String, dynamic>{
      'jp': instance.jp,
      'ko': instance.ko,
      'en': instance.en,
      'scn': instance.scn,
      'tcn': instance.tcn,
    };
