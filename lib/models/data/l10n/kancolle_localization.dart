import 'package:conning_tower/models/data/kcdata/quest_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kancolle_localization.freezed.dart';
part 'kancolle_localization.g.dart';

@freezed
class KancolleLocalizationData with _$KancolleLocalizationData {
  const KancolleLocalizationData._();
  const factory KancolleLocalizationData({
    required String version,
    Map<int, String>? ship,
    Map<String, String>? shipLocal,
    Map<int, String>? item,
    Map<String, String>? itemLocal,
    Map<int, String>? equipment,
    Map<String, String>? equipmentLocal, // for translate
    Map<int, String>? itemInImprove,
    Map<String, String>? itemInImproveLocal,
    Map<int, QuestData>? quest,
    Map<String, String>? equipmentTypeLocal,
  }) = _KancolleLocalizationData;

  String equipmentLocalName(String name) => equipmentLocal?[name] ?? name;

  factory KancolleLocalizationData.fromJson(Map<String, dynamic> json) =>
      _$KancolleLocalizationDataFromJson(json);
}
