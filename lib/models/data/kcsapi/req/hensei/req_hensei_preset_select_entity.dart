import 'package:freezed_annotation/freezed_annotation.dart';

import '../../deck_data.dart';

part 'req_hensei_preset_select_entity.freezed.dart';

part 'req_hensei_preset_select_entity.g.dart';

@unfreezed
class ReqHenseiPresetSelectEntity with _$ReqHenseiPresetSelectEntity {
  static const source = "/api_req_hensei/preset_select";

  factory ReqHenseiPresetSelectEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqHenseiPresetSelectApiDataEntity? apiData,
  }) = _ReqHenseiPresetSelectEntity;

  factory ReqHenseiPresetSelectEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHenseiPresetSelectEntityFromJson(json);
}

@unfreezed
class ReqHenseiPresetSelectApiDataEntity
    with _$ReqHenseiPresetSelectApiDataEntity
    implements DeckData {
  factory ReqHenseiPresetSelectApiDataEntity({
    @JsonKey(name: 'api_member_id') required int apiMemberId,
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_name_id') required String apiNameId,
    @JsonKey(name: 'api_mission') required List<int> apiMission,
    @JsonKey(name: 'api_flagship') required String apiFlagship,
    @JsonKey(name: 'api_ship') required List<int> apiShip,
  }) = _ReqHenseiPresetSelectApiDataEntity;

  factory ReqHenseiPresetSelectApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqHenseiPresetSelectApiDataEntityFromJson(json);
}
