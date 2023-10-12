// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'port_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortEntity _$$_PortEntityFromJson(Map<String, dynamic> json) =>
    _$_PortEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData:
          PortApiDataEntity.fromJson(json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PortEntityToJson(_$_PortEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_PortApiDataEntity _$$_PortApiDataEntityFromJson(Map<String, dynamic> json) =>
    _$_PortApiDataEntity(
      apiEventObject: json['api_event_object'] == null
          ? null
          : PortApiDataApiEventObjectEntity.fromJson(
              json['api_event_object'] as Map<String, dynamic>),
      apiMaterial: (json['api_material'] as List<dynamic>)
          .map((e) =>
              PortApiDataApiMaterialEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiDeckPort: (json['api_deck_port'] as List<dynamic>)
          .map((e) =>
              PortApiDataApiDeckPortEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiNdock: (json['api_ndock'] as List<dynamic>)
          .map((e) =>
              PortApiDataApiNdockEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiShip: (json['api_ship'] as List<dynamic>)
          .map((e) =>
              PortApiDataApiShipEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiBasic: PortApiDataApiBasicEntity.fromJson(
          json['api_basic'] as Map<String, dynamic>),
      apiLog: (json['api_log'] as List<dynamic>)
          .map((e) =>
              PortApiDataApiLogEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiCombinedFlag: json['api_combined_flag'] as int?,
      apiPBgmId: json['api_p_bgm_id'] as int,
      apiParallelQuestCount: json['api_parallel_quest_count'] as int,
      apiDestShipSlot: json['api_dest_ship_slot'] as int,
      apiCFlags:
          (json['api_c_flags'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PortApiDataEntityToJson(
        _$_PortApiDataEntity instance) =>
    <String, dynamic>{
      'api_event_object': instance.apiEventObject,
      'api_material': instance.apiMaterial,
      'api_deck_port': instance.apiDeckPort,
      'api_ndock': instance.apiNdock,
      'api_ship': instance.apiShip,
      'api_basic': instance.apiBasic,
      'api_log': instance.apiLog,
      'api_combined_flag': instance.apiCombinedFlag,
      'api_p_bgm_id': instance.apiPBgmId,
      'api_parallel_quest_count': instance.apiParallelQuestCount,
      'api_dest_ship_slot': instance.apiDestShipSlot,
      'api_c_flags': instance.apiCFlags,
    };

_$_PortApiDataApiEventObjectEntity _$$_PortApiDataApiEventObjectEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiEventObjectEntity(
      apiCNum: json['api_c_num'] as int?,
      apiMFlag: json['api_m_flag'] as int?,
    );

Map<String, dynamic> _$$_PortApiDataApiEventObjectEntityToJson(
        _$_PortApiDataApiEventObjectEntity instance) =>
    <String, dynamic>{
      'api_c_num': instance.apiCNum,
      'api_m_flag': instance.apiMFlag,
    };

_$_PortApiDataApiMaterialEntity _$$_PortApiDataApiMaterialEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiMaterialEntity(
      apiMemberId: json['api_member_id'] as int,
      apiId: json['api_id'] as int,
      apiValue: json['api_value'] as int,
    );

Map<String, dynamic> _$$_PortApiDataApiMaterialEntityToJson(
        _$_PortApiDataApiMaterialEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_id': instance.apiId,
      'api_value': instance.apiValue,
    };

_$_PortApiDataApiDeckPortEntity _$$_PortApiDataApiDeckPortEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiDeckPortEntity(
      apiMemberId: json['api_member_id'] as int,
      apiId: json['api_id'] as int,
      apiName: json['api_name'] as String,
      apiNameId: json['api_name_id'] as String,
      apiMission:
          (json['api_mission'] as List<dynamic>).map((e) => e as int).toList(),
      apiFlagship: json['api_flagship'] as String,
      apiShip:
          (json['api_ship'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PortApiDataApiDeckPortEntityToJson(
        _$_PortApiDataApiDeckPortEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_id': instance.apiId,
      'api_name': instance.apiName,
      'api_name_id': instance.apiNameId,
      'api_mission': instance.apiMission,
      'api_flagship': instance.apiFlagship,
      'api_ship': instance.apiShip,
    };

_$_PortApiDataApiNdockEntity _$$_PortApiDataApiNdockEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiNdockEntity(
      apiMemberId: json['api_member_id'] as int,
      apiId: json['api_id'] as int,
      apiState: json['api_state'] as int,
      apiShipId: json['api_ship_id'] as int,
      apiCompleteTime: json['api_complete_time'] as int,
      apiCompleteTimeStr: json['api_complete_time_str'] as String,
      apiItem1: json['api_item1'] as int,
      apiItem2: json['api_item2'] as int,
      apiItem3: json['api_item3'] as int,
      apiItem4: json['api_item4'] as int,
    );

Map<String, dynamic> _$$_PortApiDataApiNdockEntityToJson(
        _$_PortApiDataApiNdockEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_id': instance.apiId,
      'api_state': instance.apiState,
      'api_ship_id': instance.apiShipId,
      'api_complete_time': instance.apiCompleteTime,
      'api_complete_time_str': instance.apiCompleteTimeStr,
      'api_item1': instance.apiItem1,
      'api_item2': instance.apiItem2,
      'api_item3': instance.apiItem3,
      'api_item4': instance.apiItem4,
    };

_$_PortApiDataApiShipEntity _$$_PortApiDataApiShipEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiShipEntity(
      apiId: json['api_id'] as int,
      apiSortno: json['api_sortno'] as int,
      apiShipId: json['api_ship_id'] as int,
      apiLv: json['api_lv'] as int,
      apiExp: (json['api_exp'] as List<dynamic>).map((e) => e as int).toList(),
      apiNowhp: json['api_nowhp'] as int,
      apiMaxhp: json['api_maxhp'] as int,
      apiSoku: json['api_soku'] as int,
      apiLeng: json['api_leng'] as int,
      apiSlot:
          (json['api_slot'] as List<dynamic>).map((e) => e as int).toList(),
      apiOnslot:
          (json['api_onslot'] as List<dynamic>).map((e) => e as int).toList(),
      apiSlotEx: json['api_slot_ex'] as int,
      apiKyouka:
          (json['api_kyouka'] as List<dynamic>).map((e) => e as int).toList(),
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
      apiKaryoku:
          (json['api_karyoku'] as List<dynamic>).map((e) => e as int).toList(),
      apiRaisou:
          (json['api_raisou'] as List<dynamic>).map((e) => e as int).toList(),
      apiTaiku:
          (json['api_taiku'] as List<dynamic>).map((e) => e as int).toList(),
      apiSoukou:
          (json['api_soukou'] as List<dynamic>).map((e) => e as int).toList(),
      apiKaihi:
          (json['api_kaihi'] as List<dynamic>).map((e) => e as int).toList(),
      apiTaisen:
          (json['api_taisen'] as List<dynamic>).map((e) => e as int).toList(),
      apiSakuteki:
          (json['api_sakuteki'] as List<dynamic>).map((e) => e as int).toList(),
      apiLucky:
          (json['api_lucky'] as List<dynamic>).map((e) => e as int).toList(),
      apiLocked: json['api_locked'] as int,
      apiLockedEquip: json['api_locked_equip'] as int,
      apiSallyArea: json['api_sally_area'] as int?,
    );

Map<String, dynamic> _$$_PortApiDataApiShipEntityToJson(
        _$_PortApiDataApiShipEntity instance) =>
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

_$_PortApiDataApiBasicEntity _$$_PortApiDataApiBasicEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiBasicEntity(
      apiMemberId: json['api_member_id'] as String,
      apiNickname: json['api_nickname'] as String,
      apiNicknameId: json['api_nickname_id'] as String,
      apiActiveFlag: json['api_active_flag'] as int,
      apiStarttime: json['api_starttime'] as int,
      apiLevel: json['api_level'] as int,
      apiRank: json['api_rank'] as int,
      apiExperience: json['api_experience'] as int,
      apiFleetname: json['api_fleetname'],
      apiComment: json['api_comment'] as String,
      apiCommentId: json['api_comment_id'] as String,
      apiMaxChara: json['api_max_chara'] as int,
      apiMaxSlotitem: json['api_max_slotitem'] as int,
      apiMaxKagu: json['api_max_kagu'] as int,
      apiPlaytime: json['api_playtime'] as int,
      apiTutorial: json['api_tutorial'] as int,
      apiFurniture: (json['api_furniture'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiCountDeck: json['api_count_deck'] as int,
      apiCountKdock: json['api_count_kdock'] as int,
      apiCountNdock: json['api_count_ndock'] as int,
      apiFcoin: json['api_fcoin'] as int,
      apiStWin: json['api_st_win'] as int,
      apiStLose: json['api_st_lose'] as int,
      apiMsCount: json['api_ms_count'] as int,
      apiMsSuccess: json['api_ms_success'] as int,
      apiPtWin: json['api_pt_win'] as int,
      apiPtLose: json['api_pt_lose'] as int,
      apiPtChallenged: json['api_pt_challenged'] as int,
      apiPtChallengedWin: json['api_pt_challenged_win'] as int,
      apiFirstflag: json['api_firstflag'] as int,
      apiTutorialProgress: json['api_tutorial_progress'] as int,
      apiPvp: (json['api_pvp'] as List<dynamic>).map((e) => e as int).toList(),
      apiMedals: json['api_medals'] as int,
      apiLargeDock: json['api_large_dock'] as int,
    );

Map<String, dynamic> _$$_PortApiDataApiBasicEntityToJson(
        _$_PortApiDataApiBasicEntity instance) =>
    <String, dynamic>{
      'api_member_id': instance.apiMemberId,
      'api_nickname': instance.apiNickname,
      'api_nickname_id': instance.apiNicknameId,
      'api_active_flag': instance.apiActiveFlag,
      'api_starttime': instance.apiStarttime,
      'api_level': instance.apiLevel,
      'api_rank': instance.apiRank,
      'api_experience': instance.apiExperience,
      'api_fleetname': instance.apiFleetname,
      'api_comment': instance.apiComment,
      'api_comment_id': instance.apiCommentId,
      'api_max_chara': instance.apiMaxChara,
      'api_max_slotitem': instance.apiMaxSlotitem,
      'api_max_kagu': instance.apiMaxKagu,
      'api_playtime': instance.apiPlaytime,
      'api_tutorial': instance.apiTutorial,
      'api_furniture': instance.apiFurniture,
      'api_count_deck': instance.apiCountDeck,
      'api_count_kdock': instance.apiCountKdock,
      'api_count_ndock': instance.apiCountNdock,
      'api_fcoin': instance.apiFcoin,
      'api_st_win': instance.apiStWin,
      'api_st_lose': instance.apiStLose,
      'api_ms_count': instance.apiMsCount,
      'api_ms_success': instance.apiMsSuccess,
      'api_pt_win': instance.apiPtWin,
      'api_pt_lose': instance.apiPtLose,
      'api_pt_challenged': instance.apiPtChallenged,
      'api_pt_challenged_win': instance.apiPtChallengedWin,
      'api_firstflag': instance.apiFirstflag,
      'api_tutorial_progress': instance.apiTutorialProgress,
      'api_pvp': instance.apiPvp,
      'api_medals': instance.apiMedals,
      'api_large_dock': instance.apiLargeDock,
    };

_$_PortApiDataApiLogEntity _$$_PortApiDataApiLogEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PortApiDataApiLogEntity(
      apiNo: json['api_no'] as int,
      apiType: json['api_type'] as String,
      apiState: json['api_state'] as String,
      apiMessage: json['api_message'] as String,
    );

Map<String, dynamic> _$$_PortApiDataApiLogEntityToJson(
        _$_PortApiDataApiLogEntity instance) =>
    <String, dynamic>{
      'api_no': instance.apiNo,
      'api_type': instance.apiType,
      'api_state': instance.apiState,
      'api_message': instance.apiMessage,
    };
