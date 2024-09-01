import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_kdock_entity.freezed.dart';

part 'get_member_kdock_entity.g.dart';

@unfreezed
class GetMemberKdockEntity with _$GetMemberKdockEntity {
  static const source = "/api_get_member/kdock";
  factory GetMemberKdockEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') List<GetMemberKdockApiDataEntity?>? apiData,
  }) = _GetMemberKdockEntity;

  factory GetMemberKdockEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberKdockEntityFromJson(json);
}

@unfreezed
class GetMemberKdockApiDataEntity with _$GetMemberKdockApiDataEntity {
  factory GetMemberKdockApiDataEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_state') int? apiState,
    @JsonKey(name: 'api_created_ship_id') int? apiCreatedShipId,
    @JsonKey(name: 'api_complete_time') int? apiCompleteTime,
    @JsonKey(name: 'api_complete_time_str') String? apiCompleteTimeStr,
    @JsonKey(name: 'api_item1') int? apiItem1,
    @JsonKey(name: 'api_item2') int? apiItem2,
    @JsonKey(name: 'api_item3') int? apiItem3,
    @JsonKey(name: 'api_item4') int? apiItem4,
    @JsonKey(name: 'api_item5') int? apiItem5,
  }) = _GetMemberKdockApiDataEntity;

  factory GetMemberKdockApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberKdockApiDataEntityFromJson(json);
}
