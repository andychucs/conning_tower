import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_hensei_combined_entity.freezed.dart';

part 'req_hensei_combined_entity.g.dart';

@unfreezed
class ReqHenseiCombinedEntity with _$ReqHenseiCombinedEntity {
  static const source = "/api_req_hensei/combined";
  factory ReqHenseiCombinedEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqHenseiCombinedApiDataEntity? apiData,
  }) = _ReqHenseiCombinedEntity;

  factory ReqHenseiCombinedEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHenseiCombinedEntityFromJson(json);
}

@unfreezed
class ReqHenseiCombinedApiDataEntity with _$ReqHenseiCombinedApiDataEntity {
  factory ReqHenseiCombinedApiDataEntity({
    @JsonKey(name: 'api_combined') int? apiCombined,
  }) = _ReqHenseiCombinedApiDataEntity;

  factory ReqHenseiCombinedApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHenseiCombinedApiDataEntityFromJson(json);
}
