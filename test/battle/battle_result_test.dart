import 'dart:math';
import 'dart:ui';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/kancolle/ship.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {
    S.load(Locale.fromSubtags(languageCode: 'en'));
  });

  group("Battle Result Guess", () {
    // demo data.
    // make ships
    List<Ship> ships = List.generate(50, (index) => Ship(uid: index, shipId: index, level: 1, nowHP: 90, maxHP: 100));

    // init different squads
    final sixShipSquad1 = Squad(ships: ships.sublist(0, 6), id: 1, name: 'sixShipSquad1');
    final sixShipSquad2 = Squad(ships: ships.sublist(6, 12), id: 2, name: 'sixShipSquad2');
    final sixShipSquad3 = Squad(ships: ships.sublist(12, 18), id: 3, name: 'sixShipSquad3');
    final sixShipSquad4 = Squad(ships: ships.sublist(18, 24), id: 4, name: 'sixShipSquad4');
    final oneShipSquad1 = Squad(ships: ships.sublist(25, 26), id: 5, name: 'oneShipSquad1');
    final oneShipSquad2 = Squad(ships: ships.sublist(26, 27), id: 6, name: 'oneShipSquad2');
    final oneShipSquad3 = Squad(ships: ships.sublist(27, 28), id: 7, name: 'oneShipSquad3');
    final oneShipSquad4 = Squad(ships: ships.sublist(28, 29), id: 8, name: 'oneShipSquad4');
    final fiveShipSquad1 = Squad(ships: ships.sublist(29, 34), id: 9, name: 'fiveShipSquad1');
    final fiveShipSquad2 = Squad(ships: ships.sublist(34, 39), id: 10, name: 'fiveShipSquad2');
    final fiveShipSquad3 = Squad(ships: ships.sublist(39, 44), id: 11, name: 'fiveShipSquad3');
    final fiveShipSquad4 = Squad(ships: ships.sublist(44, 49), id: 12, name: 'fiveShipSquad4');


    test("Case 1 - SS Victory", () {
      final ourSquads = [sixShipSquad1];
      final enemySquads = [sixShipSquad2];

      final battleInfo = BattleInfo();
      battleInfo.inBattleSquads = ourSquads;
      battleInfo.enemySquads = enemySquads;

      final dmgTakenMap = {for (var ship in battleInfo.allEnemyShips) ship.hashCode: -100};
      dmgTakenMap.addAll({for (var ship in battleInfo.allOurShips) ship.hashCode: 0});

      battleInfo.dmgTakenMap = dmgTakenMap;
      battleInfo.updateShipHP();

      // Expected result: SS
      final result = battleInfo.resultGuess;
      expect(result, equals("SS"));
    });

    test("Case 2 - S Victory", () {
      final ourSquads = [sixShipSquad1];
      final enemySquads = [sixShipSquad2];

      final battleInfo = BattleInfo();
      battleInfo.inBattleSquads = ourSquads;
      battleInfo.enemySquads = enemySquads;

      final dmgTakenMap = {for (var ship in battleInfo.allEnemyShips) ship.hashCode: -100};
      dmgTakenMap.addAll({for (var ship in battleInfo.allOurShips) ship.hashCode: -10});

      battleInfo.dmgTakenMap = dmgTakenMap;
      battleInfo.updateShipHP();

      // Expected result: S
      final result = battleInfo.resultGuess;
      expect(result, equals("S"));
    });

  });
}