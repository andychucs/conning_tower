import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kcwiki_data.freezed.dart';
part 'kcwiki_data.g.dart';

@freezed
class KcwikiData with _$KcwikiData {
  const factory KcwikiData({
    required List<Ship> ships,
  }) = _KcwikiData;

  factory KcwikiData.fromJson(Map<String, dynamic> json) =>
      _$KcwikiDataFromJson(json);
}