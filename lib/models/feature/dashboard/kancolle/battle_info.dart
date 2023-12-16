import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/battle_data.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/map_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_info.freezed.dart';

@unfreezed
class BattleInfo with _$BattleInfo {
  const BattleInfo._();

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

  List<Ship> get allShips => inBattleSquads!
      .expand((squad) => squad.ships)
      .followedBy(enemySquads!.expand((squad) => squad.ships))
      .toList();

  void clear() {
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
  }

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

  String get ourFormation {
    return _getFormation(formation ?? 0);
  }

  String get enemyFormation {
    return _getFormation(eFormation ?? 0);
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
      default:
        formation = "";
    }

    return formation;
  }

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
        return 'N/A';
    }
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
    }
  }

  void parseReqSortieBattle(ReqSortieBattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleVsSingle(
        data.apiFNowhps, data.apiFMaxhps, data.apiENowhps, data.apiEMaxhps);

    setFormation(data.apiFormation);

    /*
    TODO: api_air_base_injection, api_injection_kouku, api_air_base_attack,
     api_friendly_battle, api_friendly_kouku, api_support_info
    */
    //api_kouku
    aircraftRound1_1(data.apiStageFlag, data.apiKouku);

    //api_opening_taisen
    if (data.apiOpeningTaisenFlag == 1) {
      gunFireRoundSingleVsSingle(data.apiOpeningTaisen!);
    }

    //api_opening_atack
    if (data.apiOpeningFlag == 1) {
      torpedoFireRoundSingleVsSingle(data.apiOpeningAtack!);
    }

    for (final (index, flag) in data.apiHouraiFlag.indexed) {
      if (flag == 1) {
        if (index >= 0 && index <= 2) {
          gunFireRoundSingleVsSingle(getGunFireData(data, index));
        } else if (index == 3) {
          torpedoFireRoundSingleVsSingle(data.apiRaigeki!);
        } else {
          log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void setFormation(List<int> apiFormation) {
    formation = apiFormation[0];
    eFormation = apiFormation[1];
    contact = apiFormation[2];
  }

  void aircraftRound1_1(List<int> airStageFlag, ReqSortieBattleApiDataApiKoukuEntity airBattle) {
    for (final (index, flag) in airStageFlag.indexed) {
      if (flag == 1) {
        switch (index) {
          case 0:
            airSuperiorityFlag = airBattle.apiStage1.apiDispSeiku;
            break;
          case 1:
            log("stage2");
            break;
          case 2:
            for (final (index, damage) in airBattle.apiStage3!.apiFdam.indexed) {
              dmgTake(getOShip1_1(index).hashCode, damage);
            }
            for (final (index, damage) in airBattle.apiStage3!.apiEdam.indexed) {
              dmgTake(getEShip1_1(index).hashCode, damage);
            }
        }
      }
    }
  }

  Ship getEShip1_1(int index) => enemySquads![0].ships[index];

  Ship getOShip1_1(int index) => inBattleSquads![0].ships[index];

  void parseReqBattleMidnightBattle(
      ReqBattleMidnightBattleApiDataEntity data, Squad squad) {
    clear();
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDMGMap();

    initShipHPSingleVsSingle(
        data.apiFNowhps, data.apiFMaxhps, data.apiENowhps, data.apiEMaxhps);

    setFormation(data.apiFormation);

    gunFireRoundSingleVsSingle(data.apiHougeki!);

    updateShipHP();
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

  void initShipHPSingleVsSingle(
      List<int> fNow, List<int> fMax, List<int> eNow, List<int> eMax) {
    for (final (index, now) in fNow.indexed) {
      final max = fMax[index];
      final ship = getOShip1_1(index);
      ship.nowHP = now;
      ship.maxHP = max;
    }
    for (final (index, now) in eNow.indexed) {
      final max = eMax[index];
      final ship = getEShip1_1(index);
      ship.nowHP = now;
      ship.maxHP = max;
    }
  }

  GunFireRound getGunFireData(ReqSortieBattleApiDataEntity data, int index) {
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

  void initSingleEnemySquads(SingleVsSingleBaseModel data) {
    enemySquads = [
      Squad.fromSingleEnemy(
          data.apiShipKe, data.apiShipLv, data.apiEMaxhps, data.apiENowhps)
    ];
  }

  void initDMGMap() {
    dmgTakenMap = {for (var ship in allShips) ship.hashCode: 0};
    dmgMap = {for (var ship in allShips) ship.hashCode: 0};
  }

  void torpedoFireRoundSingleVsSingle(
      ReqSortieBattleApiDataApiRaigekiEntity data) {
    for (final (index, eIndex) in data.apiFrai.indexed) {
      if (eIndex != -1) {
        final actShipHash = getOShip1_1(index).hashCode;
        final defShipHash = getEShip1_1(eIndex).hashCode;
        dmgCount(actShipHash, data.apiFydam[index]);
        dmgTake(defShipHash, data.apiFydam[index]);
      }

      if (data.apiErai[index] != -1) {
        final actShipHash = getEShip1_1(index).hashCode;
        final defShipHash = getOShip1_1(data.apiErai[index]).hashCode;
        dmgCount(actShipHash, data.apiEydam[index]);
        dmgTake(defShipHash, data.apiEydam[index]);
      }
    }
  }

  void gunFireRoundSingleVsSingle(GunFireRound data) {
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
        final defShipHash = defSquads[0].ships[defIndex].hashCode;
        final actShipHash = actSquads[0].ships[actIndex].hashCode;
        dmgTake(defShipHash, damage);
        dmgCount(actShipHash, damage);
      }
    }
  }

  void dmgTake(int defShipHash, num damage) {
    dmgTakenMap![defShipHash] = dmgTakenMap![defShipHash]! - damage.truncate();
  }

  void dmgCount(int actShipHash, num damage) {
    dmgMap![actShipHash] = dmgMap![actShipHash]! + damage.truncate();
  }
}
