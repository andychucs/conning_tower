import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_misssion_result_entity.freezed.dart';

part 'req_misssion_result_entity.g.dart';

@unfreezed
class ReqMisssionResultEntity with _$ReqMisssionResultEntity {
  static const source = "/api_req_mission/result";

  factory ReqMisssionResultEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqMisssionResultApiDataEntity apiData,
  }) = _ReqMisssionResultEntity;

  factory ReqMisssionResultEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMisssionResultEntityFromJson(json);
}

@unfreezed
class ReqMisssionResultApiDataEntity with _$ReqMisssionResultApiDataEntity {
  factory ReqMisssionResultApiDataEntity({
    @JsonKey(name: 'api_ship_id') List<int>? apiShipId,
    @JsonKey(name: 'api_clear_result') int? apiClearResult,
    @JsonKey(name: 'api_get_exp') int? apiGetExp,
    @JsonKey(name: 'api_member_lv') int? apiMemberLv,
    @JsonKey(name: 'api_member_exp') int? apiMemberExp,
    @JsonKey(name: 'api_get_ship_exp') List<int>? apiGetShipExp,
    @JsonKey(name: 'api_get_exp_lvup') List<dynamic>? apiGetExpLvup,
    @JsonKey(name: 'api_maparea_name') String? apiMapareaName,
    @JsonKey(name: 'api_detail') String? apiDetail,
    @JsonKey(name: 'api_quest_name') String? apiQuestName,
    @JsonKey(name: 'api_quest_level') int? apiQuestLevel,
    @JsonKey(name: 'api_get_material') dynamic apiGetMaterial,
    @JsonKey(name: 'api_useitem_flag') dynamic apiUseitemFlag,
  }) = _ReqMisssionResultApiDataEntity;

  factory ReqMisssionResultApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMisssionResultApiDataEntityFromJson(json);
}
