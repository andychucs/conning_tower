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
  };

  dynamic parseData(String source, Map<String, dynamic> json) {
    if (modelMap.containsKey(source)) {
      return modelMap[source]!(json);
    }
    return null;
  }
}
