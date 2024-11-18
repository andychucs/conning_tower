import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_useitem_entity.freezed.dart';
part 'get_member_useitem_entity.g.dart';

@unfreezed
class GetMemberUseitemEntity with _$GetMemberUseitemEntity {
  static const source = '/api_get_member/useitem';

  factory GetMemberUseitemEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') List<GetMemberUseitemApiDataEntity>? apiData,
  }) = _GetMemberUseitemEntity;

  factory GetMemberUseitemEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberUseitemEntityFromJson(json);
}

@unfreezed
class GetMemberUseitemApiDataEntity with _$GetMemberUseitemApiDataEntity {
  factory GetMemberUseitemApiDataEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_count') int? apiCount,
  }) = _GetMemberUseitemApiDataEntity;

  factory GetMemberUseitemApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberUseitemApiDataEntityFromJson(json);
}
