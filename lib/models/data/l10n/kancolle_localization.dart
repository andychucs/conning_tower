import 'package:conning_tower/models/data/kcdata/quest_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kancolle_localization.freezed.dart';
part 'kancolle_localization.g.dart';

@freezed
class KancolleLocalizationData with _$KancolleLocalizationData {
  const factory KancolleLocalizationData({
    required String version,
    Map<int, String>? ship,
    Map<int, String>? item,
    Map<int, String>? equipment,
    Map<int, QuestData>? quest,
  }) = _KancolleLocalizationData;



  factory KancolleLocalizationData.fromJson(Map<String, dynamic> json) =>
      _$KancolleLocalizationDataFromJson(json);
}
