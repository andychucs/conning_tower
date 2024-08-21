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
    Map<String, dynamic>? params,
  }) = _RawData;

  factory RawData.response({
    required String source,
    required String data,
    required Map<String, dynamic> params,
  }) => RawData(
      source: source, data: data, timestamp: DateTime.now().millisecondsSinceEpoch, params: params);

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);

  factory RawData.fromDataLogEntity(DataLogEntity entity) => RawData(
      source: entity.source, data: jsonEncode(entity.data), timestamp: entity.timestamp);

  DataLogEntity get decoded => DataLogEntity(
      timestamp: timestamp, source: source, data: jsonDecode(data));
}

@freezed
class DataLogEntity with _$DataLogEntity {
  const factory DataLogEntity({
    required int timestamp,
    required String source,
    required Map<String, dynamic> data,
    Map<String, dynamic>? params,
  }) = _DataLogEntity;

  factory DataLogEntity.fromJson(Map<String, dynamic> json) =>
      _$DataLogEntityFromJson(json);
}
