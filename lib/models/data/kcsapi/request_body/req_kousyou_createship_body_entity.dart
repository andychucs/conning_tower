import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_kousyou_createship_body_entity.freezed.dart';

part 'req_kousyou_createship_body_entity.g.dart';

@unfreezed
class ReqKousyouCreateshipBodyEntity with _$ReqKousyouCreateshipBodyEntity {
  static const source = "/api_req_kousyou/createship";
  factory ReqKousyouCreateshipBodyEntity({
    @JsonKey(name: 'api_kdock_id') String? apiKdockId,
    @JsonKey(name: 'api_large_flag') String? apiLargeFlag,
    @JsonKey(name: 'api_item1') String? apiItem1,
    @JsonKey(name: 'api_item2') String? apiItem2,
    @JsonKey(name: 'api_item3') String? apiItem3,
    @JsonKey(name: 'api_item4') String? apiItem4,
    @JsonKey(name: 'api_item5') String? apiItem5,
    @JsonKey(name: 'api_highspeed') String? apiHighspeed,
  }) = _ReqKousyouCreateshipBodyEntity;

  factory ReqKousyouCreateshipBodyEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKousyouCreateshipBodyEntityFromJson(json);
}
