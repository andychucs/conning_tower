// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_ship_deck_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMemberShipDeckEntity _$$_GetMemberShipDeckEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberShipDeckEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: GetMemberShipDeckApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetMemberShipDeckEntityToJson(
        _$_GetMemberShipDeckEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetMemberShipDeckApiDataEntity _$$_GetMemberShipDeckApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetMemberShipDeckApiDataEntity(
      apiShipData: (json['api_ship_data'] as List<dynamic>)
          .map((e) => GetMemberShipDeckApiDataApiShipDataEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiDeckData: (json['api_deck_data'] as List<dynamic>)
          .map((e) => GetMemberShipDeckApiDataApiDeckDataEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetMemberShipDeckApiDataEntityToJson(
        _$_GetMemberShipDeckApiDataEntity instance) =>
    <String, dynamic>{
      'api_ship_data': instance.apiShipData,
      'api_deck_data': instance.apiDeckData,
    };

_$_GetMemberShipDeckApiDataApiShipDataEntity
    _$$_GetMemberShipDeckApiDataApiShipDataEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberShipDeckApiDataApiShipDataEntity(
          apiId: json['api_id'] as int,
          apiSortno: json['api_sortno'] as int,
          apiShipId: json['api_ship_id'] as int,
          apiLv: json['api_lv'] as int,
          apiExp:
              (json['api_exp'] as List<dynamic>).map((e) => e as int).toList(),
          apiNowhp: json['api_nowhp'] as int,
          apiMaxhp: json['api_maxhp'] as int,
          apiSoku: json['api_soku'] as int,
          apiLeng: json['api_leng'] as int,
          apiSlot:
              (json['api_slot'] as List<dynamic>).map((e) => e as int).toList(),
          apiOnslot: (json['api_onslot'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiSlotEx: json['api_slot_ex'] as int,
          apiKyouka: (json['api_kyouka'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiBacks: json['api_backs'] as int,
          apiFuel: json['api_fuel'] as int,
          apiBull: json['api_bull'] as int,
          apiSlotnum: json['api_slotnum'] as int,
          apiNdockTime: json['api_ndock_time'] as int,
          apiNdockItem: (json['api_ndock_item'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiSrate: json['api_srate'] as int,
          apiCond: json['api_cond'] as int,
          apiKaryoku: (json['api_karyoku'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiRaisou: (json['api_raisou'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiTaiku: (json['api_taiku'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiSoukou: (json['api_soukou'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiKaihi: (json['api_kaihi'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiTaisen: (json['api_taisen'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiSakuteki: (json['api_sakuteki'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiLucky: (json['api_lucky'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiLocked: json['api_locked'] as int,
          apiLockedEquip: json['api_locked_equip'] as int,
          apiSallyArea: json['api_sally_area'] as int,
        );

Map<String, dynamic> _$$_GetMemberShipDeckApiDataApiShipDataEntityToJson(
        _$_GetMemberShipDeckApiDataApiShipDataEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_sortno': instance.apiSortno,
      'api_ship_id': instance.apiShipId,
      'api_lv': instance.apiLv,
      'api_exp': instance.apiExp,
      'api_nowhp': instance.apiNowhp,
      'api_maxhp': instance.apiMaxhp,
      'api_soku': instance.apiSoku,
      'api_leng': instance.apiLeng,
      'api_slot': instance.apiSlot,
      'api_onslot': instance.apiOnslot,
      'api_slot_ex': instance.apiSlotEx,
      'api_kyouka': instance.apiKyouka,
      'api_backs': instance.apiBacks,
      'api_fuel': instance.apiFuel,
      'api_bull': instance.apiBull,
      'api_slotnum': instance.apiSlotnum,
      'api_ndock_time': instance.apiNdockTime,
      'api_ndock_item': instance.apiNdockItem,
      'api_srate': instance.apiSrate,
      'api_cond': instance.apiCond,
      'api_karyoku': instance.apiKaryoku,
      'api_raisou': instance.apiRaisou,
      'api_taiku': instance.apiTaiku,
      'api_soukou': instance.apiSoukou,
      'api_kaihi': instance.apiKaihi,
      'api_taisen': instance.apiTaisen,
      'api_sakuteki': instance.apiSakuteki,
      'api_lucky': instance.apiLucky,
      'api_locked': instance.apiLocked,
      'api_locked_equip': instance.apiLockedEquip,
      'api_sally_area': instance.apiSallyArea,
    };

_$_GetMemberShipDeckApiDataApiDeckDataEntity
    _$$_GetMemberShipDeckApiDataApiDeckDataEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetMemberShipDeckApiDataApiDeckDataEntity(
          apiMemberId: json['api_member_id'] as int,
          apiId: json['api_id'] as int,
          apiName: json['api_name'] as String,
          apiNameId: json['api_name_id'] as String,
          apiMission: (json['api_mission'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiFlagship: json['api_flagship'] as String,
          apiShip:
              (json['api_ship'] as List<dynamic>).map((e) => e as int).toList(),
        );

Map<String, dynamic> _$$_GetMemberShipDeckApiDataApiDeckDataEntityToJson(
        _$_GetMemberShipDeckApiDataApiDeckDataEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_id': instance.apiId,
      'api_name': instance.apiName,
      'api_name_id': instance.apiNameId,
      'api_mission': instance.apiMission,
      'api_flagship': instance.apiFlagship,
      'api_ship': instance.apiShip,
    };
