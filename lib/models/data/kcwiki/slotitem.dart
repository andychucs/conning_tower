import 'package:freezed_annotation/freezed_annotation.dart';

part 'slotitem.freezed.dart';
part 'slotitem.g.dart';

@freezed
class SlotItem with _$SlotItem {
  factory SlotItem({
    required int id,
    required int sortNo,
    required String name,
    required List<int> type,
    required int rare,
    required List<int> broken,
    required String info,
    required int usebull,
    required List<int>? cost,
    required List<int>? distance,
    required Map<String, int> stats,
    required List<Improvement> improvement,
    required String chineseName,
  }) = _SlotItem;

  factory SlotItem.fromJson(Map<String, dynamic> json) =>
      _$SlotItemFromJson(json);
}

@freezed
class Improvement with _$Improvement {
  factory Improvement({
    required dynamic consume,
    required Upgrade upgrade,
    required List<List<ShipId>> day,
  }) = _Improvement;

  factory Improvement.fromJson(Map<String, dynamic> json) =>
      _$ImprovementFromJson(json);
}

@freezed
class SlotItemAmount with _$SlotItemAmount {
  factory SlotItemAmount({
    required int id,
    required int amount,
  }) = _SlotItemAmount;

  factory SlotItemAmount.fromJson(Map<String, dynamic> json) =>
      _$SlotItemAmountFromJson(json);
}

@freezed
class Upgrade with _$Upgrade {
  factory Upgrade({
    required int id,
    required int level,
    required dynamic consume,
    required dynamic slotitem,
  }) = _Upgrade;

  factory Upgrade.fromJson(Map<String, dynamic> json) =>
      _$UpgradeFromJson(json);
}

@freezed
class ShipId with _$ShipId {
  factory ShipId({
    required int shipId,
  }) = _ShipId;

  factory ShipId.fromJson(Map<String, dynamic> json) => _$ShipIdFromJson(json);
}
