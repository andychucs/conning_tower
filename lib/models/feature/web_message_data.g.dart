// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WebMessageData _$$_WebMessageDataFromJson(Map<String, dynamic> json) =>
    _$_WebMessageData(
      responseUrl: json['response_url'] as String,
      responseText: json['response_text'] as String,
      readyState: json['ready_state'] as int,
    );

Map<String, dynamic> _$$_WebMessageDataToJson(_$_WebMessageData instance) =>
    <String, dynamic>{
      'response_url': instance.responseUrl,
      'response_text': instance.responseText,
      'ready_state': instance.readyState,
    };
