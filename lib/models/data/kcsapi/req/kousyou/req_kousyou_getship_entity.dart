import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ship_data.dart';

part 'req_kousyou_getship_entity.freezed.dart';

part 'req_kousyou_getship_entity.g.dart';

@unfreezed
class ReqKousyouGetshipEntity with _$ReqKousyouGetshipEntity {
  static const source = "/api_req_kousyou/getship";
  factory ReqKousyouGetshipEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqKousyouGetshipApiDataEntity? apiData,
  }) = _ReqKousyouGetshipEntity;

  factory ReqKousyouGetshipEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKousyouGetshipEntityFromJson(json);
}

@unfreezed
class ReqKousyouGetshipApiDataEntity with _$ReqKousyouGetshipApiDataEntity {
  factory ReqKousyouGetshipApiDataEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_ship_id') int? apiShipId,
    @JsonKey(name: 'api_kdock')
    List<ReqKousyouGetshipApiDataApiKdockEntity?>? apiKdock,
    @JsonKey(name: 'api_ship') ShipDataEntity? apiShip,
    @JsonKey(name: 'api_slotitem')
    List<ReqKousyouGetshipApiDataApiSlotitemEntity?>? apiSlotitem,
  }) = _ReqKousyouGetshipApiDataEntity;

  factory ReqKousyouGetshipApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKousyouGetshipApiDataEntityFromJson(json);
}

@unfreezed
class ReqKousyouGetshipApiDataApiKdockEntity
    with _$ReqKousyouGetshipApiDataApiKdockEntity {
  factory ReqKousyouGetshipApiDataApiKdockEntity({
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
  }) = _ReqKousyouGetshipApiDataApiKdockEntity;

  factory ReqKousyouGetshipApiDataApiKdockEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqKousyouGetshipApiDataApiKdockEntityFromJson(json);
}

@unfreezed
class ReqKousyouGetshipApiDataApiSlotitemEntity
    with _$ReqKousyouGetshipApiDataApiSlotitemEntity {
  factory ReqKousyouGetshipApiDataApiSlotitemEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_slotitem_id') int? apiSlotitemId,
  }) = _ReqKousyouGetshipApiDataApiSlotitemEntity;

  factory ReqKousyouGetshipApiDataApiSlotitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqKousyouGetshipApiDataApiSlotitemEntityFromJson(json);
}
