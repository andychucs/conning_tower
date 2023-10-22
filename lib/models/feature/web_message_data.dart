import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_message_data.freezed.dart';
part 'web_message_data.g.dart';

@freezed
class WebMessageData with _$WebMessageData {
  const factory WebMessageData({
    required String responseUrl,
    required String responseText,
    required int readyState
  }) = _WebMessageData;
  
  

  factory WebMessageData.fromJson(Map<String, dynamic> json) =>
      _$WebMessageDataFromJson(json);
}