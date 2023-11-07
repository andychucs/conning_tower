import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/battle_data.dart';
import 'package:conning_tower/models/data/kcsapi/req/sortie/sortie.dart';
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
    String? enemyName,
    int? mvp,
    List<Squad>? enemySquads,
    List<Squad>? inBattleSquads,
    Map<int, int>? damageMap,
    Map<int, int>? attackMap,
  }) = _BattleInfo;

  List<Ship> get allShips => inBattleSquads!
      .expand((squad) => squad.ships)
      .followedBy(enemySquads!.expand((squad) => squad.ships))
      .toList();

  void resetInfo() {
    result = null;
    dropName = null;
    enemyName = null;
    mvp = null;
    enemySquads?.clear();
    damageMap?.clear();
    attackMap?.clear();
  }

  void parseReqSortieBattleResult(ReqSortieBattleResultApiDataEntity data) {
    result = data.apiWinRank;
    dropName = data.apiGetShip?.apiShipName;
    enemyName = data.apiEnemyInfo.apiDeckName;
    mvp = data.apiMvp;
  }

  void parseReqSortieBattle(ReqSortieBattleApiDataEntity data, Squad squad) {
    initSingleEnemySquads(data);

    inBattleSquads = [squad];

    initDamageAndAttackMap();

    /*
    TODO: api_air_base_injection, api_injection_kouku, api_air_base_attack,
     api_friendly_battle, api_friendly_kouku, api_kouku, api_support_info,
     api_opening_taisen, api_opening_atack
    */

    for (final (index, flag) in data.apiHouraiFlag.indexed) {
      if (flag == 1) {
        if (index >= 0 && index <= 2) {
          gunFireRoundSingleVsSingle(getGunFireData(data, index));
        } else if (index == 3) {
          torpedoFireRoundSingleVsSingle();
        } else {
          log("unhandled hourai flag");
        }
      }
    }

    updateShipHP();
  }

  void updateShipHP() {
    if (damageMap != null) {
      final shipsMap = {for (Ship ship in allShips) ship.hashCode: ship};

      damageMap?.forEach((shipHash, damage) {
        if (damage != 0) {
          shipsMap[shipHash]?.onHPChange(damage);
        }
      });
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

  void initSingleEnemySquads(ReqSortieBattleApiDataEntity data) {
    enemySquads = [
      Squad.fromSingleEnemy(
          data.apiShipKe, data.apiShipLv, data.apiEMaxhps, data.apiENowhps)
    ];
  }

  void initDamageAndAttackMap() {
    damageMap = {for (var ship in allShips) ship.hashCode: 0};
    attackMap = {for (var ship in allShips) ship.hashCode: 0};
  }

  void torpedoFireRoundSingleVsSingle() {
    //TODO: api_raigeki
  }

  void gunFireRoundSingleVsSingle(GunFireRound attackData) {
    for (final (index, flag) in attackData.apiAtEflag.indexed) {
      if (flag != 1 && flag != 0) {
        log("unhandled active flag");
        continue;
      }
      final actIndex = attackData.apiAtList[index];

      final actSquads = flag == 0 ? inBattleSquads! : enemySquads!;
      final defSquads = flag == 1 ? inBattleSquads! : enemySquads!;

      final damages = attackData.apiDamage[index];
      final defList = attackData.apiDfList[index];

      for (final (index, damage) in damages.indexed) {
        final defIndex = defList[index];
        final defShipHash = defSquads[0].ships[defIndex].hashCode;
        final actShipHash = actSquads[0].ships[actIndex].hashCode;
        damageMap![defShipHash] = damageMap![defShipHash]! - damage.truncate();
        attackMap![actShipHash] = attackMap![actShipHash]! + damage.truncate();
      }
    }
  }
}
