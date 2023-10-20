import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_info.freezed.dart';

@unfreezed
class DataInfo with _$DataInfo {
  factory DataInfo({
    Map<int, dynamic>? shipInfo,
    Map<int, dynamic>? itemInfo,
  }) = _DataInfo;
}