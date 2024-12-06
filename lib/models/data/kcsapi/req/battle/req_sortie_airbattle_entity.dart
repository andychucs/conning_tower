import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_sortie_airbattle_entity.freezed.dart';

part 'req_sortie_airbattle_entity.g.dart';

@unfreezed
class ReqSortieAirbattleEntity with _$ReqSortieAirbattleEntity {
  static const source = "/api_req_sortie/airbattle";

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
    implements BattleBasicModel {
  factory ReqSortieAirbattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') required List<List<int>> apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku') AircraftRoundData? apiKouku,
    @JsonKey(name: 'api_support_flag') int? apiSupportFlag,
    @JsonKey(name: 'api_support_info') BattleSupportInfo? apiSupportInfo,
    @JsonKey(name: 'api_stage_flag2') List<int>? apiStageFlag2,
    @JsonKey(name: 'api_kouku2') AircraftRoundData? apiKouku2,
    List<int>? apiEscapeIdx,
  }) = _ReqSortieAirbattleApiDataEntity;

  factory ReqSortieAirbattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieAirbattleApiDataEntityFromJson(json);
}
