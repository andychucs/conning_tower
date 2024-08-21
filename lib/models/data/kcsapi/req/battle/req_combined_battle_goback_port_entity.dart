import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_combined_battle_goback_port_entity.freezed.dart';
part 'req_combined_battle_goback_port_entity.g.dart';

@freezed
class ReqCombinedBattleGobackPortEntity
    with _$ReqCombinedBattleGobackPortEntity {
  static const source = "/api_req_combined_battle/goback_port";

  const factory ReqCombinedBattleGobackPortEntity({
    required int apiResult,
    required String apiResultMsg,
  }) = _ReqCombinedBattleGobackPortEntity;

  factory ReqCombinedBattleGobackPortEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqCombinedBattleGobackPortEntityFromJson(json);
}
