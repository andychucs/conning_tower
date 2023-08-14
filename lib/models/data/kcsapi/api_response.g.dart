// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) =>
    _$_ApiResponse(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: json['api_data'],
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };
