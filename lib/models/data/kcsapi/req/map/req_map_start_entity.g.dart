// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_map_start_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqMapStartEntity _$$_ReqMapStartEntityFromJson(Map<String, dynamic> json) =>
    _$_ReqMapStartEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqMapStartApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqMapStartEntityToJson(
        _$_ReqMapStartEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqMapStartApiDataEntity _$$_ReqMapStartApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMapStartApiDataEntity(
      apiCellData: (json['api_cell_data'] as List<dynamic>)
          .map((e) => ReqMapStartApiDataApiCellDataEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiRashinFlg: json['api_rashin_flg'] as int,
      apiRashinId: json['api_rashin_id'] as int,
      apiMapareaId: json['api_maparea_id'] as int,
      apiMapinfoNo: json['api_mapinfo_no'] as int,
      apiNo: json['api_no'] as int,
      apiColorNo: json['api_color_no'] as int,
      apiEventId: json['api_event_id'] as int,
      apiEventKind: json['api_event_kind'] as int,
      apiNext: json['api_next'] as int,
      apiBosscellNo: json['api_bosscell_no'] as int,
      apiBosscomp: json['api_bosscomp'] as int,
      apiAirsearch: ReqMapStartApiDataApiAirsearchEntity.fromJson(
          json['api_airsearch'] as Map<String, dynamic>),
      apiEDeckInfo: (json['api_e_deck_info'] as List<dynamic>)
          .map((e) => ReqMapStartApiDataApiEDeckInfoEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiLimitState: json['api_limit_state'] as int,
      apiFromNo: json['api_from_no'] as int,
    );

Map<String, dynamic> _$$_ReqMapStartApiDataEntityToJson(
        _$_ReqMapStartApiDataEntity instance) =>
    <String, dynamic>{
      'api_cell_data': instance.apiCellData,
      'api_rashin_flg': instance.apiRashinFlg,
      'api_rashin_id': instance.apiRashinId,
      'api_maparea_id': instance.apiMapareaId,
      'api_mapinfo_no': instance.apiMapinfoNo,
      'api_no': instance.apiNo,
      'api_color_no': instance.apiColorNo,
      'api_event_id': instance.apiEventId,
      'api_event_kind': instance.apiEventKind,
      'api_next': instance.apiNext,
      'api_bosscell_no': instance.apiBosscellNo,
      'api_bosscomp': instance.apiBosscomp,
      'api_airsearch': instance.apiAirsearch,
      'api_e_deck_info': instance.apiEDeckInfo,
      'api_limit_state': instance.apiLimitState,
      'api_from_no': instance.apiFromNo,
    };

_$_ReqMapStartApiDataApiCellDataEntity
    _$$_ReqMapStartApiDataApiCellDataEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMapStartApiDataApiCellDataEntity(
          apiId: json['api_id'] as int,
          apiNo: json['api_no'] as int,
          apiColorNo: json['api_color_no'] as int,
          apiPassed: json['api_passed'] as int,
        );

Map<String, dynamic> _$$_ReqMapStartApiDataApiCellDataEntityToJson(
        _$_ReqMapStartApiDataApiCellDataEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_no': instance.apiNo,
      'api_color_no': instance.apiColorNo,
      'api_passed': instance.apiPassed,
    };

_$_ReqMapStartApiDataApiAirsearchEntity
    _$$_ReqMapStartApiDataApiAirsearchEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMapStartApiDataApiAirsearchEntity(
          apiPlaneType: json['api_plane_type'] as int,
          apiResult: json['api_result'] as int,
        );

Map<String, dynamic> _$$_ReqMapStartApiDataApiAirsearchEntityToJson(
        _$_ReqMapStartApiDataApiAirsearchEntity instance) =>
    <String, dynamic>{
      'api_plane_type': instance.apiPlaneType,
      'api_result': instance.apiResult,
    };

_$_ReqMapStartApiDataApiEDeckInfoEntity
    _$$_ReqMapStartApiDataApiEDeckInfoEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMapStartApiDataApiEDeckInfoEntity(
          apiKind: json['api_kind'] as int,
          apiShipIds: (json['api_ship_ids'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_ReqMapStartApiDataApiEDeckInfoEntityToJson(
        _$_ReqMapStartApiDataApiEDeckInfoEntity instance) =>
    <String, dynamic>{
      'api_kind': instance.apiKind,
      'api_ship_ids': instance.apiShipIds,
    };
