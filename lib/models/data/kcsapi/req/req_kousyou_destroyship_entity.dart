import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_kousyou_destroyship_entity.freezed.dart';

part 'req_kousyou_destroyship_entity.g.dart';

@unfreezed
class ReqKousyouDestroyshipEntity with _$ReqKousyouDestroyshipEntity {
  static const source = "/api_req_kousyou/destroyship";

  factory ReqKousyouDestroyshipEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqKousyouDestroyshipApiDataEntity? apiData,
  }) = _ReqKousyouDestroyshipEntity;

  factory ReqKousyouDestroyshipEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKousyouDestroyshipEntityFromJson(json);
}

@unfreezed
class ReqKousyouDestroyshipApiDataEntity
    with _$ReqKousyouDestroyshipApiDataEntity {
  factory ReqKousyouDestroyshipApiDataEntity({
    @JsonKey(name: 'api_material') List<int?>? apiMaterial,
  }) = _ReqKousyouDestroyshipApiDataEntity;

  factory ReqKousyouDestroyshipApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqKousyouDestroyshipApiDataEntityFromJson(json);
}
