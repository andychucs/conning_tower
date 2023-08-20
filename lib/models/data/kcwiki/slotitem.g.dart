// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slotitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlotItem _$$_SlotItemFromJson(Map<String, dynamic> json) => _$_SlotItem(
      id: json['id'] as int,
      sortNo: json['sort_no'] as int,
      name: json['name'] as String,
      type: (json['type'] as List<dynamic>).map((e) => e as int).toList(),
      rare: json['rare'] as int,
      broken: (json['broken'] as List<dynamic>).map((e) => e as int).toList(),
      info: json['info'] as String,
      usebull: json['usebull'] as int,
      cost: (json['cost'] as List<dynamic>?)?.map((e) => e as int).toList(),
      distance:
          (json['distance'] as List<dynamic>?)?.map((e) => e as int).toList(),
      stats: Map<String, int>.from(json['stats'] as Map),
      improvement: (json['improvement'] as List<dynamic>)
          .map((e) => Improvement.fromJson(e as Map<String, dynamic>))
          .toList(),
      chineseName: json['chinese_name'] as String,
    );

Map<String, dynamic> _$$_SlotItemToJson(_$_SlotItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort_no': instance.sortNo,
      'name': instance.name,
      'type': instance.type,
      'rare': instance.rare,
      'broken': instance.broken,
      'info': instance.info,
      'usebull': instance.usebull,
      'cost': instance.cost,
      'distance': instance.distance,
      'stats': instance.stats,
      'improvement': instance.improvement,
      'chinese_name': instance.chineseName,
    };

_$_Improvement _$$_ImprovementFromJson(Map<String, dynamic> json) =>
    _$_Improvement(
      consume: json['consume'],
      upgrade: Upgrade.fromJson(json['upgrade'] as Map<String, dynamic>),
      day: (json['day'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => ShipId.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_ImprovementToJson(_$_Improvement instance) =>
    <String, dynamic>{
      'consume': instance.consume,
      'upgrade': instance.upgrade,
      'day': instance.day,
    };

_$_SlotItemAmount _$$_SlotItemAmountFromJson(Map<String, dynamic> json) =>
    _$_SlotItemAmount(
      id: json['id'] as int,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_SlotItemAmountToJson(_$_SlotItemAmount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };

_$_Upgrade _$$_UpgradeFromJson(Map<String, dynamic> json) => _$_Upgrade(
      id: json['id'] as int,
      level: json['level'] as int,
      consume: json['consume'],
      slotitem: json['slotitem'],
    );

Map<String, dynamic> _$$_UpgradeToJson(_$_Upgrade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'consume': instance.consume,
      'slotitem': instance.slotitem,
    };

_$_ShipId _$$_ShipIdFromJson(Map<String, dynamic> json) => _$_ShipId(
      shipId: json['ship_id'] as int,
    );

Map<String, dynamic> _$$_ShipIdToJson(_$_ShipId instance) => <String, dynamic>{
      'ship_id': instance.shipId,
    };
