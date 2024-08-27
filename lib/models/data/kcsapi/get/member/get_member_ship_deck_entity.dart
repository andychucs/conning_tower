import 'package:conning_tower/models/data/kcsapi/deck_data.dart';
import 'package:conning_tower/models/data/kcsapi/ship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_ship_deck_entity.freezed.dart';

part 'get_member_ship_deck_entity.g.dart';

@unfreezed
class GetMemberShipDeckEntity with _$GetMemberShipDeckEntity {
  static const source = '/api_get_member/ship_deck';

  factory GetMemberShipDeckEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required GetMemberShipDeckApiDataEntity apiData,
  }) = _GetMemberShipDeckEntity;

  factory GetMemberShipDeckEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberShipDeckEntityFromJson(json);
}

@unfreezed
class GetMemberShipDeckApiDataEntity with _$GetMemberShipDeckApiDataEntity {
  factory GetMemberShipDeckApiDataEntity({
    @JsonKey(name: 'api_ship_data')
    required List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData,
    @JsonKey(name: 'api_deck_data')
    required List<GetMemberShipDeckApiDataApiDeckDataEntity> apiDeckData,
  }) = _GetMemberShipDeckApiDataEntity;

  factory GetMemberShipDeckApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberShipDeckApiDataEntityFromJson(json);
}

@unfreezed
class GetMemberShipDeckApiDataApiShipDataEntity
    with _$GetMemberShipDeckApiDataApiShipDataEntity
    implements ShipData {
  factory GetMemberShipDeckApiDataApiShipDataEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_sortno') required int apiSortno,
    @JsonKey(name: 'api_ship_id') required int apiShipId,
    @JsonKey(name: 'api_lv') required int apiLv,
    @JsonKey(name: 'api_exp') required List<int> apiExp,
    @JsonKey(name: 'api_nowhp') required int apiNowhp,
    @JsonKey(name: 'api_maxhp') required int apiMaxhp,
    @JsonKey(name: 'api_soku') required int apiSoku,
    @JsonKey(name: 'api_leng') required int apiLeng,
    @JsonKey(name: 'api_slot') required List<int> apiSlot,
    @JsonKey(name: 'api_onslot') required List<int> apiOnslot,
    @JsonKey(name: 'api_slot_ex') required int apiSlotEx,
    @JsonKey(name: 'api_kyouka') required List<int> apiKyouka,
    @JsonKey(name: 'api_backs') required int apiBacks,
    @JsonKey(name: 'api_fuel') required int apiFuel,
    @JsonKey(name: 'api_bull') required int apiBull,
    @JsonKey(name: 'api_slotnum') required int apiSlotnum,
    @JsonKey(name: 'api_ndock_time') required int apiNdockTime,
    @JsonKey(name: 'api_ndock_item') required List<int> apiNdockItem,
    @JsonKey(name: 'api_srate') required int apiSrate,
    @JsonKey(name: 'api_cond') required int apiCond,
    @JsonKey(name: 'api_karyoku') required List<int> apiKaryoku,
    @JsonKey(name: 'api_raisou') required List<int> apiRaisou,
    @JsonKey(name: 'api_taiku') required List<int> apiTaiku,
    @JsonKey(name: 'api_soukou') required List<int> apiSoukou,
    @JsonKey(name: 'api_kaihi') required List<int> apiKaihi,
    @JsonKey(name: 'api_taisen') required List<int> apiTaisen,
    @JsonKey(name: 'api_sakuteki') required List<int> apiSakuteki,
    @JsonKey(name: 'api_lucky') required List<int> apiLucky,
    @JsonKey(name: 'api_locked') required int apiLocked,
    @JsonKey(name: 'api_locked_equip') required int apiLockedEquip,
    @JsonKey(name: 'api_sally_area') int? apiSallyArea,
    @JsonKey(name: 'api_slotitem_ex') int? apiSlotitemEx,
    @JsonKey(name: 'api_slotitem_level') int? apiSlotitemLevel,
  }) = _GetMemberShipDeckApiDataApiShipDataEntity;

  factory GetMemberShipDeckApiDataApiShipDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberShipDeckApiDataApiShipDataEntityFromJson(json);
}

@unfreezed
class GetMemberShipDeckApiDataApiDeckDataEntity
    with _$GetMemberShipDeckApiDataApiDeckDataEntity
    implements DeckData {
  factory GetMemberShipDeckApiDataApiDeckDataEntity({
    @JsonKey(name: 'api_member_id') required int apiMemberId,
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_name_id') required String apiNameId,
    @JsonKey(name: 'api_mission') required List<int> apiMission,
    @JsonKey(name: 'api_flagship') required String apiFlagship,
    @JsonKey(name: 'api_ship') required List<int> apiShip,
  }) = _GetMemberShipDeckApiDataApiDeckDataEntity;

  factory GetMemberShipDeckApiDataApiDeckDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetMemberShipDeckApiDataApiDeckDataEntityFromJson(json);
}
