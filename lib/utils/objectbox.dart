import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/objectbox.g.dart'; // created by `flutter pub run build_runner build`

class ObjectBox {

  /// The Store of this app.
  late final Store store;

  late final Box<KancolleBattleLogEntity> battleLog;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
    battleLog = Box<KancolleBattleLogEntity>(store);
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
}