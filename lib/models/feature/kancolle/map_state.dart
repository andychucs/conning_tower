import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../style/app_color.dart';

part 'map_state.freezed.dart';
part 'map_state.g.dart';

@freezed
class MapState with _$MapState {
  const MapState._();

  const factory MapState({
    required int id,
    num? now,
    @Assert('max > 0') num? max,
    required bool cleared,
    required int type,
    int? rank,
  }) = _MapState;

  String get rankName =>
      switch (rank) { 1 => "丁", 2 => "丙", 3 => "乙", 4 => "甲", _ => "" };

  double get rate => (now ?? 0) / (max ?? 1);

  Color get color => switch (type) {
        1 => AppColor.verdigris,
        2 => AppColor.indianRed,
        3 => Colors.lightGreen,
        _ => Colors.grey,
      };

  String get mapCode => id.toString().length > 2
      ? 'E-${id.toString().substring(2)}'
      : id.toString().length == 2
          ? '${id.toString()[0]}-${id.toString()[1]}'
          : '';

  int get areaId => id ~/ 10;

  factory MapState.fromJson(Map<String, dynamic> json) =>
      _$MapStateFromJson(json);
}
