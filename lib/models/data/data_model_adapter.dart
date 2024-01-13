import 'kcsapi/kcsapi.dart';

class DataModelAdapter {
  final Map<String, Function(Map<String, dynamic>)> modelMap = {
    GetMemberMissionEntity.source: (json) =>
        GetMemberMissionEntity.fromJson(json),
    ReqMissionStartEntity.source: (json) =>
        ReqMissionStartEntity.fromJson(json),
    GetMemberDeckEntity.source: (json) => GetMemberDeckEntity.fromJson(json),
    PortEntity.source: (json) => PortEntity.fromJson(json),
    ReqMissionReturnInstructionEntity.source: (json) =>
        ReqMissionReturnInstructionEntity.fromJson(json),
    GetMemberShipDeckEntity.source: (json) =>
        GetMemberShipDeckEntity.fromJson(json),
    ReqMapNextEntity.source: (json) => ReqMapNextEntity.fromJson(json),
    ReqMapStartEntity.source: (json) => ReqMapStartEntity.fromJson(json),
    GetDataEntity.source: (json) => GetDataEntity.fromJson(json),
    GetMemberRequireInfoEntity.source: (json) => GetMemberRequireInfoEntity.fromJson(json),
    GetMemberSlotItemEntity.source: (json) => GetMemberSlotItemEntity.fromJson(json),
    ReqSortieBattleResultEntity.source: (json) => ReqSortieBattleResultEntity.fromJson(json),
    ReqSortieBattleEntity.source: (json) => ReqSortieBattleEntity.fromJson(json),
    ReqBattleMidnightBattleEntity.source: (json) => ReqBattleMidnightBattleEntity.fromJson(json),
    ReqPracticeBattleEntity.source: (json) => ReqPracticeBattleEntity.fromJson(json),
    ReqPracticeMidnightBattleEntity.source: (json) => ReqPracticeMidnightBattleEntity.fromJson(json),
    ReqCombinedBattleECBattleEntity.source: (json) => ReqCombinedBattleECBattleEntity.fromJson(json),
    ReqSortieLdAirbattleEntity.source: (json) => ReqSortieLdAirbattleEntity.fromJson(json),
    ReqCombinedBattleResultEntity.source: (json) => ReqCombinedBattleResultEntity.fromJson(json),
    GetMemberQuestListEntity.source: (json) => GetMemberQuestListEntity.fromJson(json),
    ReqBattleMidnightSpMidnightEntity.source: (json) => ReqBattleMidnightSpMidnightEntity.fromJson(json),
  };

  dynamic parseData(String source, Map<String, dynamic> json) {
    if (modelMap.containsKey(source)) {
      return modelMap[source]!(json);
    }
    return null;
  }
}
