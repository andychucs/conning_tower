// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_map_next_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqMapNextEntity _$$_ReqMapNextEntityFromJson(Map<String, dynamic> json) =>
    _$_ReqMapNextEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqMapNextApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqMapNextEntityToJson(_$_ReqMapNextEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqMapNextApiDataEntity _$$_ReqMapNextApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqMapNextApiDataEntity(
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
      apiCommentKind: json['api_comment_kind'] as int,
      apiProductionKind: json['api_production_kind'] as int,
      apiAirsearch: ReqMapNextApiDataApiAirsearchEntity.fromJson(
          json['api_airsearch'] as Map<String, dynamic>),
      apiEDeckInfo: (json['api_e_deck_info'] as List<dynamic>?)
          ?.map((e) => ReqMapNextApiDataApiEDeckInfoEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiLimitState: json['api_limit_state'] as int,
      apiRationFlag: json['api_ration_flag'] as int?,
    );

Map<String, dynamic> _$$_ReqMapNextApiDataEntityToJson(
        _$_ReqMapNextApiDataEntity instance) =>
    <String, dynamic>{
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
      'api_comment_kind': instance.apiCommentKind,
      'api_production_kind': instance.apiProductionKind,
      'api_airsearch': instance.apiAirsearch,
      'api_e_deck_info': instance.apiEDeckInfo,
      'api_limit_state': instance.apiLimitState,
      'api_ration_flag': instance.apiRationFlag,
    };

_$_ReqMapNextApiDataApiAirsearchEntity
    _$$_ReqMapNextApiDataApiAirsearchEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMapNextApiDataApiAirsearchEntity(
          apiPlaneType: json['api_plane_type'] as int,
          apiResult: json['api_result'] as int,
        );

Map<String, dynamic> _$$_ReqMapNextApiDataApiAirsearchEntityToJson(
        _$_ReqMapNextApiDataApiAirsearchEntity instance) =>
    <String, dynamic>{
      'api_plane_type': instance.apiPlaneType,
      'api_result': instance.apiResult,
    };

_$_ReqMapNextApiDataApiEDeckInfoEntity
    _$$_ReqMapNextApiDataApiEDeckInfoEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqMapNextApiDataApiEDeckInfoEntity(
          apiKind: json['api_kind'] as int,
          apiShipIds: (json['api_ship_ids'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_ReqMapNextApiDataApiEDeckInfoEntityToJson(
        _$_ReqMapNextApiDataApiEDeckInfoEntity instance) =>
    <String, dynamic>{
      'api_kind': instance.apiKind,
      'api_ship_ids': instance.apiShipIds,
    };
