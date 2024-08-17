import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_sortie_ld_airbattle_entity.freezed.dart';

part 'req_sortie_ld_airbattle_entity.g.dart';

@unfreezed
class ReqSortieLdAirbattleEntity with _$ReqSortieLdAirbattleEntity {
  static const source = "/api_req_sortie/ld_airbattle";

  factory ReqSortieLdAirbattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqSortieLdAirbattleApiDataEntity? apiData,
  }) = _ReqSortieLdAirbattleEntity;

  factory ReqSortieLdAirbattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieLdAirbattleEntityFromJson(json);
}

@unfreezed
class ReqSortieLdAirbattleApiDataEntity
    with _$ReqSortieLdAirbattleApiDataEntity
    implements SingleVsSingleBaseModel {
  factory ReqSortieLdAirbattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku') ReqSortieLdAirbattleApiDataApiKoukuEntity? apiKouku,
  }) = _ReqSortieLdAirbattleApiDataEntity;

  factory ReqSortieLdAirbattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieLdAirbattleApiDataEntityFromJson(json);
}

@unfreezed
class ReqSortieLdAirbattleApiDataApiKoukuEntity
    with _$ReqSortieLdAirbattleApiDataApiKoukuEntity implements AircraftRound{
  factory ReqSortieLdAirbattleApiDataApiKoukuEntity({
    @JsonKey(name: 'api_plane_from') dynamic apiPlaneFrom,
    @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1? apiStage1,
    @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
    @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3,
  }) = _ReqSortieLdAirbattleApiDataApiKoukuEntity;

  factory ReqSortieLdAirbattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieLdAirbattleApiDataApiKoukuEntityFromJson(json);
}
