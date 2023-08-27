import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_map_next_entity.freezed.dart';

part 'req_map_next_entity.g.dart';

@unfreezed
class ReqMapNextEntity with _$ReqMapNextEntity {
  static get source => "/api_req_map/next";

  factory ReqMapNextEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqMapNextApiDataEntity apiData,
  }) = _ReqMapNextEntity;

  factory ReqMapNextEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMapNextEntityFromJson(json);
}

@unfreezed
class ReqMapNextApiDataEntity with _$ReqMapNextApiDataEntity {
  factory ReqMapNextApiDataEntity({
    @JsonKey(name: 'api_rashin_flg') required int apiRashinFlg,
    @JsonKey(name: 'api_rashin_id') required int apiRashinId,
    @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
    @JsonKey(name: 'api_mapinfo_no') required int apiMapinfoNo,
    @JsonKey(name: 'api_no') required int apiNo,
    @JsonKey(name: 'api_color_no') required int apiColorNo,
    @JsonKey(name: 'api_event_id') required int apiEventId,
    @JsonKey(name: 'api_event_kind') required int apiEventKind,
    @JsonKey(name: 'api_next') required int apiNext,
    @JsonKey(name: 'api_bosscell_no') required int apiBosscellNo,
    @JsonKey(name: 'api_bosscomp') required int apiBosscomp,
    @JsonKey(name: 'api_comment_kind') required int apiCommentKind,
    @JsonKey(name: 'api_production_kind') required int apiProductionKind,
    @JsonKey(name: 'api_airsearch')
    required ReqMapNextApiDataApiAirsearchEntity apiAirsearch,
    @JsonKey(name: 'api_e_deck_info')
    required List<ReqMapNextApiDataApiEDeckInfoEntity> apiEDeckInfo,
    @JsonKey(name: 'api_limit_state') required int apiLimitState,
    @JsonKey(name: 'api_ration_flag') int? apiRationFlag,  // may not in response
  }) = _ReqMapNextApiDataEntity;

  factory ReqMapNextApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMapNextApiDataEntityFromJson(json);
}

@unfreezed
class ReqMapNextApiDataApiAirsearchEntity
    with _$ReqMapNextApiDataApiAirsearchEntity {
  factory ReqMapNextApiDataApiAirsearchEntity({
    @JsonKey(name: 'api_plane_type') required int apiPlaneType,
    @JsonKey(name: 'api_result') required int apiResult,
  }) = _ReqMapNextApiDataApiAirsearchEntity;

  factory ReqMapNextApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMapNextApiDataApiAirsearchEntityFromJson(json);
}

@unfreezed
class ReqMapNextApiDataApiEDeckInfoEntity
    with _$ReqMapNextApiDataApiEDeckInfoEntity {
  factory ReqMapNextApiDataApiEDeckInfoEntity({
    @JsonKey(name: 'api_kind') required int apiKind,
    @JsonKey(name: 'api_ship_ids') required List<int> apiShipIds,
  }) = _ReqMapNextApiDataApiEDeckInfoEntity;

  factory ReqMapNextApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMapNextApiDataApiEDeckInfoEntityFromJson(json);
}
