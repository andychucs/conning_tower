import 'dart:io';

import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:conning_tower/objectbox.g.dart'; // created by `flutter pub run build_runner build`

class ObjectBox {

  /// The Store of this app.
  late final Store store;

  late final Box<KancolleBattleLogEntity> battleLog;
  late final Box<KancolleQuestLogEntity> questLog;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
    battleLog = Box<KancolleBattleLogEntity>(store);
    questLog = Box<KancolleQuestLogEntity>(store);
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
    final objBoxDirectory =  Directory(p.join(docsDir.path, "obx"));
    final isExists = await objBoxDirectory.exists();
    if(isExists){
      debugPrint("obx path exists: $isExists");
      await objBoxDirectory.delete(recursive: true);
    }
  }

  Future<String> storeSize() async {
    final docsDir = await getApplicationDocumentsDirectory();
    return getFileSize(p.join(docsDir.path, "obx", 'data.mdb'), 2);
  }

  void saveQuest(int id, String logStr) {
    Query<KancolleQuestLogEntity> query = questLog.query(KancolleQuestLogEntity_.questId.equals(id)).build();
    KancolleQuestLogEntity? log = query.findUnique();
    if (log != null) {
      if (log.logStr == logStr) {
        return;
      }
      log.logStr = logStr;
      log.timestamp = DateTime.now().millisecondsSinceEpoch;
    } else {
      log = KancolleQuestLogEntity(questId: id, timestamp: DateTime.now().millisecondsSinceEpoch, logStr: logStr);
    }
    questLog.putAsync(log);
    print("put $id");
  }

}