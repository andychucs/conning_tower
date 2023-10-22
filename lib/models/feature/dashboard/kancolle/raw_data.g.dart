// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawData _$$_RawDataFromJson(Map<String, dynamic> json) => _$_RawData(
      source: json['source'] as String,
      data: json['data'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_RawDataToJson(_$_RawData instance) =>
    <String, dynamic>{
      'source': instance.source,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_$_RawDataLog _$$_RawDataLogFromJson(Map<String, dynamic> json) =>
    _$_RawDataLog(
      time: json['time'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => RawData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RawDataLogToJson(_$_RawDataLog instance) =>
    <String, dynamic>{
      'time': instance.time,
      'data': instance.data,
    };
