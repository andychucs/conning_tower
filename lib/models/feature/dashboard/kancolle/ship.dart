import 'dart:math';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/data/kcsapi/ship_data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants_poi.dart';
import 'equipment.dart';

part 'ship.freezed.dart';
part 'ship.g.dart';

@unfreezed
class Ship with _$Ship {
  const Ship._();

  factory Ship({
    required int uid,
    // required int sortNo,
    required int shipId,
    String? name,
    required int level,
    List<int>? exp,
    @JsonKey(name: "now_hp") required int nowHP,
    @JsonKey(name: "max_hp") required int maxHP,
    int? speed,
    int? attackRange,
    List<int>? slot,
    List<int>? onSlot,
    int? slotEx,
    // required List<int> apiKyouka,
    // required int apiBacks,
    int? fuel,
    int? bull,
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
    List<int>? afterIds,
    int? upgradeLevel,
    int? shipType,
    List<Equipment>? equipment,
    List<Equipment>? exEquipment,
    String? hpStatus,
    int? sallyArea,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);

  int get currentLuck => luck?[0] ?? 0;

  bool get haveSlotEx => slotEx != 0 && slotEx != null;

  int get totalAttack => (attack?[0] ?? 0) + (attackT?[0] ?? 0);

  bool get canUpgrade => (afterIds ?? []).isNotEmpty;

  bool waitUpgrade() {
    if (upgradeLevel != null) {
      if (level >= upgradeLevel! && upgradeLevel != 0) {
        return true;
      }
    }
    return false;
  }

  void onHPChange(int damage) {
    nowHP = nowHP + damage;
    if (nowHP < 0) {
      nowHP = 0;
    }
  }

  bool damaged() {
    if (nowHP <= maxHP * 0.25) {
      return true;
    } else {
      return false;
    }
  }

  bool get sparked => condition! >= 50;

  Color? get sparkColor {
    if (condition! < 20) return const Color(0xFFC84041);
    if (condition! < 30) return const Color(0xFFCF6638);
    if (condition! == 49) return Colors.amber[100];
    if (sparked) return Colors.yellow[600];
    return Colors.lightGreenAccent[700];
  }

  String get sparkEmoji {
    if (condition! < 20) return '🙁';
    if (condition! < 30) return '😐';
    if (sparked) return '☺️';
    return '🙂';
  }

  Color? fuelBullColor(int? fuelMax, int? bullMax) {
    if (fuelMax != null && bullMax != null) {
      if (fuel! < fuelMax || bull! < bullMax) {
        return const Color(0xFFF06F23);
      }
    }
    return Colors.lightGreenAccent[700];
  }

  Color? get damageColor {
    if (nowHP <= maxHP * 0.25) return const Color(0xFFDE3C14);
    if (nowHP <= maxHP * 0.50) return const Color(0xFFFFB616);
    if (nowHP <= maxHP * 0.75) return const Color(0xFFD0FD3D);
    return Colors.lightGreenAccent[700];
  }

  String get damageLevel {
    if (nowHP <= maxHP * 0.25) return S.current.TextLDamage;
    if (nowHP <= maxHP * 0.50) return S.current.TextMDamage;
    if (nowHP <= maxHP * 0.75) return S.current.TextSDamage;
    return 'N/A';
  }

  String get speedLevel => switch (speed) {
      5 => S.current.TextSlowSpeed,
      10 => S.current.TextFastSpeed,
      15 => S.current.TextFastPlusSpeed,
      20 => S.current.TextFastestSpeed,
      _ => 'N/A'
    };

  String get attackRangeLevel => switch (attackRange) {
      5 => S.current.TextSuperLongRangePlus,
      4 => S.current.TextSuperLongRange,
      3 => S.current.TextLongRange,
      2 => S.current.TextMediumRange,
      1 => S.current.TextShortRange,
      0 => S.current.TextNone,
      _ => 'N/A'
    };

  List<AircraftCarry> get aircraftCarry {
    List<AircraftCarry> aircraftCarry = [];
    if (equipment != null) {
      for (final (index, equip) in equipment!.indexed) {
        if (onSlot == null) {
          return [];
        }
        if ((onSlot?[index] ?? 0) < 1) {
          continue;
        }
        if (equip.isAirCraft) {
          aircraftCarry
              .add(AircraftCarry(aircraft: equip, count: onSlot![index]));
        }
      }
    }
    return aircraftCarry;
  }

  /*
  rebuild from poi javascript function:  getTyku(equipsData, landbaseStatus = 0)
  views/utils/game-utils.es
   */
  AircraftPower aircraftPower({int landbaseStatus = 0}) {
    if (aircraftCarry.isEmpty) {
      return AircraftPower(max: 0, min: 0, basic: 0);
    }
    int minAP = 0;
    int maxAP = 0;
    int basicAP = 0;
    num reconBonus = 1;
    for (final carry in aircraftCarry) {
      num tempAP = 0;
      int tempAlv = carry.aircraft.proficiency ?? 0;

      // 改修：艦戦×0.2、爆戦×0.25
      final levelFactor = carry.aircraft.aa! > 3
          ? (carry.aircraft.bomber! > 0 ? 0.25 : 0.2)
          : 0;

      if ([6, 7, 45, 47, 57].contains(carry.aircraft.type?[2]) ||
          ([26].contains(carry.aircraft.type?[2]) && carry.aircraft.aa! > 0)) {
        // 艦戦 · 爆戦 · 水上戦闘機 · 陸上攻撃機 · 噴式機
        // 対潜哨戒機 (一式戦 隼II型改(20戦隊) · 一式戦 隼III型改(熟練/20戦隊))
        tempAP += sqrt(carry.count) *
            (carry.aircraft.aa! + (carry.aircraft.level ?? 0) * levelFactor);
        tempAP += aircraftLevelBonus[carry.aircraft.type?[2]]?[tempAlv] ?? 0;
        basicAP += (sqrt(carry.count) * carry.aircraft.aa!).truncate();
        minAP += (tempAP + sqrt(aircraftExpTable[tempAlv] / 10)).truncate();
        maxAP += (tempAP + sqrt((aircraftExpTable[tempAlv + 1] - 1) / 10))
            .truncate();
      } else if ([8, 11].contains(carry.aircraft.type?[2])) {
        // 艦攻 · 水上爆撃機
        tempAP += sqrt(carry.count) * carry.aircraft.aa!;
        tempAP += aircraftLevelBonus[carry.aircraft.type?[2]]?[tempAlv] ?? 0;
        basicAP += (sqrt(carry.count) * carry.aircraft.aa!).truncate();
        minAP += (tempAP + sqrt(aircraftExpTable[tempAlv] / 10)).truncate();
        maxAP += (tempAP + sqrt((aircraftExpTable[tempAlv + 1] - 1) / 10))
            .truncate();
      } else if ([48].contains(carry.aircraft.type?[2])) {
        // 局戦 · 陸戦
        num landbaseBonus = 0;
        if (landbaseStatus == 1) {
          landbaseBonus = 1.5 * carry.aircraft.evasion!; // (対空 ＋ 迎撃 × 1.5)
        }
        if (landbaseStatus == 2) {
          landbaseBonus = carry.aircraft.evasion! +
              2 * carry.aircraft.hit!; // (対空 ＋ 迎撃 ＋ 対爆 × 2)
        }
        tempAP += sqrt(carry.count) *
            (carry.aircraft.aa! +
                landbaseBonus +
                (carry.aircraft.level ?? 0) * levelFactor);
        tempAP += aircraftLevelBonus[carry.aircraft.type?[2]]?[tempAlv] ?? 0;
        basicAP += (sqrt(carry.count) * carry.aircraft.aa!).truncate();
        minAP += (tempAP + sqrt(aircraftExpTable[tempAlv] / 10)).truncate();
        maxAP +=
            (tempAP + sqrt((aircraftExpTable[tempAlv] + 1) / 10)).truncate();
      } else if ([10, 41].contains(carry.aircraft.type?[2])) {
        // 水偵・飛行艇
        if (landbaseStatus == 2) {
          if (carry.aircraft.los! >= 9) {
            reconBonus = max(reconBonus, 1.16);
          } else if (carry.aircraft.los! == 8) {
            reconBonus = max(reconBonus, 1.13);
          } else {
            reconBonus = max(reconBonus, 1.1);
          }
        } else if (landbaseStatus == 1) {
          tempAP += sqrt(carry.count) * carry.aircraft.aa!;
          minAP += (tempAP + sqrt(aircraftExpTable[tempAlv] / 10)).truncate();
          maxAP +=
              (tempAP + sqrt((aircraftExpTable[tempAlv] + 1) / 10)).truncate();
        }
      } else if ([9].contains(carry.aircraft.type?[2]) && landbaseStatus == 2) {
        // 艦偵
        if (carry.aircraft.los! >= 9) {
          reconBonus = max(reconBonus, 1.3);
        } else {
          reconBonus = max(reconBonus, 1.2);
        }
      } else if ([49].contains(carry.aircraft.type?[2])) {
        // 陸上偵察機
        if (landbaseStatus == 1) {
          tempAP += sqrt(carry.count) *
              (carry.aircraft.aa! + (carry.aircraft.level ?? 0) * levelFactor);
          basicAP += (sqrt(carry.count) * carry.aircraft.aa!).truncate();
          minAP += (tempAP + sqrt(aircraftExpTable[tempAlv] / 10)).truncate();
          maxAP +=
              (tempAP + sqrt((aircraftExpTable[tempAlv] + 1) / 10)).truncate();
          if (carry.aircraft.los! >= 9) {
            reconBonus = max(reconBonus, 1.18);
          } else {
            reconBonus = max(reconBonus, 1.15);
          }
        } else if (landbaseStatus == 2) {
          if (carry.aircraft.los! >= 9) {
            reconBonus = max(reconBonus, 1.23);
          } else {
            reconBonus = max(reconBonus, 1.18);
          }
        }
      }
    }
    return AircraftPower(
      basic: (basicAP * reconBonus).truncate(),
      min: (minAP * reconBonus).truncate(),
      max: (maxAP * reconBonus).truncate(),
    );
  }

  num get losShip {
    num count = scout?[0] ?? 0;
    final allEquipment = [...equipment ?? [], ...exEquipment ?? []];
    for (final equip in allEquipment) {
      if (equip.los != null) {
        count -= equip.los!;
      }
    }
    return count;
  }

  num get losEquip {
    num count = 0;
    final allEquipment = [...equipment ?? [], ...exEquipment ?? []];
    for (final equip in allEquipment) {
      count += switch (equip.type?[2]) {
        8 => equip.los! * 0.8,
        9 => equip.los! * 1.0,
        10 => (equip.los! + 1.2 * sqrt(equip.level ?? 0)) * 1.2,
        11 => (equip.los! + 1.15 * sqrt(equip.level ?? 0)) * 1.1,
        12 => (equip.los! + 1.25 * sqrt(equip.level ?? 0)) * 0.6,
        13 => (equip.los! + 1.25 * sqrt(equip.level ?? 0)) * 0.6,
        _ => equip.los ?? 0 * 0.6
      };
    }

    return count;
  }

  factory Ship.enemy({
    required int id,
    required int level,
    required dynamic nowHP,
    required dynamic maxHP,
  }) {
    if (nowHP is int && maxHP is int) {
      return Ship(
        uid: -1,
        shipId: id,
        level: level,
        nowHP: nowHP,
        maxHP: maxHP,
      );
    }
    return Ship(
      uid: -1,
      shipId: id,
      level: level,
      nowHP: 0,
      maxHP: 0,
      hpStatus: "$nowHP",
    );
  }

  factory Ship.fromApi(ShipData data, String shipName,
      {List<int>? afterIds,
      int? upgradeLevel,
      int? shipType,
      Map<int, Equipment>? equipment}) {
    List<Equipment> equips = [];
    List<Equipment> equipsEx = [];
    if (equipment != null) {
      for (final eid in data.apiSlot) {
        if (eid == -1) continue;
        if (equipment[eid] != null) {
          equips.add(equipment[eid]!);
        }
      }
      if (data.apiSlotEx != -1 && data.apiSlotEx != 0) {
        if (equipment[data.apiSlotEx] != null) {
          equipsEx.add(equipment[data.apiSlotEx]!);
        }
      }
    }
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
      attackRange: data.apiLeng,
      fuel: data.apiFuel,
      bull: data.apiBull,
      slot: data.apiSlot,
      slotEx: data.apiSlotEx,
      onSlot: data.apiOnslot,
      afterIds: afterIds,
      upgradeLevel: upgradeLevel,
      shipType: shipType,
      equipment: equips,
      exEquipment: equipsEx,
      sallyArea: data.apiSallyArea,
    );
  }
}

class AircraftCarry {
  late final Equipment aircraft;
  late final int count;

  AircraftCarry({required this.aircraft, required this.count});
}

class AircraftPower {
  late final int basic;
  late final int min;
  late final int max;

  AircraftPower({required this.basic, required this.min, required this.max});

  String get text => max == min ? "$min" : "$min~$max";
}
