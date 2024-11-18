import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_kousyou_destroyship_body_entity.freezed.dart';

part 'req_kousyou_destroyship_body_entity.g.dart';

@unfreezed
class ReqKousyouDestroyshipBodyEntity with _$ReqKousyouDestroyshipBodyEntity {
  static const source = "/api_req_kousyou/destroyship";
  factory ReqKousyouDestroyshipBodyEntity({
    @JsonKey(name: 'api_ship_id') String? apiShipId,
    @JsonKey(name: 'api_slot_dest_flag') String? apiSlotDestFlag,
  }) = _ReqKousyouDestroyshipBodyEntity;

  factory ReqKousyouDestroyshipBodyEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKousyouDestroyshipBodyEntityFromJson(json);
}
