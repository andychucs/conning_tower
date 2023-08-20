import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fleet.freezed.dart';

@unfreezed
class Fleet with _$Fleet {
  factory Fleet({
    required int count,
  }) = _Fleet;

}

@freezed
class Squad with _$Squad {
  factory Squad({
    required int id,
    required String name,
  }) = _Squad;

}