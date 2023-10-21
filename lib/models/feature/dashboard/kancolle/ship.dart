import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/data/kcsapi/ship_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship.freezed.dart';

@freezed
class Ship with _$Ship {
  const Ship._();

  const factory Ship({
    required int uid,
    // required int sortNo,
    required int shipId,
    required String name,
    required int level,
    required List<int> exp,
    required int nowHP,
    required int maxHP,
    int? speed,
    int? attackRange,
    // required List<int> apiSlot,
    // required List<int> apiOnslot,
    // required int apiSlotEx,
    // required List<int> apiKyouka,
    // required int apiBacks,
    // required int apiFuel,
    // required int apiBull,
    // required int apiSlotnum,
    // required int apiNdockTime,
    // required List<int> apiNdockItem,
    // required int apiSrate,
    int? condition,
    List<int>? attack,
    List<int>? attackT,
    List<int>? antiAircraft,
    List<int>? armor,
    List<int>? evasion,
    List<int>? antiSubmarine,
    List<int>? scout,
    List<int>? luck,
    // required int apiLocked,
    // required int apiLockedEquip,
    // required int apiSallyArea,
  }) = _Ship;

  bool damaged() {
    if (nowHP <= maxHP * 0.25) {
      return true;
    } else {
      return false;
    }
  }

  bool get sparked => condition! >= 50;

  Color? get damageColor {
    if (nowHP <= maxHP * 0.25) return CupertinoColors.destructiveRed;
    if (nowHP <= maxHP * 0.50) return CupertinoColors.activeOrange;
    if (nowHP <= maxHP * 0.75) return Colors.limeAccent;
    return null;
  }

  String get damageLevel {
    if (nowHP <= maxHP * 0.25) return S.current.TextLDamage;
    if (nowHP <= maxHP * 0.50) return S.current.TextMDamage;
    if (nowHP <= maxHP * 0.75) return S.current.TextSDamage;
    return 'N/A';
  }

  String get speedLevel {
    if (speed == 5) return S.current.TextSlowSpeed;
    if (speed == 10) return S.current.TextFastSpeed;
    if (speed == 15) return S.current.TextFastPlusSpeed;
    if (speed == 20) return S.current.TextFastestSpeed;
    return 'N/A';
  }

  String get attackRangeLevel {
    if (attackRange == 5) return S.current.TextSuperLongRangePlus;
    if (attackRange == 4) return S.current.TextSuperLongRange;
    if (attackRange == 3) return S.current.TextLongRange;
    if (attackRange == 2) return S.current.TextMediumRange;
    if (attackRange == 1) return S.current.TextShortRange;
    if (attackRange == 0) return S.current.TextNone;
    return 'N/A';
  }

  factory Ship.fromApi(ShipData data, String shipName) {
    return Ship(
        uid: data.apiId,
        shipId: data.apiShipId,
        name: shipName,
        level: data.apiLv,
        exp: data.apiExp,
        nowHP: data.apiNowhp,
        maxHP: data.apiMaxhp,
        // sortNo: data.apiSortno,
        speed: data.apiSoku,
        condition: data.apiCond,
        attack: data.apiKaryoku,
        attackT: data.apiRaisou,
        antiAircraft: data.apiTaiku,
        armor: data.apiSoukou,
        evasion: data.apiKaihi,
        antiSubmarine: data.apiTaisen,
        scout: data.apiSakuteki,
        luck: data.apiLucky,
        attackRange: data.apiLeng);
  }
}
