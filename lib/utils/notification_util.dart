import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/operation_queue.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationUtil {
  init() async {
    await _configureLocalTimeZone();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@drawable/ic_notification");
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

  Future<void> setNotificationExclusive(Task task) async {
    debugPrint("call setNotificationExclusive:$task");
    String timeString = task.time;
    if (timeString == kZeroTime) return;
    flutterLocalNotificationsPlugin
        .pendingNotificationRequests()
        .then((value) {
      for (var item in value) {
        if (item.id == task.id.hashCode) {
          return;
        }
      }
      setNotification(task,feedBack: false);
    });
  }

  Future<void> setNotificationWithOperation(Operation operation, {bool feedBack = true}) async {
    if (operation.endTime.isBefore(tz.TZDateTime.now(tz.local))) return;

    String notificationTitle = S.current.TaskCompleted(operation.code);

    var notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        kTaskChannelId,
        kTaskChannelName,
        channelDescription: kTaskChannelDescription,
      ),
    );

    await notification.zonedScheduleAlarmClockNotification(
        operation.code.hashCode,
        notificationTitle,
        '',
        operation.endTime,
        notificationDetails);
    if (feedBack) {
      HapticFeedback.lightImpact();
      Fluttertoast.showToast(msg: S.current.TaskNotificationAdded);
    }
  }

  Future<void> setNotificationWithEndTime(Task task, tz.TZDateTime endTime, {bool feedBack = true}) async {
    if (endTime.isBefore(tz.TZDateTime.now(tz.local))) return;
    // set the title and content of the notification
    String notificationTitle = S.current.TaskCompleted(task.title);
    String notificationBody = "";

    // create notification details
    var notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        kTaskChannelId,
        kTaskChannelName,
        channelDescription: kTaskChannelDescription,
      ),
    );

    await notification.zonedScheduleAlarmClockNotification(
        task.id.hashCode,
        notificationTitle,
        notificationBody,
        endTime,
        notificationDetails);
    if (feedBack) {
      HapticFeedback.lightImpact();
      Fluttertoast.showToast(msg: S.current.TaskNotificationAdded);
    }
  }

  Future<void> setNotification(Task task, {bool feedBack = true}) async {
    String timeString = task.time;
    if (timeString == kZeroTime) return;

    // DateTime baseTime = DateTime(2023, 6, 1);
    // DateTime parsedDateTime = DateTime.parse('2023-06-01 $timeString');
    // Duration duration = parsedDateTime.difference(baseTime);
    List<String> parts = timeString.split(':');
    Duration duration = Duration(
      hours: int.parse(parts[0]),
      minutes: int.parse(parts[1]),
      seconds: int.parse(parts[2]),
    );

    // notification time for task creation
    tz.TZDateTime scheduledDateTime = tz.TZDateTime.now(tz.local).add(duration);

    // set the title and content of the notification
    String notificationTitle = S.current.TaskCompleted(task.title);
    String notificationBody = "";

    // create notification details
    var notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        kTaskChannelId,
        kTaskChannelName,
        channelDescription: kTaskChannelDescription,
      ),
    );

    await notification.zonedScheduleAlarmClockNotification(
        task.id.hashCode,
        notificationTitle,
        notificationBody,
        scheduledDateTime,
        notificationDetails);
    if (feedBack) {
      HapticFeedback.lightImpact();
      Fluttertoast.showToast(msg: S.current.TaskNotificationAdded);
    }
  }

}

NotificationUtil notification = NotificationUtil();
