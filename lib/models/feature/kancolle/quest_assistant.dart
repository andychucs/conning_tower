import 'dart:convert';

import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcsapi/get/member/get_member_quest_list_entity.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/models/feature/log/kancolle_quest_log.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_assistant.freezed.dart';
part 'quest_assistant.g.dart';

//任務カテゴリ　1=編成, 2=出撃, 3=演習, 4=遠征, 5=補給/入渠, 6=工廠, 7=改装, 8=出撃(2), 9=出撃(3)
enum QuestCategory {
  fleet,
  sortie,
  practice,
  expedition,
  maintain,
  factory,
  refit,
  other
}

// 1=デイリー, 2=ウィークリー, 3=マンスリー, 4=単発, 5=他(輸送5と空母3,クォータリー/イヤーリー)
enum QuestType { daily, weekly, monthly, yearly, once, other }

@unfreezed
class QuestAssistant with _$QuestAssistant {
  const QuestAssistant._();

  factory QuestAssistant({
    required List<Quest> ready,
    required List<Quest> done,
  }) = _QuestAssistant;

  List<Quest> get todo {
    return [
      for (final quest in ready)
        if (quest.todo) quest
    ];
  }

  List<Quest> get inProgress {
    return [
      for (final quest in ready)
        if (quest.isProgress || quest.isCompleted) quest
    ];
  }

  List<Quest> get inLog {
    var questLog = objectbox.questLog.getAll();
    if (questLog.isEmpty) return [];
    return [for (final quest in questLog) Quest.fromLog(quest)];
  }

  void extend(List<Quest>? quests) {
    if (quests == null) return;
    List<int> readyQuestId = ready.map((e) => e.id).toList();

    for (final quest in quests) {
      if (readyQuestId.contains(quest.id)) {
        // replace same id quest in ready
        ready[readyQuestId.indexOf(quest.id)] = quest;
      } else {
        ready.add(quest);
      }
    }
  }

  void update(String admiral) {
    objectbox.updateAllQuest(admiral); // TODO: remove this in future
    for (final quest in ready) {
      objectbox.saveQuest(quest.id, jsonEncode(quest.toLog(admiral).toJson()));
    }
    List<Quest> inLogQuests = inLog;

    List<int> readyQuestId = ready.map((e) => e.id).toList();

    List<Quest> doneQuests = inLogQuests.where((quest) => !readyQuestId.contains(quest.id) && quest.isCompleted).toList();

    done = doneQuests;

    // List<int> doneQuestId = inLog.map((e) => e.id).toList();
    // if (inLog.isNotEmpty) {
    //   for (final quest in ready) {
    //     if (doneQuestId.contains(quest.id)) doneQuestId.remove(quest.id);
    //
    //     objectbox.saveQuest(quest.id, jsonEncode(quest.toLog().toJson()));
    //
    //     if (quest.mission != null) {
    //       if (quest.mission!.isNotEmpty) {
    //       }
    //     }
    //
    //   }
    //
    //   done = doneQuestId.map((e) => Quest(id: e)).toList();
    // } else {
    //
    // }
  }

  factory QuestAssistant.fromApi(GetMemberQuestListEntityApiDataEntity data) {
    final all = data.apiList?.map((e) => Quest.fromApi(e)).toList();
    return QuestAssistant(ready: all!, done: []);
  }
}

@freezed
class Quest with _$Quest {
  const Quest._();

  factory Quest({
    required int id,
    int? category,
    int? type,
    int? label,
    int? state,
    QuestRule? rule,
    List<QuestMission>? mission,
    String? title,
    String? detail,
    int? progressFlag,
    int? invalidFlag,
  }) = _Quest;

  QuestCategory? get getCategory => switch (category) {
        1 => QuestCategory.fleet,
        2 || 8 || 9 => QuestCategory.sortie,
        3 => QuestCategory.practice,
        4 => QuestCategory.expedition,
        5 => QuestCategory.maintain,
        6 => QuestCategory.factory,
        7 => QuestCategory.refit,
        _ => null,
      };

  bool get isCompleted {
    if (state == 3) return true;
    if (mission == null) return false;
    if (mission!.isEmpty) return false;
    for (final _ in mission!) {
      if (!_.isCompleted) return false;
    }
    return true;
  }

  bool get isProgress {
    if (state == 2) return true;
    return false;
  }

  bool get todo {
    if (state == 1) return true;
    return false;
  }

  factory Quest.fromApi(GetMemberQuestListEntityApiDataApiListEntity data) {
    return Quest(
        id: data.apiNo!,
        category: data.apiCategory,
        type: data.apiType,
        label: data.apiLabelType,
        state: data.apiState,
        title: data.apiTitle,
        detail: data.apiDetail,
        progressFlag: data.apiProgressFlag,
        invalidFlag: data.apiInvalidFlag,
    );
  }

  factory Quest.fromLog(KancolleQuestLogEntity log) {
    KancolleQuestLog questLog =
        KancolleQuestLog.fromJson(jsonDecode(log.logStr));
    return Quest(id: questLog.id, mission: questLog.mission, title: questLog.title, state: questLog.state);
  }

  KancolleQuestLog toLog(String admiral) {
    return KancolleQuestLog(id: id, mission: mission ?? [], title: title, state: state, admiral: admiral);
  }
}

abstract class QuestRule {}

@unfreezed
class SortieRule with _$SortieRule implements QuestRule {
  factory SortieRule({
    String? fleetRule,
  }) = _SortieRule;
}

@unfreezed
class QuestMission with _$QuestMission {
  const QuestMission._();

  factory QuestMission({
    required int reqTimes,
    required int times,
    int? battleMap,
    int? battleResult,
    int? operationId,
    int? destroyItem,
  }) = _QuestMission;

  bool get isCompleted => times >= reqTimes;

  bool get isBattle {
    if (battleResult != null && battleMap != null) return true;
    return false;
  }

  void update(QuestMission mission) {
    //TODO: load mission from log, and compare with current mission and update times which is greater
    if (mission.isBattle && isBattle) {
      if (mission.times > times) times = mission.times;
    }
  }

  factory QuestMission.fromJson(Map<String, dynamic> json) =>
      _$QuestMissionFromJson(json);
}
