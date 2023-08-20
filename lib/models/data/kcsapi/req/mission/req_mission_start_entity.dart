import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_mission_start_entity.freezed.dart';

part 'req_mission_start_entity.g.dart';

@unfreezed
class ReqMissionStartEntity with _$ReqMissionStartEntity {
  static get source => '/api_req_mission/start';


  factory ReqMissionStartEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required ReqMissionStartApiDataEntity apiData,
  }) = _ReqMissionStartEntity;

  factory ReqMissionStartEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMissionStartEntityFromJson(json);
}

@unfreezed
class ReqMissionStartApiDataEntity with _$ReqMissionStartApiDataEntity {
  factory ReqMissionStartApiDataEntity({
    @JsonKey(name: 'api_complatetime') required int apiComplatetime,
    @JsonKey(name: 'api_complatetime_str') required String apiComplatetimeStr,
  }) = _ReqMissionStartApiDataEntity;

  factory ReqMissionStartApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqMissionStartApiDataEntityFromJson(json);
}

/*
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_complatetime":1692460164813,"api_complatetime_str":"2023-08-20 00:49:24"}}
 */