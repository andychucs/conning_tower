import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_quest_list_entity.freezed.dart';
part 'get_member_quest_list_entity.g.dart';

@unfreezed
class GetMemberQuestListEntity with _$GetMemberQuestListEntity {
  static const source = '/api_get_member/questlist';
  
  factory GetMemberQuestListEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required GetMemberQuestListEntityApiDataEntity apiData,
  }) = _GetMemberQuestListEntity;

  factory GetMemberQuestListEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberQuestListEntityFromJson(json);
}

@unfreezed
class GetMemberQuestListEntityApiDataEntity with _$GetMemberQuestListEntityApiDataEntity {
  factory GetMemberQuestListEntityApiDataEntity({
    List<GetMemberQuestListEntityApiDataApiListEntity>? apiList,
  }) = _GetMemberQuestListEntityApiDataEntity;

  factory GetMemberQuestListEntityApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberQuestListEntityApiDataEntityFromJson(json);
}

/*
{
                "api_no": 213,
                "api_category": 2,
                "api_type": 2,
                "api_label_type": 3,
                "api_state": 2,
                "api_title": "海上通商破壊作戦",
                "api_detail": "1週間で敵輸送船を20隻以上撃沈せよ！",
                "api_voice_id": 0,
                "api_get_material": [
                    500,
                    0,
                    400,
                    0
                ],
                "api_bonus_flag": 1,
                "api_progress_flag": 0,
                "api_invalid_flag": 0
            }
*/

@unfreezed
class GetMemberQuestListEntityApiDataApiListEntity with _$GetMemberQuestListEntityApiDataApiListEntity {
  factory GetMemberQuestListEntityApiDataApiListEntity({
    int? apiNo,
    int? apiCategory,
    int? apiType,
    int? apiLabelType,
    int? apiState,
    String? apiTitle,
    String? apiDetail,
    int? apiVoiceId,
    List<int>? apiGetMaterial,
    int? apiBonusFlag,
    int? apiProgressFlag,
    int? apiInvalidFlag,
  }) = _GetMemberQuestListEntityApiDataApiListEntity;


  factory GetMemberQuestListEntityApiDataApiListEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberQuestListEntityApiDataApiListEntityFromJson(json);
}
