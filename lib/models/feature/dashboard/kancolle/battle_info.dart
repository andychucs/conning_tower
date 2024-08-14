import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_info.freezed.dart';

const kSecondSquadIndexStart = 6;

@unfreezed
class BattleInfo with _$BattleInfo {
  factory BattleInfo({
    String? result,
    String? dropName,
    int? mvp,
    int? dropItemId,
    String? dropItemName,
    List<Squad>? enemySquads,
    List<Squad>? inBattleSquads,
    Map<int, int>? dmgTakenMap,
    Map<int, int>? dmgMap,
    int? airSuperiorityFlag,
    int? formation,
    int? eFormation,
    int? contact,
    MapInfo? mapInfo,
    int? mapRoute,
  }) = _BattleInfo;

  const BattleInfo._();

  String get airSuperiority {
    switch (airSuperiorityFlag) {
      case 0:
        return '制空均衡';
      case 1:
        return '制空権確保';
      case 2:
        return '航空優勢';
      case 3:
        return '航空劣勢';
      case 4:
        return '制空権喪失';
      default:
        return '';
    }
  }

  List<Ship> get allShips => inBattleSquads!
      .expand((squad) => squad.ships)
      .followedBy(enemySquads!.expand((squad) => squad.ships))
      .toList();

  String get contactStatus {
    switch (contact) {
      case 1:
        return "同航戦";
      case 2:
        return "反航戦";
      case 3:
        return "T字有利";
      case 4:
        return "T字不利";
      default:
        return "";
    }
  }

  String get enemyFormation {
    return _getFormation(eFormation ?? 0);
  }

  String get ourFormation {
    return _getFormation(formation ?? 0);
  }

  void airBaseAttackRound(AirBaseAttackRound? data) {
    if (data == null) return;
    if (data.apiStageFlag == null) return;
    for (final (index, flag) in data.apiStageFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            if (data.apiStage3Combined != null) {
              airBaseDamageCount(data.apiStage3?.apiEdam, data.apiStage3Combined?.apiEdam);
            } else {
              airBaseDamageCount(data.apiStage3?.apiEdam, null);
            }
        }
      }
    }
  }

  void airBaseDamageCount(List<num?>? enemyDamageList, List<num?>? enemyCombinedDamageList) {
    if (enemyDamageList != null) {
      for (final (index, damage) in enemyDamageList.indexed) {
        calculateDamageTaken(getEShip1(index).hashCode, damage!);
      }
    }
    if (enemyCombinedDamageList != null) {
      for (final (index, damage) in enemyCombinedDamageList.indexed) {
        calculateDamageTaken(getEShip2(index).hashCode, damage!);
      }
    }
  }

  void aircraftRound(List<int> airStageFlag, AircraftRound airBattle) {
    for (final (index, flag) in airStageFlag.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            airSuperiorityFlag = airBattle.apiStage1?.apiDispSeiku;
            break;
          case 1:
            log("stage2");
            break;
          case 2:
            aircraftRoundDamageCount(airBattle);
        }
      }
    }
  }

  void aircraftRoundDamageCount(AircraftRound airBattle) {
    if (airBattle.apiStage3?.apiFdam != null) {
      for (final (index, damage) in airBattle.apiStage3!.apiFdam!.indexed) {
        calculateDamageTaken(getOShip1(index).hashCode, damage!);
      }
    }
    if (airBattle.apiStage3?.apiEdam != null) {
      for (final (index, damage) in airBattle.apiStage3!.apiEdam!.indexed) {
        calculateDamageTaken(getEShip1(index).hashCode, damage!);
      }
    }
    if (airBattle is AircraftRoundDoubleEnemy) {
      if (airBattle.apiStage3Combined?.apiFdam != null) {
        for (final (index, damage)
            in airBattle.apiStage3Combined!.apiFdam!.indexed) {
          calculateDamageTaken(getOShip2(index).hashCode, damage!);
        }
      }
      if (airBattle.apiStage3Combined?.apiEdam != null) {
        for (final (index, damage)
            in airBattle.apiStage3Combined!.apiEdam!.indexed) {
          calculateDamageTaken(getEShip2(index).hashCode, damage!);
        }
      }
    }
  }

  void clear({bool resetMapInfo = false}) {
    result = null;
    dropName = null;
    mvp = null;
    dropItemId = null;
    dropItemName = null;
    airSuperiorityFlag = null;
    formation = null;
    eFormation = null;
    contact = null;
    enemySquads?.clear();
    dmgMap?.clear();
    dmgTakenMap?.clear();
    if (resetMapInfo) {
      mapInfo = null;
      mapRoute = null;
    }
  }

  /// Calculates the damage dealt by a ship during combat.
  void calculateDamageDealt(int actShipHash, num damage) {
    dmgMap![actShipHash] = dmgMap![actShipHash]! + damage.truncate();
  }

  /// Calculates the damage taken by a ship during combat.
  void calculateDamageTaken(int defShipHash, num damage) {
    dmgTakenMap![defShipHash] = dmgTakenMap![defShipHash]! - damage.truncate();
  }

  Ship getEShip1(int index) => enemySquads![0].ships[index];

  Ship getEShip2(int index) => enemySquads![1].ships[index];

  GunFireRound getGunFireData(SingleVsSingleBattleData data, int index) {
    switch (index) {
      case 0:
        return data.apiHougeki1!;
      case 1:
        return data.apiHougeki2!;
      case 2:
        return data.apiHougeki3!;
      default:
        throw Exception("hourai flag out of range");
    }
  }

  Ship getOShip1(int index) => inBattleSquads![0].ships[index];

  Ship getOShip2(int index) => inBattleSquads![1].ships[index];

  Ship getShip(FleetSide side, int index) {
    // 游擊部隊 squad len is 7, index need less than first squad len
    // combine and normal squad len max is 6
    if (side == FleetSide.our) {
      final firstLength = inBattleSquads![0].ships.length;
      if (firstLength > index) return getOShip1(index);
      return getOShip2(index - kSecondSquadIndexStart); // len may be always 6
    } else {
      final firstLength = enemySquads![0].ships.length;
      if (firstLength > index) return getEShip1(index);
      return getEShip2(index - kSecondSquadIndexStart);
    }
  }

  void gunFireRound(GunFireRound data) {
    if (data.apiAtEflag == null) return;
    for (final (index, flag) in data.apiAtEflag!.indexed) {
      if (flag != 1 && flag != 0) {
        log("unhandled active flag");
        continue;
      }
      final actIndex = data.apiAtList![index];

      final actSquads = flag == 0 ? inBattleSquads! : enemySquads!;
      final defSquads = flag == 1 ? inBattleSquads! : enemySquads!;

      final damages = data.apiDamage![index];
      final defList = data.apiDfList![index];

      for (final (index, damage) in damages.indexed) {
        final defIndex = defList[index];
        // "防御艦のインデックス　[][攻撃対象数]　0基点　単発カットイン攻撃では [防御艦, -1, -1] になる" Not Understand this case yet
        if (defIndex == -1) continue;
        late final Ship defShip;
        late final Ship actShip;
        if (defIndex < defSquads[0].ships.length) {
          defShip = defSquads[0].ships[defIndex];
        } else {
          defShip = defSquads[1].ships[defIndex - kSecondSquadIndexStart]; // second squad index start from 6
        }

        if (actIndex < actSquads[0].ships.length) {
          actShip = actSquads[0].ships[actIndex];
        } else {
          actShip = actSquads[1].ships[actIndex - kSecondSquadIndexStart];
        }

        calculateDamageTaken(defShip.hashCode, damage);
        calculateDamageDealt(actShip.hashCode, damage);
      }
    }
  }

  void initDMGMap() {
    dmgTakenMap = {for (var ship in allShips) ship.hashCode: 0};
    dmgMap = {for (var ship in allShips) ship.hashCode: 0};
  }

  void initDoubleEnemySquads(SingleVsDoubleBattleData data) {
    enemySquads = [
      Squad.fromSingleEnemy(
          data.apiShipKe, data.apiShipLv, data.apiEMaxhps, data.apiENowhps),
      Squad.fromSingleEnemy(data.apiShipKeCombined!, data.apiShipLvCombined!,
          data.apiEMaxhpsCombined!, data.apiENowhpsCombined!),
    ];
  }

  void initShipHPSingleSquad(
      {required List<int> fNow, required List<int> fMax}) {
    for (final (index, now) in fNow.indexed) {
      final max = fMax[index];
      final ship = getOShip1(index);
      ship.nowHP = now;
      ship.maxHP = max;
    }
  }

  void initShipHPDoubleSquad(
      {required List<int> fNow,
      required List<int> fMax,
      required List<int> fNow2,
      required List<int> fMax2}) {
    initShipHPSingleSquad(fNow: fNow, fMax: fMax);
    for (final (index, now) in fNow2.indexed) {
      final max = fMax2[index];
      final ship = getOShip2(index);
      ship.nowHP = now;
      ship.maxHP = max;
    }
  }

  void initSingleEnemySquads(SingleVsSingleBaseModel data) {
    enemySquads = [
      Squad.fromSingleEnemy(
          data.apiShipKe, data.apiShipLv, data.apiEMaxhps, data.apiENowhps)
    ];
  }

  void parseCombinedBattleECBattle(ReqCombinedBattleECBattleApiDataEntity data, Squad squad) {
    clear();
    initDoubleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            gunFireRound(data.apiHougeki1!);
            break;
          case 1:
            torpedoFireRound(data.apiRaigeki!);
            break;
          case 2:
            gunFireRound(data.apiHougeki2!);
            break;
          case 3:
            gunFireRound(data.apiHougeki3!);
            break;
          default:
            log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void parsePracticeBattle(ReqPracticeBattleApiDataEntity data, Squad squad) {
    clear(resetMapInfo: true);
    initSingleEnemySquads(data);

    inBattleSquads = [Squad.fromJson(squad.toJson())]; // deep copy

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    //api_kouku
    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag.indexed) {
      if (flag == 1) {
        if (index >= 0 && index <= 2) {
          gunFireRound(getGunFireData(data, index));
        } else if (index == 3) {
          torpedoFireRound(data.apiRaigeki!);
        } else {
          log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void parsePracticeMidnightBattle(
      ReqPracticeMidnightBattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [Squad.fromJson(squad.toJson())]; // deep copy

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    gunFireRound(data.apiHougeki!);

    updateShipHP();
  }

  void parseReqBattleMidnightBattle(
      ReqBattleMidnightBattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    gunFireRound(data.apiHougeki!);

    updateShipHP();
  }

  void parseReqBattleMidnightSpMidnight(
      ReqBattleMidnightSpMidnightDataApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    gunFireRound(data.apiHougeki!);

    updateShipHP();
  }

  void parseReqCombinedBattleResultEntity(ReqCombinedBattleResultApiDataEntity data) {
    result = data.apiWinRank;
    dropName = data.apiGetShip?.apiShipName;
    if (enemySquads != null) {
      for (var squad in enemySquads!) {
        if (data.apiEnemyInfo != null) {
          squad.name = data.apiEnemyInfo?.apiDeckName ?? '敵艦隊';
        }
      }
    }
    mvp = data.apiMvp;
    if (data.apiGetExmapUseitemId != null &&
        data.apiGetExmapUseitemId != 0 &&
        data.apiGetExmapUseitemId != '') {
      if (data.apiGetExmapUseitemId is int) {
        dropItemId = data.apiGetExmapUseitemId;
      }
      if (data.apiGetExmapUseitemId is String) {
        try {
          dropItemId = int.parse(data.apiGetExmapUseitemId);
        } catch (e) {
          dropItemId = null;
        }
      }
    }
  }

  void parseReqSortieBattle(ReqSortieBattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    /*
    TODO: api_friendly_battle, api_friendly_kouku, api_support_info
    */

    //api_air_base_injection
    if (data.apiAirBaseInjection != null) {
      assert(data.apiAirBaseInjection?.apiStage3Combined == null);
      airBaseDamageCount(data.apiAirBaseInjection?.apiStage3?.apiEdam, null);
    }

    //api_injection_kouku
    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    //api_air_base_attack
    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    //api_kouku
    aircraftRound(data.apiStageFlag, data.apiKouku);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag.indexed) {
      if (flag == 1) {
        if (index >= 0 && index <= 2) {
          gunFireRound(getGunFireData(data, index));
        } else if (index == 3) {
          torpedoFireRound(data.apiRaigeki!);
        } else {
          log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void parseReqSortieBattleResult(ReqSortieBattleResultApiDataEntity data) {
    result = data.apiWinRank;
    dropName = data.apiGetShip?.apiShipName;
    if (enemySquads != null) {
      for (var squad in enemySquads!) {
        squad.name = data.apiEnemyInfo.apiDeckName;
      }
    }
    mvp = data.apiMvp;
    var item = data.apiGetUseitem;
    if (item != null) {
      dropItemId = item.apiUseitemId;
      if (item.apiUseitemName != '') {
        dropItemName = item.apiUseitemName;
      }
    } else if (data.apiGetExmapUseitemId != null &&
        data.apiGetExmapUseitemId != 0 &&
        data.apiGetExmapUseitemId != '') {
      // only record one of apiGetExmapUseitemId and apiGetExmapUseitemName now
      if (data.apiGetExmapUseitemId is int) {
        dropItemId = data.apiGetExmapUseitemId;
      }
      if (data.apiGetExmapUseitemId is String) {
        try {
          dropItemId = int.parse(data.apiGetExmapUseitemId);
        } catch (e) {
          dropItemId = null;
        }
      }
    }
  }

  void parseSortieLdAirbattle(ReqSortieLdAirbattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    //api_kouku
    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    updateShipHP();
  }

  void parseReqCombinedBattleLdAirbattle(ReqCombinedBattleLdAirbattleApiDataEntity data, List<Squad> squads) {
    clear();

    initSingleEnemySquads(data);

    inBattleSquads = [...squads];

    initDMGMap();

    initShipHPDoubleSquad(
        fNow: data.apiFNowhps,
        fMax: data.apiFMaxhps,
        fNow2: data.apiFNowhpsCombined!,
        fMax2: data.apiFMaxhpsCombined!);

    setFormation(data.apiFormation);

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    updateShipHP();
  }

  void setFormation(List<int> apiFormation) {
    formation = apiFormation[0];
    eFormation = apiFormation[1];
    contact = apiFormation[2];
  }

  void torpedoFireRoundWithItem(
      OpeningTorpedoRoundEntity data) {
    for (final (actIndex, defIndexList) in data.apiFraiListItems.indexed) {
      if (defIndexList != null) {
        final Ship actShip = getShip(FleetSide.our, actIndex);
        final actShipHash = actShip.hashCode;
        final dmgList = data.apiFydamListItems[actIndex];
        assert(dmgList?.length == defIndexList.length,
            "Opening torpedo calc error, data not match: $dmgList & $defIndexList");
        for (final (itemIndex, defIndex) in defIndexList.indexed) {
          if (defIndex > -1) {
            final Ship defShip = getShip(FleetSide.enemy, defIndex);
            final defShipHash = defShip.hashCode;
            final dmg = dmgList![itemIndex];
            calculateDamageDealt(actShipHash, dmg);
            calculateDamageTaken(defShipHash, dmg);
          }
        }
      }
    }
    for (final (actIndex, defIndexList) in data.apiEraiListItems.indexed) {
      if (defIndexList != null) {
        final Ship actShip = getShip(FleetSide.enemy, actIndex);
        final actShipHash = actShip.hashCode;
        final dmgList = data.apiEydamListItems[actIndex];
        assert(dmgList?.length == defIndexList.length,
            "Opening torpedo calc error, data not match: $dmgList & $defIndexList");
        for (final (itemIndex, defIndex) in defIndexList.indexed) {
          if (defIndex > -1) {
            final Ship defShip = getShip(FleetSide.our, defIndex);
            final defShipHash = defShip.hashCode;
            final dmg = dmgList![itemIndex];
            calculateDamageDealt(actShipHash, dmg);
            calculateDamageTaken(defShipHash, dmg);
          }
        }
      }
    }
  }

  void torpedoFireRound(
      TorpedoRoundEntity data) {
    for (final (actIndex, defIndex) in data.apiFrai.indexed) {
      if (defIndex != -1) {
        final Ship actShip = getShip(FleetSide.our, actIndex);
        final Ship defShip = getShip(FleetSide.enemy, defIndex);
        final actShipHash = actShip.hashCode;
        final defShipHash = defShip.hashCode;
        calculateDamageDealt(actShipHash, data.apiFydam[actIndex]);
        calculateDamageTaken(defShipHash, data.apiFydam[actIndex]);
      }
    }
    for (final (actIndex, defIndex) in data.apiErai.indexed) {
      if (defIndex != -1) {
        final Ship actShip = getShip(FleetSide.enemy, actIndex);
        final Ship defShip = getShip(FleetSide.our, defIndex);
        final actShipHash = actShip.hashCode;
        final defShipHash = defShip.hashCode;
        calculateDamageDealt(actShipHash, data.apiEydam[actIndex]);
        calculateDamageTaken(defShipHash, data.apiEydam[actIndex]);
      }
    }
  }

  void updateShipHP() {
    if (dmgTakenMap != null) {
      final shipsMap = {for (Ship ship in allShips) ship.hashCode: ship};

      dmgTakenMap?.forEach((shipHash, damage) {
        if (damage != 0) {
          shipsMap[shipHash]?.onHPChange(damage);
        }
      });
    }
  }

  String _getFormation(int flag) {
    String formation;

    switch (flag) {
      case 1:
        formation = "単縦陣";
        break;
      case 2:
        formation = "複縦陣";
        break;
      case 3:
        formation = "輪形陣";
        break;
      case 4:
        formation = "梯形陣";
        break;
      case 5:
        formation = "単横陣";
        break;
      case 6:
        formation = "警戒陣";
        break;
      case 11:
        formation = "第1警戒航行序列";
        break;
      case 12:
        formation = "第2警戒航行序列";
        break;
      case 13:
        formation = "第3警戒航行序列";
        break;
      case 14:
        formation = "第4警戒航行序列";
        break;
      default:
        formation = "";
    }

    return formation;
  }

  void parseReqSortieAirbattle(ReqSortieAirbattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);

    setFormation(data.apiFormation);

    //api_kouku
    if (data.apiStageFlag != null) {
      aircraftRound(data.apiStageFlag!, data.apiKouku!);
    }

    //api_kouku2
    if (data.apiStageFlag2 != null) {
      aircraftRound(data.apiStageFlag2!, data.apiKouku2!);
    }

    updateShipHP();
  }

  void parseReqCombinedBattleECMidnightBattle(ReqCombinedBattleEcMidnightBattleApiDataEntity data, List<Squad> squads) {
    clear();
    initDoubleEnemySquads(data);

    if (data.apiFNowhpsCombined == null) {
      inBattleSquads = [squads[data.apiDeckId - 1]];
      initShipHPSingleSquad(fNow: data.apiFNowhps, fMax: data.apiFMaxhps);
    } else {
      inBattleSquads = [squads[0], squads[1]];
      initShipHPDoubleSquad(
          fNow: data.apiFNowhps,
          fMax: data.apiFMaxhps,
          fNow2: data.apiFNowhpsCombined!,
          fMax2: data.apiFMaxhpsCombined!);
    }

    initDMGMap();

    setFormation(data.apiFormation);

    if (data.apiHougeki != null) {
      gunFireRound(data.apiHougeki!);
    }
    updateShipHP();
  }

  void parseReqCombinedBattle(ReqCombinedBattleApiDataEntity data, List<Squad> squads) {
    clear();

    initSingleEnemySquads(data);

    inBattleSquads = [...squads];

    initDMGMap();

    initShipHPDoubleSquad(
        fNow: data.apiFNowhps,
        fMax: data.apiFMaxhps,
        fNow2: data.apiFNowhpsCombined!,
        fMax2: data.apiFMaxhpsCombined!);

    setFormation(data.apiFormation);

    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            gunFireRound(data.apiHougeki1!);
            break;
          case 1:
            torpedoFireRound(data.apiRaigeki!);
            break;
          case 2:
            gunFireRound(data.apiHougeki2!);
            break;
          case 3:
            gunFireRound(data.apiHougeki3!);
            break;
          default:
            log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void parseReqCombinedBattleEachBattle(ReqCombinedBattleEachBattleApiDataEntity data, List<Squad> squads) {
    clear();

    initDoubleEnemySquads(data);

    inBattleSquads = [...squads];
    initShipHPDoubleSquad(
        fNow: data.apiFNowhps,
        fMax: data.apiFMaxhps,
        fNow2: data.apiFNowhpsCombined!,
        fMax2: data.apiFMaxhpsCombined!);

    initDMGMap();

    setFormation(data.apiFormation);

    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            gunFireRound(data.apiHougeki1!);
            break;
          case 1:
            gunFireRound(data.apiHougeki2!);
            break;
          case 2:
            torpedoFireRound(data.apiRaigeki!);
            break;
          case 3:
            gunFireRound(data.apiHougeki3!);
            break;
          default:
            log("unhandled hourai flag");
        }
      }
    }
    updateShipHP();
  }

  void parseReqCombinedBattleWater(ReqCombinedBattleWaterApiDataEntity data, List<Squad> squads) {
    clear();

    initSingleEnemySquads(data);

    inBattleSquads = [...squads];

    initShipHPDoubleSquad(
        fNow: data.apiFNowhps,
        fMax: data.apiFMaxhps,
        fNow2: data.apiFNowhpsCombined!,
        fMax2: data.apiFMaxhpsCombined!);

    initDMGMap();

    setFormation(data.apiFormation);

    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            gunFireRound(data.apiHougeki1!);
            break;
          case 1:
            gunFireRound(data.apiHougeki2!);
            break;
          case 2:
            gunFireRound(data.apiHougeki3!);
            break;
          case 3:
            torpedoFireRound(data.apiRaigeki!);
            break;
          default:
            log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void parseReqCombinedBattleEachWater(ReqCombinedBattleEachWaterApiDataEntity data, List<Squad> squads) {
    clear();
    initDoubleEnemySquads(data);
    inBattleSquads = [...squads];
    initShipHPDoubleSquad(
        fNow: data.apiFNowhps,
        fMax: data.apiFMaxhps,
        fNow2: data.apiFNowhpsCombined!,
        fMax2: data.apiFMaxhpsCombined!);
    initDMGMap();
    setFormation(data.apiFormation);

    if (data.apiAirBaseAttack != null) {
      for (final airBaseAttack in data.apiAirBaseAttack!) {
        airBaseAttackRound(airBaseAttack);
      }
    }

    if (data.apiInjectionKouku != null) {
      aircraftRoundDamageCount(data.apiInjectionKouku!);
    }

    aircraftRound(data.apiStageFlag!, data.apiKouku!);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRound(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundWithItem(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag!.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            gunFireRound(data.apiHougeki1!);
            break;
          case 1:
            gunFireRound(data.apiHougeki2!);
            break;
          case 2:
            gunFireRound(data.apiHougeki3!);
            break;
          case 3:
            torpedoFireRound(data.apiRaigeki!);
            break;
          default:
            log("unhandled hourai flag");
        }
      }
    }
    updateShipHP();
  }
}

enum FleetSide { our, enemy }
