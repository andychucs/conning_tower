import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Ship model test', () {
    Ship ship = Ship(
        uid: 1,
        shipId: 1,
        name: 'name',
        level: 1,
        exp: [1, 1, 1],
        nowHP: 1,
        maxHP: 1);

    test('damaged should return true if nowHP is less than 25% of maxHP', () {
      ship = ship.copyWith(nowHP: 1, maxHP: 4);
      expect(ship.damaged, isTrue);

      ship = ship.copyWith(nowHP: 4, maxHP: 13);
      expect(ship.damaged, isFalse);

      ship = ship.copyWith(nowHP: 4, maxHP: 15);
      expect(ship.damaged, isFalse);

      // nowHP is exactly 25% of maxHP
      ship = ship.copyWith(nowHP: 10, maxHP: 40);
      expect(ship.damaged, isTrue);

      // nowHP is just above 25% of maxHP
      ship = ship.copyWith(nowHP: 26, maxHP: 100);
      expect(ship.damaged, isFalse);

      // nowHP is just below 25% of maxHP
      ship = ship.copyWith(nowHP: 8, maxHP: 36);
      expect(ship.damaged, isTrue);

      // nowHP is greater than 25% of maxHP
      ship = ship.copyWith(nowHP: 15, maxHP: 50);
      expect(ship.damaged, isFalse);
    });

    test("onHPChange", () {
      ship = ship.copyWith(nowHP: 15, maxHP: 50);
      int code = ship.hashCode;
      ship.onHPChange(-5);
      expect(ship.nowHP, equals(10));
      expect(ship.hashCode, equals(code));
    });

  });
}
