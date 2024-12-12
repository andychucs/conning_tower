import 'package:conning_tower/models/feature/kancolle/ship.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_result.freezed.dart';
part 'battle_result.g.dart';

@unfreezed
class BattleResult with _$BattleResult {
  factory BattleResult({
    String? actual,
    String? expected,
    String? dropShipName,
    int? dropItemId,
    String? dropItemName,
    required int ourBattleScore,
    required int enemyBattleScore,
    int? ourHPTotal,
    int? enemyHPTotal,
  }) = _BattleResult;

  const BattleResult._();

  void parseExpected(List<Ship> ourShips, List<Ship> enemyShips, List<Squad> enemySquads, Map<int, int> hpChangeMap,) {
    try {
      final enemyFlagShipSunken = enemySquads.first.ships.first.sunken;
      ourBattleScore = enemyShips.fold(ourBattleScore, (t, e) => t + (hpChangeMap[e.hashCode] ?? 0));
      enemyBattleScore = ourShips.fold(enemyBattleScore, (t, e) => t + (hpChangeMap[e.hashCode] ?? 0));
      expected = resultSimulate(
          ourShips, enemyShips, ourHPTotal!, enemyHPTotal!, enemyFlagShipSunken);
    } catch (e) {
      expected = null;
    }
  }

  String? resultSimulate(List<Ship> ourShips, List<Ship> enemyShips,
      int ourHPTotal, int enemyHPTotal, bool enemyFlagShipSunken) {
    bool ourSunken = ourShips.any((ship) => ship.sunken);
    // enemy all sunken
    if (enemyShips.every((ship) => ship.sunken)) {
      if (enemyBattleScore == 0 && !ourSunken) {
        // our damage taken is 0, return SS
        return "SS";
      } else if (ourSunken) {
        // our ship sunken
        return "B";
      } else {
        // our ship not sunken
        return "S";
      }
    }

    if (ourBattleScore == 0 && enemyBattleScore == 0) {
      return "D";
    }

    final enemyNumber = enemyShips.length;
    final enemySunkenNumber = enemyShips.where((ship) => ship.sunken).length;
    final ourSunkenNumber = ourShips.where((ship) => ship.sunken).length;
    if (!ourSunken) {
      if (ourBattleScore == 0 && enemyBattleScore > ourHPTotal * 0.75) {
        return "E";
      }

      if (ourBattleScore < enemyHPTotal * 0.05) {
        return "D";
      }

      // enemy sunken more than 2/3. return A
      if (enemySunkenNumber >= (enemyNumber * 2 / 3).truncate() &&
          enemySunkenNumber > 0) {
        return "A";
      }

      // enemy flag ship sunken
      if (enemyFlagShipSunken) {
        return "B";
      }

      if (ourSunkenNumber >= ourShips.length / 2) {
        return "E";
      }

      if (ourBattleScore < enemyHPTotal * 0.5) {
        return "D";
      }

      if (ourBattleScore >= enemyBattleScore * 2.5) {
        return "B";
      } else {
        if (ourBattleScore >= enemyBattleScore ||
            ourBattleScore >= enemyHPTotal * 0.5) {
          return "C";
        }
      }

      if (ourBattleScore >= enemyBattleScore) {
        return "C";
      } else {
        return "D";
      }
    } else {
      if (!enemyFlagShipSunken) {
        if (ourBattleScore >= enemyBattleScore * 2.5) {
          if (enemySunkenNumber >= (enemyNumber * 2 / 3).truncate() &&
              enemySunkenNumber > 0) {
            if (enemyBattleScore > ourBattleScore &&
                enemyBattleScore < ourBattleScore * 2.5) {
              return "C";
            }
            return "B";
          } else if (ourBattleScore > enemyBattleScore * 3) {
            return "B";
          } else {
            return "C";
          }
        } else if (ourBattleScore >= enemyBattleScore) {
          return "C";
        }
        return "D";
      } else {
        if (ourSunkenNumber < enemySunkenNumber) {
          return "B";
        }
        return "C";
      }
    }
    return null;
  }

  factory BattleResult.fromJson(Map<String, dynamic> json) =>
      _$BattleResultFromJson(json);
}
