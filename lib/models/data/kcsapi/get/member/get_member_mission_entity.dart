import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_mission_entity.freezed.dart';

part 'get_member_mission_entity.g.dart';

@unfreezed
class GetMemberMissionEntity with _$GetMemberMissionEntity {
  static const source = '/api_get_member/mission';

  factory GetMemberMissionEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required GetMemberMissionApiDataEntity apiData,
  }) = _GetMemberMissionEntity;

  factory GetMemberMissionEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberMissionEntityFromJson(json);
}

@unfreezed
class GetMemberMissionApiDataEntity with _$GetMemberMissionApiDataEntity {
  factory GetMemberMissionApiDataEntity({
    @JsonKey(name: 'api_list_items')
    required List<GetMemberMissionApiDataApiListItemsEntity> apiListItems,
    @JsonKey(name: 'api_limit_time') required List<int> apiLimitTime,
  }) = _GetMemberMissionApiDataEntity;

  factory GetMemberMissionApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberMissionApiDataEntityFromJson(json);
}

@unfreezed
class GetMemberMissionApiDataApiListItemsEntity
    with _$GetMemberMissionApiDataApiListItemsEntity {
  factory GetMemberMissionApiDataApiListItemsEntity({
    @JsonKey(name: 'api_mission_id') required int apiMissionId,
    @JsonKey(name: 'api_state') required int apiState,
  }) = _GetMemberMissionApiDataApiListItemsEntity;

  factory GetMemberMissionApiDataApiListItemsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberMissionApiDataApiListItemsEntityFromJson(json);
}

/*
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_list_items":[{"api_mission_id":1,"api_state":0},{"api_mission_id":9,"api_state":0},{"api_mission_id":17,"api_state":0},{"api_mission_id":301,"api_state":0},{"api_mission_id":302,"api_state":0}],"api_limit_time":[1694746800]}}
 */
