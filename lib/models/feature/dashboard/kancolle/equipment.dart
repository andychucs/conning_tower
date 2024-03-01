import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';
part 'equipment.g.dart';

@unfreezed
class Equipment with _$Equipment {
  const Equipment._();

  factory Equipment({
    required int id,
    int? itemId,
    int? locked,
    int? level,
    String? name,
  }) = _Equipment;
  

  factory Equipment.fromApi(SlotItem item, GetDataApiDataApiMstSlotitemEntity slotItemInfo) {
    return Equipment(
      id: item.apiId,
      itemId: item.apiSlotitemId,
      locked: item.apiLocked,
      level: item.apiLevel,
      name: slotItemInfo.apiName
    );
  }

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}