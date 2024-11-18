import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_kaisou_powerup_entity.freezed.dart';

part 'req_kaisou_powerup_entity.g.dart';

@unfreezed
class ReqKaisouPowerupEntity with _$ReqKaisouPowerupEntity {
  static const source = '/api_req_kaisou/powerup';

  factory ReqKaisouPowerupEntity(
      {@JsonKey(name: 'api_result') int? apiResult, @JsonKey(
          name: 'api_result_msg') String? apiResultMsg, @JsonKey(
          name: 'api_data') ReqKaisouPowerupApiDataEntity? apiData,}) = _ReqKaisouPowerupEntity;

  factory ReqKaisouPowerupEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKaisouPowerupEntityFromJson(json);
}

@unfreezed
class ReqKaisouPowerupApiDataEntity with _$ReqKaisouPowerupApiDataEntity {

  factory ReqKaisouPowerupApiDataEntity(
      {@JsonKey(name: 'api_powerup_flag') int? apiPowerupFlag, @JsonKey(
          name: 'api_ship') ReqKaisouPowerupApiDataApiShipEntity? apiShip, @JsonKey(
          name: 'api_deck') List<
          ReqKaisouPowerupApiDataApiDeckEntity?>? apiDeck,}) = _ReqKaisouPowerupApiDataEntity;

  factory ReqKaisouPowerupApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqKaisouPowerupApiDataEntityFromJson(json);
}

@unfreezed
class ReqKaisouPowerupApiDataApiShipEntity
    with _$ReqKaisouPowerupApiDataApiShipEntity {

  factory ReqKaisouPowerupApiDataApiShipEntity(
      {@JsonKey(name: 'api_id') int? apiId, @JsonKey(
          name: 'api_sortno') int? apiSortno, @JsonKey(
          name: 'api_ship_id') int? apiShipId, @JsonKey(
          name: 'api_lv') int? apiLv, @JsonKey(name: 'api_exp') List<
          int?>? apiExp, @JsonKey(name: 'api_nowhp') int? apiNowhp, @JsonKey(
          name: 'api_maxhp') int? apiMaxhp, @JsonKey(
          name: 'api_soku') int? apiSoku, @JsonKey(
          name: 'api_leng') int? apiLeng, @JsonKey(name: 'api_slot') List<
          int?>? apiSlot, @JsonKey(name: 'api_onslot') List<
          int?>? apiOnslot, @JsonKey(
          name: 'api_slot_ex') int? apiSlotEx, @JsonKey(
          name: 'api_kyouka') List<int?>? apiKyouka, @JsonKey(
          name: 'api_backs') int? apiBacks, @JsonKey(
          name: 'api_fuel') int? apiFuel, @JsonKey(
          name: 'api_bull') int? apiBull, @JsonKey(
          name: 'api_slotnum') int? apiSlotnum, @JsonKey(
          name: 'api_ndock_time') int? apiNdockTime, @JsonKey(
          name: 'api_ndock_item') List<int?>? apiNdockItem, @JsonKey(
          name: 'api_srate') int? apiSrate, @JsonKey(
          name: 'api_cond') int? apiCond, @JsonKey(name: 'api_karyoku') List<
          int?>? apiKaryoku, @JsonKey(name: 'api_raisou') List<
          int?>? apiRaisou, @JsonKey(name: 'api_taiku') List<
          int?>? apiTaiku, @JsonKey(name: 'api_soukou') List<
          int?>? apiSoukou, @JsonKey(name: 'api_kaihi') List<
          int?>? apiKaihi, @JsonKey(name: 'api_taisen') List<
          int?>? apiTaisen, @JsonKey(name: 'api_sakuteki') List<
          int?>? apiSakuteki, @JsonKey(name: 'api_lucky') List<
          int?>? apiLucky, @JsonKey(
          name: 'api_locked') int? apiLocked, @JsonKey(
          name: 'api_locked_equip') int? apiLockedEquip, @JsonKey(
          name: 'api_sally_area') int? apiSallyArea,}) = _ReqKaisouPowerupApiDataApiShipEntity;

  factory ReqKaisouPowerupApiDataApiShipEntity.fromJson(
      Map<String, dynamic> json) =>
      _$ReqKaisouPowerupApiDataApiShipEntityFromJson(json);
}

@unfreezed
class ReqKaisouPowerupApiDataApiDeckEntity
    with _$ReqKaisouPowerupApiDataApiDeckEntity {

  factory ReqKaisouPowerupApiDataApiDeckEntity(
      {@JsonKey(name: 'api_member_id') int? apiMemberId, @JsonKey(
          name: 'api_id') int? apiId, @JsonKey(
          name: 'api_name') String? apiName, @JsonKey(
          name: 'api_name_id') String? apiNameId, @JsonKey(
          name: 'api_mission') List<int?>? apiMission, @JsonKey(
          name: 'api_flagship') String? apiFlagship, @JsonKey(
          name: 'api_ship') List<
          int?>? apiShip,}) = _ReqKaisouPowerupApiDataApiDeckEntity;

  factory ReqKaisouPowerupApiDataApiDeckEntity.fromJson(
      Map<String, dynamic> json) =>
      _$ReqKaisouPowerupApiDataApiDeckEntityFromJson(json);
}
