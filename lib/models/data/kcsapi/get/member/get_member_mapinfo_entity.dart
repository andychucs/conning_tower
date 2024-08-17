import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_mapinfo_entity.freezed.dart';

part 'get_member_mapinfo_entity.g.dart';

@unfreezed
class GetMemberMapinfoEntity with _$GetMemberMapinfoEntity {
  static const source = '/api_get_member/mapinfo';

  factory GetMemberMapinfoEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') GetMemberMapinfoApiDataEntity? apiData,
  }) = _GetMemberMapinfoEntity;

  factory GetMemberMapinfoEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberMapinfoEntityFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataEntity with _$GetMemberMapinfoApiDataEntity {
  factory GetMemberMapinfoApiDataEntity({
    @JsonKey(name: 'api_map_info')
    List<GetMemberMapinfoApiDataApiMapInfoEntity?>? apiMapInfo,
    @JsonKey(name: 'api_air_base')
    List<GetMemberMapinfoApiDataApiAirBaseEntity?>? apiAirBase,
    @JsonKey(name: 'api_air_base_expanded_info')
    List<GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity?>?
        apiAirBaseExpandedInfo,
  }) = _GetMemberMapinfoApiDataEntity;

  factory GetMemberMapinfoApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataEntityFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataApiMapInfoEntity
    with _$GetMemberMapinfoApiDataApiMapInfoEntity {
  factory GetMemberMapinfoApiDataApiMapInfoEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_cleared') required int apiCleared,
    @JsonKey(name: 'api_defeat_count') int? apiDefeatCount,
    @JsonKey(name: 'api_required_defeat_count') int? apiRequiredDefeatCount,
    @JsonKey(name: 'api_gauge_type') int? apiGaugeType,
    @JsonKey(name: 'api_gauge_num') int? apiGaugeNum,
    @JsonKey(name: 'api_air_base_decks') int? apiAirBaseDecks,
    @JsonKey(name: 'api_s_no') int? apiSNo,
    @JsonKey(name: 'api_eventmap') ApiEventMap? apiEventmap,
    @JsonKey(name: 'api_sally_flag') List<int>? apiSallyFlag,
  }) = _GetMemberMapinfoApiDataApiMapInfoEntity;

  factory GetMemberMapinfoApiDataApiMapInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataApiMapInfoEntityFromJson(json);
}

@freezed
class ApiEventMap with _$ApiEventMap {
  const factory ApiEventMap({
    @JsonKey(name: 'api_now_maphp') int? apiNowMapHP,
    @JsonKey(name: 'api_max_maphp') int? apiMaxMapHP,
    int? apiState,
    int? apiSelectedRank,
  }) = _ApiEventMap;

  factory ApiEventMap.fromJson(Map<String, dynamic> json) =>
      _$ApiEventMapFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataApiAirBaseEntity
    with _$GetMemberMapinfoApiDataApiAirBaseEntity {
  factory GetMemberMapinfoApiDataApiAirBaseEntity({
    @JsonKey(name: 'api_area_id') int? apiAreaId,
    @JsonKey(name: 'api_rid') int? apiRid,
    @JsonKey(name: 'api_name') String? apiName,
    @JsonKey(name: 'api_distance')
    GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity? apiDistance,
    @JsonKey(name: 'api_action_kind') int? apiActionKind,
    @JsonKey(name: 'api_plane_info')
    List<GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity?>? apiPlaneInfo,
  }) = _GetMemberMapinfoApiDataApiAirBaseEntity;

  factory GetMemberMapinfoApiDataApiAirBaseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataApiAirBaseEntityFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity
    with _$GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity {
  factory GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity({
    @JsonKey(name: 'api_base') int? apiBase,
    @JsonKey(name: 'api_bonus') int? apiBonus,
  }) = _GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity;

  factory GetMemberMapinfoApiDataApiAirBaseApiDistanceEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataApiAirBaseApiDistanceEntityFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity
    with _$GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity {
  factory GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity({
    @JsonKey(name: 'api_squadron_id') int? apiSquadronId,
    @JsonKey(name: 'api_state') int? apiState,
    @JsonKey(name: 'api_slotid') int? apiSlotid,
  }) = _GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity;

  factory GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataApiAirBaseApiPlaneInfoEntityFromJson(json);
}

@unfreezed
class GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity
    with _$GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity {
  factory GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity({
    @JsonKey(name: 'api_area_id') int? apiAreaId,
    @JsonKey(name: 'api_maintenance_level') int? apiMaintenanceLevel,
  }) = _GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity;

  factory GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMapinfoApiDataApiAirBaseExpandedInfoEntityFromJson(json);
}
