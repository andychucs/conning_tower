import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle.dart';

part 'req_combined_battle_ld_airbattle_entity.freezed.dart';

part 'req_combined_battle_ld_airbattle_entity.g.dart';

@unfreezed
class ReqCombinedBattleLdAirbattleEntity
    with _$ReqCombinedBattleLdAirbattleEntity {
  static const source = "/api_req_combined_battle/ld_airbattle";

  factory ReqCombinedBattleLdAirbattleEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data')
    ReqCombinedBattleLdAirbattleApiDataEntity? apiData,
  }) = _ReqCombinedBattleLdAirbattleEntity;

  factory ReqCombinedBattleLdAirbattleEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleLdAirbattleEntityFromJson(json);
}

@unfreezed
class ReqCombinedBattleLdAirbattleApiDataEntity
    with _$ReqCombinedBattleLdAirbattleApiDataEntity implements DoubleVsSingleBattleData {
  factory ReqCombinedBattleLdAirbattleApiDataEntity({
    @JsonKey(name: 'api_deck_id') required int apiDeckId,
    @JsonKey(name: 'api_formation') required List<int> apiFormation,
    @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
    @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
    @JsonKey(name: 'api_f_nowhps_combined') List<int>? apiFNowhpsCombined,
    @JsonKey(name: 'api_f_maxhps_combined') List<int>? apiFMaxhpsCombined,
    @JsonKey(name: 'api_fParam') List<dynamic>? apiFParam,
    @JsonKey(name: 'api_fParam_combined') List<dynamic>? apiFParamCombined,
    @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
    @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
    @JsonKey(name: 'api_e_nowhps') required List<dynamic> apiENowhps,
    @JsonKey(name: 'api_e_maxhps') required List<dynamic> apiEMaxhps,
    @JsonKey(name: 'api_eSlot') List<dynamic>? apiESlot,
    @JsonKey(name: 'api_eParam') List<dynamic>? apiEParam,
    @JsonKey(name: 'api_smoke_type') int? apiSmokeType,
    @JsonKey(name: 'api_balloon_cell') int? apiBalloonCell,
    @JsonKey(name: 'api_atoll_cell') int? apiAtollCell,
    @JsonKey(name: 'api_midnight_flag') int? apiMidnightFlag,
    @JsonKey(name: 'api_search') List<int?>? apiSearch,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_kouku') AircraftRoundData? apiKouku,
    List<int>? apiEscapeIdx,
    List<int>? apiEscapeIdxCombined,
  }) = _ReqCombinedBattleLdAirbattleApiDataEntity;

  factory ReqCombinedBattleLdAirbattleApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleLdAirbattleApiDataEntityFromJson(json);
}
