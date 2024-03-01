import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_sortie_airbattle_entity.freezed.dart';

part 'req_sortie_airbattle_entity.g.dart';

@unfreezed
class ReqSortieAirbattleEntity with _$ReqSortieAirbattleEntity {
  static get source => "/api_req_sortie/airbattle";

  factory ReqSortieAirbattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqSortieAirbattleApiDataEntity? apiData,
  }) = _ReqSortieAirbattleEntity;

  factory ReqSortieAirbattleEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieAirbattleEntityFromJson(json);
}

@unfreezed
class ReqSortieAirbattleApiDataEntity
    with _$ReqSortieAirbattleApiDataEntity
    implements SingleVsSingleBaseModel {
  factory ReqSortieAirbattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku')
    ReqSortieAirbattleApiDataApiKoukuEntity? apiKouku,
    @JsonKey(name: 'api_support_flag') int? apiSupportFlag,
    @JsonKey(name: 'api_support_info') dynamic apiSupportInfo,
    @JsonKey(name: 'api_stage_flag2') List<int>? apiStageFlag2,
    @JsonKey(name: 'api_kouku2')
    ReqSortieAirbattleApiDataApiKoukuEntity? apiKouku2,
  }) = _ReqSortieAirbattleApiDataEntity;

  factory ReqSortieAirbattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieAirbattleApiDataEntityFromJson(json);
}

@unfreezed
class ReqSortieAirbattleApiDataApiKoukuEntity
    with _$ReqSortieAirbattleApiDataApiKoukuEntity
    implements AircraftRound {
  factory ReqSortieAirbattleApiDataApiKoukuEntity({
    @JsonKey(name: 'api_plane_from') dynamic apiPlaneFrom,
    @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1? apiStage1,
    @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
    @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3,
  }) = _ReqSortieAirbattleApiDataApiKoukuEntity;

  factory ReqSortieAirbattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqSortieAirbattleApiDataApiKoukuEntityFromJson(json);
}
