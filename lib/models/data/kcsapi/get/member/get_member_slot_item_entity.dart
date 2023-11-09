import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_slot_item_entity.freezed.dart';

part 'get_member_slot_item_entity.g.dart';

@unfreezed
class GetMemberSlotItemEntity with _$GetMemberSlotItemEntity {
  static get source => '/api_get_member/slot_item';

  factory GetMemberSlotItemEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data')
    required List<GetMemberSlotItemApiDataEntity> apiData,
  }) = _GetMemberSlotItemEntity;

  factory GetMemberSlotItemEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberSlotItemEntityFromJson(json);
}

@unfreezed
class GetMemberSlotItemApiDataEntity
    with _$GetMemberSlotItemApiDataEntity
    implements SlotItem {
  factory GetMemberSlotItemApiDataEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_slotitem_id') required int apiSlotitemId,
    @JsonKey(name: 'api_locked') required int apiLocked,
    @JsonKey(name: 'api_level') required int apiLevel,
  }) = _GetMemberSlotItemApiDataEntity;

  factory GetMemberSlotItemApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberSlotItemApiDataEntityFromJson(json);
}
