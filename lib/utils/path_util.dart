import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class PathUtil {
  bool isInit = false;

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
    objectBoxPath = path.join(docsDir.path, "obx");
    objectBoxDataDBPath = path.join(objectBoxPath, 'data.mdb');

    final providersDir = path.join(docsDir.path, "providers");
    localAkashiSchedulePath = path.join(providersDir, "akashi_schedule.json");
    localKcWikiDataPath = path.join(providersDir, "kcwiki_data.json");

    final tasksDir = path.join(providersDir, "task");
    customTaskDataJsonPath = path.join(tasksDir, "tasks.json");
    customTaskDataYamlPath = path.join(tasksDir, "tasks.yaml");

    final localizationDir = path.join(docsDir.path, "l10n");
    localL10nSlotItemPath = path.join(localizationDir, "slotitem_l10n.json");
    localL10nUseItemInImprovePath = path.join(localizationDir, "useitem_in_improve_l10n.json");
  }
}