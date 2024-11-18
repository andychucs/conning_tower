import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_kaisou_powerup_body_entity.freezed.dart';

part 'req_kaisou_powerup_body_entity.g.dart';

@unfreezed
class ReqKaisouPowerupBodyEntity with _$ReqKaisouPowerupBodyEntity {
  static const source = '/api_req_kaisou/powerup';

  factory ReqKaisouPowerupBodyEntity({
    @JsonKey(name: 'api_id') String? apiId,
    @JsonKey(name: 'api_id_items') String? apiIdItems,
    @JsonKey(name: 'api_slot_dest_flag') String? apiSlotDestFlag,
    @JsonKey(name: 'api_limited_feed_type') String? apiLimitedFeedType,
  }) = _ReqKaisouPowerupBodyEntity;

  factory ReqKaisouPowerupBodyEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKaisouPowerupBodyEntityFromJson(json);
}
