import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship_data.freezed.dart';
part 'ship_data.g.dart';


abstract class ShipData {
  late int apiId;
  late int apiSortno;
  late int apiShipId;
  late int apiLv;
  late List<int> apiExp;
  late int apiNowhp;
  late int apiMaxhp;
  late int apiSoku;
  late int apiLeng;
  late List<int> apiSlot;
  late List<int> apiOnslot;
  late int apiSlotEx;
  late List<int> apiKyouka;
  late int apiBacks;
  late int apiFuel;
  late int apiBull;
  late int apiSlotnum;
  late int apiNdockTime;
  late List<int> apiNdockItem;
  late int apiSrate;
  late int apiCond;
  late List<int> apiKaryoku;
  late List<int> apiRaisou;
  late List<int> apiTaiku;
  late List<int> apiSoukou;
  late List<int> apiKaihi;
  late List<int> apiTaisen;
  late List<int> apiSakuteki;
  late List<int> apiLucky;
  late int apiLocked;
  late int apiLockedEquip;
  late int? apiSallyArea;
}


@unfreezed
class ShipDataEntity
    with _$ShipDataEntity
    implements ShipData {
  factory ShipDataEntity({
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
  }) = _ShipDataEntity;

  factory ShipDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ShipDataEntityFromJson(json);
}