import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart' as tz;

part 'akashi_schedule.freezed.dart';
part 'akashi_schedule.g.dart';

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
    return improvement!.where((element) => element!.isAbleOn(dayIndex)).toList();
  }

  bool isAbleNow(){
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday - 1;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int day) {
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

  bool isAbleNow(){
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday - 1;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int day) {
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

  @Assert("day?.length == 7 || day == Null")
  const factory ImproveReq({
    String? day, // "1000001" means able to improve on monday and sunday
    List<int?>? ship,
  }) = _ImproveReq;

  bool isAbleNow(){
    // Get now weekday index use TimeZone locate at Japan. JST(UTC+9)
    final now = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));
    final nowDayIndex = now.weekday - 1;
    return isAbleOn(nowDayIndex);
  }

  bool isAbleOn(int dayIndex) {
    assert(dayIndex >= 0 && dayIndex < 7);
    if (day == "1111111") {
      return true;
    }
    if (day == "0000000") {
      return false;
    }
    // day[dayIndex] == '1'
    if (day?.substring(dayIndex, dayIndex + 1) == '1') {
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

  factory ImproveResourceExtra.fromJson(Map<String, dynamic> json) =>
      _$ImproveResourceExtraFromJson(json);
}
