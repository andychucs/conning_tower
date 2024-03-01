import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/equipment.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fleet.freezed.dart';

@unfreezed
class Fleet with _$Fleet {
  factory Fleet({
    required List<Ship> ships,
    required Map<int, Equipment> equipment
  }) = _Fleet;

}

