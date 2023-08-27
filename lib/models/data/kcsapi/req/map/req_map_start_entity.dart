import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_map_start_entity.freezed.dart';

part 'req_map_start_entity.g.dart';

@unfreezed
class ReqMapStartEntity with _$ReqMapStartEntity {
  static get source => "/api_req_map/start";

  factory ReqMapStartEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqMapStartApiDataEntity apiData,
  }) = _ReqMapStartEntity;

  factory ReqMapStartEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMapStartEntityFromJson(json);
}

@unfreezed
class ReqMapStartApiDataEntity with _$ReqMapStartApiDataEntity {
  factory ReqMapStartApiDataEntity({
    @JsonKey(name: 'api_cell_data')
    required List<ReqMapStartApiDataApiCellDataEntity> apiCellData,
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
    @JsonKey(name: 'api_airsearch')
    required ReqMapStartApiDataApiAirsearchEntity apiAirsearch,
    @JsonKey(name: 'api_e_deck_info')
    required List<ReqMapStartApiDataApiEDeckInfoEntity> apiEDeckInfo,
    @JsonKey(name: 'api_limit_state') required int apiLimitState,
    @JsonKey(name: 'api_from_no') required int apiFromNo,
  }) = _ReqMapStartApiDataEntity;

  factory ReqMapStartApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMapStartApiDataEntityFromJson(json);
}

@unfreezed
class ReqMapStartApiDataApiCellDataEntity
    with _$ReqMapStartApiDataApiCellDataEntity {
  factory ReqMapStartApiDataApiCellDataEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_no') required int apiNo,
    @JsonKey(name: 'api_color_no') required int apiColorNo,
    @JsonKey(name: 'api_passed') required int apiPassed,
  }) = _ReqMapStartApiDataApiCellDataEntity;

  factory ReqMapStartApiDataApiCellDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMapStartApiDataApiCellDataEntityFromJson(json);
}

@unfreezed
class ReqMapStartApiDataApiAirsearchEntity
    with _$ReqMapStartApiDataApiAirsearchEntity {
  factory ReqMapStartApiDataApiAirsearchEntity({
    @JsonKey(name: 'api_plane_type') required int apiPlaneType,
    @JsonKey(name: 'api_result') required int apiResult,
  }) = _ReqMapStartApiDataApiAirsearchEntity;

  factory ReqMapStartApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMapStartApiDataApiAirsearchEntityFromJson(json);
}

@unfreezed
class ReqMapStartApiDataApiEDeckInfoEntity
    with _$ReqMapStartApiDataApiEDeckInfoEntity {
  factory ReqMapStartApiDataApiEDeckInfoEntity({
    @JsonKey(name: 'api_kind') required int apiKind,
    @JsonKey(name: 'api_ship_ids') required List<int> apiShipIds,
  }) = _ReqMapStartApiDataApiEDeckInfoEntity;

  factory ReqMapStartApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMapStartApiDataApiEDeckInfoEntityFromJson(json);
}
