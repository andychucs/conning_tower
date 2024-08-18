import 'package:conning_tower/models/data/kcsapi/deck_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_deck_entity.freezed.dart';

part 'get_member_deck_entity.g.dart';

@unfreezed
class GetMemberDeckEntity with _$GetMemberDeckEntity {
  static const source = '/api_get_member/deck';

  factory GetMemberDeckEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data')
    required List<GetMemberDeckApiDataEntity> apiData,
  }) = _GetMemberDeckEntity;

  factory GetMemberDeckEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberDeckEntityFromJson(json);
}

@unfreezed
class GetMemberDeckApiDataEntity with _$GetMemberDeckApiDataEntity implements DeckData{
  factory GetMemberDeckApiDataEntity({
    @JsonKey(name: 'api_member_id') required int apiMemberId,
    @JsonKey(name: 'api_id') required int apiId, // Squad id
    @JsonKey(name: 'api_name') required String apiName, // Squad name
    @JsonKey(name: 'api_name_id') required String apiNameId,
    @JsonKey(name: 'api_mission') required List<int> apiMission,
    // apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
    @JsonKey(name: 'api_flagship') required String apiFlagship,
    @JsonKey(name: 'api_ship') required List<int> apiShip, // List of ship girl's uid
  }) = _GetMemberDeckApiDataEntity;

  factory GetMemberDeckApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetMemberDeckApiDataEntityFromJson(json);
}
/*
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":[{"api_member_id":13195234,"api_id":1,"api_name":"\u7b2c1\u8266\u968a","api_name_id":"","api_mission":[0,0,0,0],"api_flagship":"0","api_ship":[2,3,1,4,5,7]},{"api_member_id":13195234,"api_id":2,"api_name":"\u7b2c2\u8266\u968a","api_name_id":"","api_mission":[1,1,1692455592102,0],"api_flagship":"0","api_ship":[6,-1,-1,-1,-1,-1]}]}
 */