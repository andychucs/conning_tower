import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

part 'akashi_schedule.freezed.dart';
part 'akashi_schedule.g.dart';

final _locale = tz.getLocation('Asia/Tokyo');
final monday = tz.TZDateTime(_locale, 2024, 1, 1);
final tuesday = monday.add(const Duration(days: 1));
final wednesday = tuesday.add(const Duration(days: 1));
final thursday = wednesday.add(const Duration(days: 1));
final friday = thursday.add(const Duration(days: 1));
final saturday = friday.add(const Duration(days: 1));
final sunday = saturday.add(const Duration(days: 1));

List<tz.TZDateTime> weekdays = [
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
];

@unfreezed
class AkashiSchedule with _$AkashiSchedule {
  factory AkashiSchedule({
    @JsonKey(name: 'data_version') String? dataVersion,
    List<ImproveItem>? items,
  }) = _AkashiSchedule;

  factory AkashiSchedule.fromJson(Map<String, dynamic> json) =>
      _$AkashiScheduleFromJson(json);
}

@unfreezed
class ImproveItem with _$ImproveItem {
  const ImproveItem._();

  factory ImproveItem({
    int? id,
    List<ImproveData?>? improvement,
  }) = _ImproveItem;

  List<ImproveData?> activeImprove({int? dayIndex}) {
    if (improvement == null) {
      return [];
    }
    if (improvement!.isEmpty) {
      return [];
    }
    if (dayIndex == null) {
      return improvement!.where((element) => element!.isAbleNow()).toList();
    }
    return improvement!
        .where((element) => element!.isAbleOn(dayIndex))
        .toList();
  }

  bool isAbleNow() {
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday == 7 ? 0 : now.weekday;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int day) {
    if (day == 7) day = 0;
    if (improvement == null) {
      return false;
    }
    if (improvement!.isEmpty) {
      return false;
    }
    for (var improveData in improvement!) {
      if (improveData!.isAbleOn(day)) {
        return true;
      }
    }
    return false;
  }

  factory ImproveItem.fromJson(Map<String, dynamic> json) =>
      _$ImproveItemFromJson(json);
}

@unfreezed
class ImproveData with _$ImproveData {
  const ImproveData._();

  factory ImproveData({
    UpgradeItem? upgrade,
    List<ImproveReq?>? req,
    ImproveResource? resource,
  }) = _ImproveData;

  List<ImproveReq?> activeReq({int? dayIndex}) {
    if (req == null) {
      return [];
    }
    if (req!.isEmpty) {
      return [];
    }
    if (dayIndex == null) {
      return req!.where((element) => element!.isAbleNow()).toList();
    }
    return req!.where((element) => element!.isAbleOn(dayIndex)).toList();
  }

  bool isAbleNow() {
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday == 7 ? 0 : now.weekday;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int day) {
    if (day == 7) day = 0;
    if (req == null) {
      return true;
    }
    if (req!.isEmpty) {
      return true;
    }
    for (var improveReq in req!) {
      if (improveReq!.isAbleOn(day)) {
        return true;
      }
    }
    return false;
  }

  factory ImproveData.fromJson(Map<String, dynamic> json) =>
      _$ImproveDataFromJson(json);
}

@freezed
class ImproveReq with _$ImproveReq {
  const ImproveReq._();

  @Assert("day.length == 7")
  const factory ImproveReq({
    required String day, // "1000001" means able to improve on monday and sunday
    List<int?>? ship,
  }) = _ImproveReq;

  List<String> shipNameList(Map<int, String> shipNameMap) {
    if (ship == null) return [];
    if (ship!.isEmpty) return [];
    return ship!.map((key) => shipNameMap[key] ?? 'Ship $key').toList();
  }

  String get dayNameEEEEE {
    if (day == "1111111") {
      return weekdays
          .map((element) => DateFormat.EEEEE().format(element))
          .join("/");
    }
    if (day == "0000000") {
      return "";
    }
    List<tz.TZDateTime> days = [];
    for (var (index, element) in day.split("").indexed) {
      final weekday = weekdays[index];
      if (element == "1") {
        days.add(weekday);
      }
    }
    return days.map((element) => DateFormat.EEEEE().format(element)).join("/");
  }

  bool isAbleNow() {
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday == 7 ? 0 : now.weekday;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int dayIndex) {
    if (dayIndex == 7) dayIndex = 0;
    assert(dayIndex >= 0 && dayIndex < 7);
    if (day == "1111111") {
      return true;
    }
    if (day == "0000000") {
      return false;
    }
    // day[dayIndex] == '1'
    if (day.substring(dayIndex, dayIndex + 1) == '1') {
      log("$ship is able to improve on day $dayIndex");
      return true;
    }
    return false;
  }

  factory ImproveReq.fromJson(Map<String, dynamic> json) =>
      _$ImproveReqFromJson(json);
}

@unfreezed
class UpgradeItem with _$UpgradeItem {
  factory UpgradeItem({
    int? id,
    int? lv,
  }) = _UpgradeItem;

  factory UpgradeItem.fromJson(Map<String, dynamic> json) =>
      _$UpgradeItemFromJson(json);
}

@unfreezed
class ImproveResource with _$ImproveResource {
  factory ImproveResource({
    List<int?>? base,
    List<ImproveResourceExtra?>? extra,
  }) = _ImproveResource;

  factory ImproveResource.fromJson(Map<String, dynamic> json) =>
      _$ImproveResourceFromJson(json);
}

@unfreezed
class ImproveResourceExtra with _$ImproveResourceExtra {
  factory ImproveResourceExtra({
    @JsonKey(name: 'dm') List<int?>? developmentMaterial,
    @JsonKey(name: 'im') List<int?>? improvementMaterial,
    @JsonKey(name: 'slot') Map<String, int>? slotItem,
    @JsonKey(name: 'use') Map<String, int>? useItem,
  }) = _ImproveResourceExtra;

  const ImproveResourceExtra._();

  ImproveCost get dCost {
    return ImproveCost(
        max: developmentMaterial!.last!, min: improvementMaterial!.first);
  }

  ImproveCost get iCost {
    return ImproveCost(
        max: improvementMaterial!.last!, min: improvementMaterial!.first);
  }

  Map<String, ImproveCost> getSlotCostMap(Map<int, String> slotItemMap) {
    if (slotItem == null) {
      return {};
    }
    return slotItem!.map((key, value) =>
        MapEntry(slotItemMap[int.parse(key)]!, ImproveCost(max: value)));
  }

  Map<String, ImproveCost> getUseCostMap(Map<int, String> useItemMap) {
    if (useItem == null) {
      return {};
    }
    return useItem!.map((key, value) =>
        MapEntry(useItemMap[int.parse(key)]!, ImproveCost(max: value)));
  }

  factory ImproveResourceExtra.fromJson(Map<String, dynamic> json) =>
      _$ImproveResourceExtraFromJson(json);
}

@freezed
class ImproveCost with _$ImproveCost {
  const ImproveCost._();
  factory ImproveCost({required int max, int? min}) = _ImproveCost;

  String get text {
    return min == null ? "$max" : "$min - $max";
  }

  factory ImproveCost.fromJson(Map<String, dynamic> json) =>
      _$ImproveCostFromJson(json);
}
