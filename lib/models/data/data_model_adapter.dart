import 'kcsapi/kcsapi.dart';

class DataModelAdapter {
  /// Adapts JSON data to a specific entity based on the source.
  ///
  /// Args:
  ///   source (String): The source of the JSON data.
  ///   json (Map<String, dynamic>): The JSON data to be adapted.
  ///
  /// Returns:
  ///   The adapted entity, or null if the source is unknown.
  static Object? toEntity(String source, Map<String, dynamic> json) =>
      switch (source) {
        GetMemberMissionEntity.source => GetMemberMissionEntity.fromJson(json),
        ReqMissionStartEntity.source => ReqMissionStartEntity.fromJson(json),
        GetMemberDeckEntity.source => GetMemberDeckEntity.fromJson(json),
        PortEntity.source => PortEntity.fromJson(json),
        ReqMissionReturnInstructionEntity.source => ReqMissionReturnInstructionEntity.fromJson(json),
        GetMemberShipDeckEntity.source => GetMemberShipDeckEntity.fromJson(json),
        ReqMapNextEntity.source => ReqMapNextEntity.fromJson(json),
        ReqMapStartEntity.source => ReqMapStartEntity.fromJson(json),
        GetDataEntity.source => GetDataEntity.fromJson(json),
        GetMemberRequireInfoEntity.source => GetMemberRequireInfoEntity.fromJson(json),
        GetMemberSlotItemEntity.source => GetMemberSlotItemEntity.fromJson(json),
        ReqSortieBattleResultEntity.source => ReqSortieBattleResultEntity.fromJson(json),
        ReqSortieBattleEntity.source => ReqSortieBattleEntity.fromJson(json),
        ReqBattleMidnightBattleEntity.source => ReqBattleMidnightBattleEntity.fromJson(json),
        ReqPracticeBattleEntity.source => ReqPracticeBattleEntity.fromJson(json),
        ReqPracticeMidnightBattleEntity.source => ReqPracticeMidnightBattleEntity.fromJson(json),
        ReqCombinedBattleECBattleEntity.source => ReqCombinedBattleECBattleEntity.fromJson(json),
        ReqSortieLdAirbattleEntity.source => ReqSortieLdAirbattleEntity.fromJson(json),
        ReqCombinedBattleResultEntity.source => ReqCombinedBattleResultEntity.fromJson(json),
        GetMemberQuestListEntity.source => GetMemberQuestListEntity.fromJson(json),
        ReqBattleMidnightSpMidnightEntity.source => ReqBattleMidnightSpMidnightEntity.fromJson(json),
        ReqSortieAirbattleEntity.source => ReqSortieAirbattleEntity.fromJson(json),
        ReqCombinedBattleECMidnightBattleEntity.source => ReqCombinedBattleECMidnightBattleEntity.fromJson(json),
        ReqCombinedBattleEntity.source => ReqCombinedBattleEntity.fromJson(json),
        ReqCombinedBattleEachBattleEntity.source => ReqCombinedBattleEachBattleEntity.fromJson(json),
        ReqHokyuChargeEntity.source => ReqHokyuChargeEntity.fromJson(json),
        ReqCombinedBattleWaterEntity.source => ReqCombinedBattleWaterEntity.fromJson(json),
        ReqCombinedBattleEachWaterEntity.source => ReqCombinedBattleEachWaterEntity.fromJson(json),
        ReqCombinedBattleLdAirbattleEntity.source => ReqCombinedBattleLdAirbattleEntity.fromJson(json),
        ReqCombinedBattleMidnightBattleEntity.source => ReqCombinedBattleMidnightBattleEntity.fromJson(json),
        ReqHenseiCombinedEntity.source => ReqHenseiCombinedEntity.fromJson(json),
        ReqMisssionResultEntity.source => ReqMisssionResultEntity.fromJson(json),
        GetMemberMapinfoEntity.source => GetMemberMapinfoEntity.fromJson(json),
        _ => null,
      };
}
