import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class PathUtil {
  late Directory appDocumentsDirectory;

  late String objectBoxPath;
  late String objectBoxDataDBPath;

  late String localAkashiSchedulePath;
  late String localKcWikiDataPath;

  late String localL10nSlotItemPath;
  late String localL10nUseItemInImprovePath;

  late String customTaskDataJsonPath;
  late String customTaskDataYamlPath;

  static Future<PathUtil> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    log("docsDir: $docsDir");
    return PathUtil._create(docsDir);
  }

  PathUtil._create(Directory docsDir) {
    appDocumentsDirectory = docsDir;

    objectBoxPath = p.join(docsDir.path, "obx");
    objectBoxDataDBPath = p.join(objectBoxPath, 'data.mdb');

    final providersDir = p.join(docsDir.path, "providers");
    localAkashiSchedulePath = p.join(providersDir, "akashi_schedule.json");
    localKcWikiDataPath = p.join(providersDir, "kcwiki_data.json");

    final tasksDir = p.join(providersDir, "task");
    customTaskDataJsonPath = p.join(tasksDir, "tasks.json");
    customTaskDataYamlPath = p.join(tasksDir, "tasks.yaml");

    final localizationDir = p.join(docsDir.path, "l10n");
    localL10nSlotItemPath = p.join(localizationDir, "slotitem_l10n.json");
    localL10nUseItemInImprovePath =
        p.join(localizationDir, "useitem_in_improve_l10n.json");
  }

  String getKcCacheDataPath(String path) {
    final gameDataDir =
        p.join(appDocumentsDirectory.path, "kancolle", "kcsapi");
    final split = path.split("/");
    split.remove("");
    final fileName = "${split.last}.json";
    final dirName = split.sublist(0, split.length - 1).join("/");
    return p.join(gameDataDir, dirName, fileName);
  }
}
