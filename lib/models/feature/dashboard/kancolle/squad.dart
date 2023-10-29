import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'squad.freezed.dart';

@unfreezed
class Squad with _$Squad {
  factory Squad({
    required int id,
    required String name,
    int? operation,
    required List<Ship> ships,
  }) = _Squad;

  factory Squad.fromSingleEnemy(List<int> enemyId, List<int> enemyLv, List<int> enemyMaxHP, List<int> enemyNowHP) {
    assert(enemyId.length == enemyLv.length && enemyLv.length == enemyMaxHP.length && enemyMaxHP.length == enemyNowHP.length, 'length not equal');
    List<Ship> ships = [];
    for (var i = 0; i < enemyId.length; i++) {
      var id = enemyId[i];
      var level = enemyLv[i];
      var nowHP = enemyNowHP[i];
      var maxHP = enemyMaxHP[i];
      ships.add(Ship(uid: -1, shipId: id, level: level, nowHP: nowHP, maxHP: maxHP));
    }
    return Squad(id: 1, name: '', ships: ships);
  }

}