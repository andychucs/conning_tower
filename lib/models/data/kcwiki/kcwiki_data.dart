import 'package:conning_tower/models/data/kcwiki/api/kcwiki_api_ship_entity.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'map_data.dart';

part 'kcwiki_data.freezed.dart';
part 'kcwiki_data.g.dart';

@freezed
class KcWikiData with _$KcWikiData {
  const factory KcWikiData({
    required List<Ship> ships,
    required List<MapData> maps,
  }) = _KcWikiData;

  factory KcWikiData.fromJson(Map<String, dynamic> json) =>
      _$KcWikiDataFromJson(json);
}