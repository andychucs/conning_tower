import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:conning_tower/objectbox.g.dart';
import 'dart:developer' as dev;

import '../models/feature/log/kancolle_battle_log.dart';
import '../models/feature/log/kancolle_quest_log.dart'; // created by `flutter pub run build_runner build`

class ObjectBox {
  /// The Store of this app.
  late final Store store;

  late final Box<KancolleBattleLogEntity> battleLog;
  late final Box<KancolleQuestLogEntity> questLog;
  late final Box<KancolleResourceLogEntity> resourceLog;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
    battleLog = Box<KancolleBattleLogEntity>(store);
    questLog = Box<KancolleQuestLogEntity>(store);
    resourceLog = Box<KancolleResourceLogEntity>(store);
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    debugPrint(docsDir.toString());
    final store = await openStore(directory: p.join(docsDir.path, "obx"));
    return ObjectBox._create(store);
  }

  void close() {
    store.close();
  }

  Future<void> clear() async {
    close();
    final docsDir = await getApplicationDocumentsDirectory();
    final objBoxDirectory = Directory(p.join(docsDir.path, "obx"));
    final isExists = await objBoxDirectory.exists();
    if (isExists) {
      debugPrint("obx path exists: $isExists");
      await objBoxDirectory.delete(recursive: true);
    }
  }

  Future<String> storeSize() async {
    final docsDir = await getApplicationDocumentsDirectory();
    return getFileSize(p.join(docsDir.path, "obx", 'data.mdb'), 2);
  }

  void saveQuest(int id, String logStr) {
    Query<KancolleQuestLogEntity> query =
        questLog.query(KancolleQuestLogEntity_.questId.equals(id)).build();
    List<KancolleQuestLogEntity>? logs = query.find();
    late KancolleQuestLogEntity? log;
    if (logs.length > 1) {
      log = logs.first;
      for (var log in logs) {
        questLog.remove(log.id);
      }
      log.logStr = logStr;
      log.timestamp = DateTime.now().millisecondsSinceEpoch;
    } else if (logs.length == 1) {
      log = logs.first;
      if (log.logStr == logStr) {
        return;
      }
      log.logStr = logStr;
      log.timestamp = DateTime.now().millisecondsSinceEpoch;
    } else {
      log = KancolleQuestLogEntity(
          questId: id,
          timestamp: DateTime.now().millisecondsSinceEpoch,
          logStr: logStr);
    }
    questLog.putAsync(log);
    dev.log("put $id");
  }

  void updateAllQuest(String admiral) async {
    if (admiral == '') {
      return;
    }
    Query<KancolleQuestLogEntity> query = questLog.query().build();
    List<KancolleQuestLogEntity> logs = await query.findAsync();
    for (var log in logs) {
      KancolleQuestLog newLog =
          KancolleQuestLog.fromJson(jsonDecode(log.logStr));
      if (newLog.admiral != null) {
        continue;
      }
      dev.log("update quest log ${log.questId}");
      newLog.admiral = admiral;
      log.logStr = jsonEncode(newLog.toJson());
      await questLog.putAsync(log);
    }
  }

  void updateAllBattle(String admiral) async {
    if (admiral == '') {
      return;
    }
    Query<KancolleBattleLogEntity> query = battleLog.query().build();
    List<KancolleBattleLogEntity> logs = await query.findAsync();
    for (var log in logs) {
      KancolleBattleLog newLog =
          KancolleBattleLog.fromJson(jsonDecode(log.logStr));
      if (newLog.admiral != null) {
        continue;
      }
      dev.log("update battle log ${log.id}");
      newLog.admiral = admiral;
      log.logStr = jsonEncode(newLog.toJson());
      await battleLog.putAsync(log);
    }
  }

  void saveResource(DateTime time, String admiral, String resource, int value) {
    if (admiral == '') {
      return;
    }
    // search if resource log exists for today update value as high if value above high, low if value below low
    // 2024-08-01 00:00:00.000 ~ 2024-08-01 23:59:59.999 should be one day
    final todayStart = DateTime(time.year, time.month, time.day);
    final todayEnd = todayStart
        .add(const Duration(days: 1))
        .subtract(const Duration(milliseconds: 1));
    Query<KancolleResourceLogEntity> query = resourceLog
        .query(KancolleResourceLogEntity_.time
            .betweenDate(todayStart, todayEnd)
            .and(KancolleResourceLogEntity_.resource
                .equals(resource)
                .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
        .build();
    List<KancolleResourceLogEntity> logs = query.find();
    KancolleResourceLogEntity? log;
    if (logs.isNotEmpty) {
      log = logs.first;
      final high = max(log.high, value);
      final low = min(log.low, value);
      final close = value;
      if (high == log.high && low == log.low && close == log.close) {
        return;
      } else {
        log.high = high;
        log.low = low;
        log.close = close;
      }
    } else {
      log = KancolleResourceLogEntity(
          time: time,
          admiral: admiral,
          resource: resource,
          open: value,
          close: value,
          high: value,
          low: value);
    }
    resourceLog.put(log);
    dev.log("put $resource");
  }

  List<KancolleResourceLogEntity> queryResource(String admiral, String resource,
      {int? dayRange,
      int? monthRange,
      int? yearRange,
      DateTime? startTime,
      DateTime? endTime}) {
    final now = DateTime.now();
    late Query<KancolleResourceLogEntity> query;
    if (startTime != null) {
      if (endTime != null) {
        query = resourceLog
            .query(KancolleResourceLogEntity_.time
                .betweenDate(startTime, endTime)
                .and(KancolleResourceLogEntity_.resource
                    .equals(resource)
                    .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
            .build();
      } else {
        query = resourceLog
          .query(KancolleResourceLogEntity_.time
              .betweenDate(startTime, now)
              .and(KancolleResourceLogEntity_.resource
                  .equals(resource)
                  .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
          .build();
      }
    } else if (dayRange != null) {
      final start = now.subtract(Duration(days: dayRange));
      query = resourceLog
          .query(KancolleResourceLogEntity_.time.betweenDate(start, now).and(
              KancolleResourceLogEntity_.resource
                  .equals(resource)
                  .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
          .build();
    } else if (monthRange != null) {
      final start = now.subtract(Duration(days: monthRange * 30));
      query = resourceLog
          .query(KancolleResourceLogEntity_.time.betweenDate(start, now).and(
              KancolleResourceLogEntity_.resource
                  .equals(resource)
                  .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
          .build();
    } else if (yearRange != null) {
      final start = now.subtract(Duration(days: yearRange * 365));
      query = resourceLog
          .query(KancolleResourceLogEntity_.time.betweenDate(start, now).and(
              KancolleResourceLogEntity_.resource
                  .equals(resource)
                  .and(KancolleResourceLogEntity_.admiral.equals(admiral))))
          .build();
    } else {
      query = resourceLog
          .query(KancolleResourceLogEntity_.resource
              .equals(resource)
              .and(KancolleResourceLogEntity_.admiral.equals(admiral)))
          .build();
    }
    List<KancolleResourceLogEntity> logs = query.find();
    return logs;
  }
}
