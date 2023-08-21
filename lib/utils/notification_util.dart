import 'dart:io';

import 'package:conning_tower/models/feature/task.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationUtil {
  init() async {
    await _configureLocalTimeZone();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin),
    );
  }

  Future<void> _configureLocalTimeZone() async {
    if (kIsWeb || Platform.isLinux) {
      return;
    }
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterTimezone.getLocalTimezone();
    debugPrint("timeZoneName:$timeZoneName");
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future<bool?> requestPermissions() async {
    final bool? result = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    return result;
  }

  Future<void> zonedScheduleAlarmClockNotification(
      int id,
      String? title,
      String? body,
      TZDateTime scheduledDate,
      NotificationDetails notificationDetails) async {
    debugPrint(id.toString());
    debugPrint(title);
    debugPrint(body);
    debugPrint(scheduledDate.toString());
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<void> cancelTaskNotification(String id) async {
    await flutterLocalNotificationsPlugin.cancel(id.hashCode);
  }

}

NotificationUtil notification = NotificationUtil();
