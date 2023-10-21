import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fleet.freezed.dart';

@unfreezed
class Fleet with _$Fleet {
  factory Fleet({
    required List<Ship> ships,
    required List<dynamic> equipment
  }) = _Fleet;

}

