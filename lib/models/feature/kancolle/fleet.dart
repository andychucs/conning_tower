import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants_poi.dart';
import 'equipment.dart';
import 'ship.dart';

part 'fleet.freezed.dart';

@unfreezed
class Fleet with _$Fleet {
  const Fleet._();

  factory Fleet({
    required List<Ship> ships,
    required Map<int, Equipment> equipment,
    int? combined,
    Set<int>? notInFleetIds,
    Map<int, EquipmentCollection>? equipmentCollections,
  }) = _Fleet;

  String get combinedText =>
      switch (combined) { 1 => "機動部隊", 2 => "水上部隊", 3 => "輸送部隊", 0 || _ => "" };

  Set<int> get shipIds => ships.map((e) => e.shipId).toSet();

  Set<int> get afterShipIds =>
      <int>{for (final ship in ships) ...?ship.afterIds};

  void updateNotInFleetIds(Map<int, List<int>>? shipUpgradeMap) {
    notInFleetIds = {};
    if (shipUpgradeMap == null) return;
    for (final e in shipUpgradeMap.entries) {
      if (shipIds.contains(e.key)) {
        continue;
      }
      bool haveUpgraded = false;
      for (final id in e.value) {
        if (shipIds.contains(id)) {
          haveUpgraded = true;
          break;
        }
      }
      if (haveUpgraded) continue;
      notInFleetIds?.add(e.key);
    }
  }

  Iterable<Equipment> get uncountedEquipments =>
      equipment.values.where((e) => kUncountedSlotitemId.contains(e.itemId));

  void initEquipmentCollections(Iterable<Equipment> equipments) {
    equipmentCollections ??= {};

    final itemIds = equipments.map((e) => e.itemId!).toSet();
    for (var itemId in itemIds) {
      final subEquipments = equipments.where((e) => e.itemId == itemId);
      equipmentCollections?[itemId] = EquipmentCollection(
        id: subEquipments.first.itemId!,
        type: subEquipments.first.type!,
        sortNo: subEquipments.first.sortNo!,
        name: subEquipments.first.name ?? "Item ${subEquipments.first.itemId}",
        equipments: subEquipments.toList(),
      );
    }
  }
}
