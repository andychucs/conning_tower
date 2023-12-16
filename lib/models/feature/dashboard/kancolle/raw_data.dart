import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_data.freezed.dart';
part 'raw_data.g.dart';

@freezed
class RawData with _$RawData {
  const RawData._();

  const factory RawData({
    required String source,
    required String data,
    required int timestamp,
  }) = _RawData;

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);

  DataLogEntity get decoded => DataLogEntity(
      timestamp: timestamp, source: source, data: jsonDecode(data));
}

@freezed
class DataLogEntity with _$DataLogEntity {
  const factory DataLogEntity({
    required int timestamp,
    required String source,
    required Map<String, dynamic> data,
  }) = _DataLogEntity;

  factory DataLogEntity.fromJson(Map<String, dynamic> json) =>
      _$DataLogEntityFromJson(json);
}
