import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/models/data/ooyodo/akashi_schedule.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

main() {

  group("Akashi Schedule", () {
    const dataFile = "test_resources/akashi_schedule.json";
    final json = jsonDecode(File(dataFile).readAsStringSync());
    AkashiSchedule schedule = AkashiSchedule.fromJson(json);

    setUp((){
      tz.initializeTimeZones();
      tz.setLocalLocation(tz.getLocation('UTC'));
    });

    test("parse", () {
      expect(schedule.items?.first, isNotNull);
    });

    test("item 41 can improve day", () {
      final item = schedule.items?.firstWhere((element) => element.id == 41);
      expect(item?.isAbleOn(0), isTrue);
      expect(item?.isAbleOn(1), isFalse);
      expect(item?.isAbleOn(2), isTrue);
      expect(item?.isAbleOn(3), isTrue);
      expect(item?.isAbleOn(4), isTrue);
      expect(item?.isAbleOn(5), isTrue);
      expect(item?.isAbleOn(6), isTrue);
    });

    test("item 41 can improve today", () {
      final item = schedule.items?.firstWhere((element) => element.id == 41);
      if (tz.TZDateTime.now(tz.getLocation('Asia/Tokyo')).weekday != DateTime.monday) {
        expect(item?.isAbleNow(), isTrue);
      }
    });

    test("item 41 wednesday req", () {
      final item = schedule.items?.firstWhere((element) => element.id == 41);

      var actImprove = item?.activeImprove(dayIndex: DateTime.tuesday);

      var act = actImprove?.first?.activeReq(dayIndex: DateTime.tuesday).first;

      expect(act?.ship?.length, 1);
      expect(act?.ship?[0], 107);
    });
  });
}
