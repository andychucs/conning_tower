import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('damaged should return true if nowHP is less than 25% of maxHP', () {
    Ship ship = Ship(
        uid: 1,
        shipId: 1,
        name: 'name',
        level: 1,
        exp: [1, 1, 1],
        nowHP: 1,
        maxHP: 1);

    ship = ship.copyWith(nowHP: 1, maxHP: 4);
    expect(ship.damaged(), isTrue);

    ship = ship.copyWith(nowHP: 4, maxHP: 13);
    expect(ship.damaged(), isFalse);

    ship = ship.copyWith(nowHP: 4, maxHP: 15);
    expect(ship.damaged(), isFalse);


    // nowHP is exactly 25% of maxHP
    ship = ship.copyWith(nowHP: 10, maxHP: 40);
    expect(ship.damaged(), isTrue);

    // nowHP is just above 25% of maxHP
    ship = ship.copyWith(nowHP: 26, maxHP: 100);
    expect(ship.damaged(), isFalse);

    // nowHP is just below 25% of maxHP
    ship = ship.copyWith(nowHP: 8, maxHP: 36);
    expect(ship.damaged(), isTrue);

    // nowHP is greater than 25% of maxHP
    ship = ship.copyWith(nowHP: 15, maxHP: 50);
    expect(ship.damaged(), isFalse);
  });
}
