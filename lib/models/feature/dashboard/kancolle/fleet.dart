import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/equipment.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fleet.freezed.dart';

@unfreezed
class Fleet with _$Fleet {
  const Fleet._();
  factory Fleet({
    required List<Ship> ships,
    required Map<int, Equipment> equipment,
    int? combined,
  }) = _Fleet;

  String get combinedText =>
      switch (combined) { 1 => "機動部隊", 2 => "水上部隊", 3 => "輸送部隊", 0 || _ => "" };
}
