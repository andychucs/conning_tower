import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship.freezed.dart';

@freezed
class Ship with _$Ship {
  const Ship._();

  const factory Ship(
      {required int uid,
      // required int sortNo,
      required int shipId,
      required String name,
      required int level,
      required List<int> exp,
      required int nowHP,
      required int maxHP}) = _Ship;

  bool damaged() {
    if (nowHP <= maxHP * 0.25) {
      return true;
    } else {
      return false;
    }
  }
}
