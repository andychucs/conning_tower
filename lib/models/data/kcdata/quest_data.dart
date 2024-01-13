import 'package:conning_tower/models/feature/dashboard/kancolle/quest_assistant.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_data.freezed.dart';
part 'quest_data.g.dart';

@freezed
class QuestData with _$QuestData {
  const factory QuestData({
    required int id,
    required String code,
    required String title,
    String? detail,
    String? note,
    String? bonus,
    List<String>? req,
    List<QuestMission>? mission,
    String? fleetExp,
  }) = _QuestData;



  factory QuestData.fromJson(Map<String, dynamic> json) =>
      _$QuestDataFromJson(json);
}
