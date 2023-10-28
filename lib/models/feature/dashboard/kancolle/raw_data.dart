import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_data.freezed.dart';
part 'raw_data.g.dart';

@freezed
class RawData with _$RawData {
  const factory RawData(
      {required String source,
      required String data,
      required int timestamp}) = _RawData;

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);
}

@freezed
class RawDataLog with _$RawDataLog {
  const factory RawDataLog({
    required int time,
    required List<RawData> data
  }) = _RawDataLog;

  factory RawDataLog.fromJson(Map<String, dynamic> json) =>
      _$RawDataLogFromJson(json);
}