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
    List<int>? enemyShips
  }) = _BattleInfo;

  void updateBattleInfo(BattleInfo battleInfo) {
    result = battleInfo.result;
    dropName = battleInfo.dropName;
    enemyName = battleInfo.enemyName;
    mvp = battleInfo.mvp;
    enemyShips = battleInfo.enemyShips;
  }
}