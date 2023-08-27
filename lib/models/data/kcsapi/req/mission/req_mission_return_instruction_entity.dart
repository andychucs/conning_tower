import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_mission_return_instruction_entity.freezed.dart';

part 'req_mission_return_instruction_entity.g.dart';

@unfreezed
class ReqMissionReturnInstructionEntity
    with _$ReqMissionReturnInstructionEntity {
  static get source => "/api_req_mission/return_instruction";

  factory ReqMissionReturnInstructionEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data')
    required ReqMissionReturnInstructionApiDataEntity apiData,
  }) = _ReqMissionReturnInstructionEntity;

  factory ReqMissionReturnInstructionEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMissionReturnInstructionEntityFromJson(json);
}

@unfreezed
class ReqMissionReturnInstructionApiDataEntity
    with _$ReqMissionReturnInstructionApiDataEntity {
  factory ReqMissionReturnInstructionApiDataEntity({
    @JsonKey(name: 'api_mission') required List<int> apiMission,
  }) = _ReqMissionReturnInstructionApiDataEntity;

  factory ReqMissionReturnInstructionApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqMissionReturnInstructionApiDataEntityFromJson(json);
}
