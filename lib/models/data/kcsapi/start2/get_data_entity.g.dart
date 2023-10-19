// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDataEntity _$$_GetDataEntityFromJson(Map<String, dynamic> json) =>
    _$_GetDataEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: GetDataApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetDataEntityToJson(_$_GetDataEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_GetDataApiDataEntity _$$_GetDataApiDataEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetDataApiDataEntity(
      apiMstShip: (json['api_mst_ship'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstShipEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstSlotitemEquiptype:
          (json['api_mst_slotitem_equiptype'] as List<dynamic>)
              .map((e) => GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      apiMstEquipExslot: (json['api_mst_equip_exslot'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      apiMstEquipExslotShip: json['api_mst_equip_exslot_ship'],
      apiMstStype: (json['api_mst_stype'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstStypeEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstSlotitem: (json['api_mst_slotitem'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstSlotitemEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstFurnituregraph: (json['api_mst_furnituregraph'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstFurnituregraphEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstUseitem: (json['api_mst_useitem'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstUseitemEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstPayitem: (json['api_mst_payitem'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstPayitemEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstItemShop: GetDataApiDataApiMstItemShopEntity.fromJson(
          json['api_mst_item_shop'] as Map<String, dynamic>),
      apiMstMaparea: (json['api_mst_maparea'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstMapareaEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstMapinfo: (json['api_mst_mapinfo'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstMapinfoEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstMapbgm: (json['api_mst_mapbgm'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstMapbgmEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstMission: (json['api_mst_mission'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstMissionEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstConst: GetDataApiDataApiMstConstEntity.fromJson(
          json['api_mst_const'] as Map<String, dynamic>),
      apiMstShipupgrade: (json['api_mst_shipupgrade'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstShipupgradeEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstBgm: (json['api_mst_bgm'] as List<dynamic>)
          .map((e) =>
              GetDataApiDataApiMstBgmEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiMstEquipShip: (json['api_mst_equip_ship'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstEquipShipEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstFurniture: (json['api_mst_furniture'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstFurnitureEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apiMstShipgraph: (json['api_mst_shipgraph'] as List<dynamic>)
          .map((e) => GetDataApiDataApiMstShipgraphEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetDataApiDataEntityToJson(
        _$_GetDataApiDataEntity instance) =>
    <String, dynamic>{
      'api_mst_ship': instance.apiMstShip,
      'api_mst_slotitem_equiptype': instance.apiMstSlotitemEquiptype,
      'api_mst_equip_exslot': instance.apiMstEquipExslot,
      'api_mst_equip_exslot_ship': instance.apiMstEquipExslotShip,
      'api_mst_stype': instance.apiMstStype,
      'api_mst_slotitem': instance.apiMstSlotitem,
      'api_mst_furnituregraph': instance.apiMstFurnituregraph,
      'api_mst_useitem': instance.apiMstUseitem,
      'api_mst_payitem': instance.apiMstPayitem,
      'api_mst_item_shop': instance.apiMstItemShop,
      'api_mst_maparea': instance.apiMstMaparea,
      'api_mst_mapinfo': instance.apiMstMapinfo,
      'api_mst_mapbgm': instance.apiMstMapbgm,
      'api_mst_mission': instance.apiMstMission,
      'api_mst_const': instance.apiMstConst,
      'api_mst_shipupgrade': instance.apiMstShipupgrade,
      'api_mst_bgm': instance.apiMstBgm,
      'api_mst_equip_ship': instance.apiMstEquipShip,
      'api_mst_furniture': instance.apiMstFurniture,
      'api_mst_shipgraph': instance.apiMstShipgraph,
    };

_$_GetDataApiDataApiMstShipEntity _$$_GetDataApiDataApiMstShipEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetDataApiDataApiMstShipEntity(
      apiId: json['api_id'] as int,
      apiSortno: json['api_sortno'] as int?,
      apiSortId: json['api_sort_id'] as int,
      apiName: json['api_name'] as String,
      apiYomi: json['api_yomi'] as String,
      apiStype: json['api_stype'] as int,
      apiCtype: json['api_ctype'] as int,
      apiAfterlv: json['api_afterlv'] as int?,
      apiAftershipid: json['api_aftershipid'] as String?,
      apiTaik:
          (json['api_taik'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiSouk:
          (json['api_souk'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiHoug:
          (json['api_houg'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiRaig:
          (json['api_raig'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiTyku:
          (json['api_tyku'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiLuck:
          (json['api_luck'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiSoku: json['api_soku'] as int?,
      apiLeng: json['api_leng'] as int?,
      apiSlotNum: json['api_slot_num'] as int?,
      apiMaxeq:
          (json['api_maxeq'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiBuildtime: json['api_buildtime'] as int?,
      apiBroken:
          (json['api_broken'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiPowup:
          (json['api_powup'] as List<dynamic>?)?.map((e) => e as int).toList(),
      apiBacks: json['api_backs'] as int?,
      apiGetmes: json['api_getmes'] as String?,
      apiAfterfuel: json['api_afterfuel'] as int?,
      apiAfterbull: json['api_afterbull'] as int?,
      apiFuelMax: json['api_fuel_max'] as int?,
      apiBullMax: json['api_bull_max'] as int?,
      apiVoicef: json['api_voicef'] as int?,
    );

Map<String, dynamic> _$$_GetDataApiDataApiMstShipEntityToJson(
        _$_GetDataApiDataApiMstShipEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_sortno': instance.apiSortno,
      'api_sort_id': instance.apiSortId,
      'api_name': instance.apiName,
      'api_yomi': instance.apiYomi,
      'api_stype': instance.apiStype,
      'api_ctype': instance.apiCtype,
      'api_afterlv': instance.apiAfterlv,
      'api_aftershipid': instance.apiAftershipid,
      'api_taik': instance.apiTaik,
      'api_souk': instance.apiSouk,
      'api_houg': instance.apiHoug,
      'api_raig': instance.apiRaig,
      'api_tyku': instance.apiTyku,
      'api_luck': instance.apiLuck,
      'api_soku': instance.apiSoku,
      'api_leng': instance.apiLeng,
      'api_slot_num': instance.apiSlotNum,
      'api_maxeq': instance.apiMaxeq,
      'api_buildtime': instance.apiBuildtime,
      'api_broken': instance.apiBroken,
      'api_powup': instance.apiPowup,
      'api_backs': instance.apiBacks,
      'api_getmes': instance.apiGetmes,
      'api_afterfuel': instance.apiAfterfuel,
      'api_afterbull': instance.apiAfterbull,
      'api_fuel_max': instance.apiFuelMax,
      'api_bull_max': instance.apiBullMax,
      'api_voicef': instance.apiVoicef,
    };

_$_GetDataApiDataApiMstSlotitemEquiptypeEntity
    _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstSlotitemEquiptypeEntity(
          apiId: json['api_id'] as int,
          apiName: json['api_name'] as String,
          apiShowFlg: json['api_show_flg'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityToJson(
        _$_GetDataApiDataApiMstSlotitemEquiptypeEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_name': instance.apiName,
      'api_show_flg': instance.apiShowFlg,
    };

_$_GetDataApiDataApiMstStypeEntity _$$_GetDataApiDataApiMstStypeEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetDataApiDataApiMstStypeEntity(
      apiId: json['api_id'] as int,
      apiSortno: json['api_sortno'] as int,
      apiName: json['api_name'] as String,
      apiScnt: json['api_scnt'] as int,
      apiKcnt: json['api_kcnt'] as int,
      apiEquipType: json['api_equip_type'],
    );

Map<String, dynamic> _$$_GetDataApiDataApiMstStypeEntityToJson(
        _$_GetDataApiDataApiMstStypeEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_sortno': instance.apiSortno,
      'api_name': instance.apiName,
      'api_scnt': instance.apiScnt,
      'api_kcnt': instance.apiKcnt,
      'api_equip_type': instance.apiEquipType,
    };

_$_GetDataApiDataApiMstSlotitemEntity
    _$$_GetDataApiDataApiMstSlotitemEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstSlotitemEntity(
          apiId: json['api_id'] as int,
          apiSortno: json['api_sortno'] as int,
          apiName: json['api_name'] as String,
          apiType:
              (json['api_type'] as List<dynamic>).map((e) => e as int).toList(),
          apiTaik: json['api_taik'] as int,
          apiSouk: json['api_souk'] as int,
          apiHoug: json['api_houg'] as int,
          apiRaig: json['api_raig'] as int,
          apiSoku: json['api_soku'] as int,
          apiBaku: json['api_baku'] as int,
          apiTyku: json['api_tyku'] as int,
          apiTais: json['api_tais'] as int,
          apiAtap: json['api_atap'] as int,
          apiHoum: json['api_houm'] as int,
          apiRaim: json['api_raim'] as int,
          apiHouk: json['api_houk'] as int,
          apiRaik: json['api_raik'] as int,
          apiBakk: json['api_bakk'] as int,
          apiSaku: json['api_saku'] as int,
          apiSakb: json['api_sakb'] as int,
          apiLuck: json['api_luck'] as int,
          apiLeng: json['api_leng'] as int,
          apiRare: json['api_rare'] as int,
          apiBroken: (json['api_broken'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiUsebull: json['api_usebull'] as String,
          apiVersion: json['api_version'] as int?,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstSlotitemEntityToJson(
        _$_GetDataApiDataApiMstSlotitemEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_sortno': instance.apiSortno,
      'api_name': instance.apiName,
      'api_type': instance.apiType,
      'api_taik': instance.apiTaik,
      'api_souk': instance.apiSouk,
      'api_houg': instance.apiHoug,
      'api_raig': instance.apiRaig,
      'api_soku': instance.apiSoku,
      'api_baku': instance.apiBaku,
      'api_tyku': instance.apiTyku,
      'api_tais': instance.apiTais,
      'api_atap': instance.apiAtap,
      'api_houm': instance.apiHoum,
      'api_raim': instance.apiRaim,
      'api_houk': instance.apiHouk,
      'api_raik': instance.apiRaik,
      'api_bakk': instance.apiBakk,
      'api_saku': instance.apiSaku,
      'api_sakb': instance.apiSakb,
      'api_luck': instance.apiLuck,
      'api_leng': instance.apiLeng,
      'api_rare': instance.apiRare,
      'api_broken': instance.apiBroken,
      'api_usebull': instance.apiUsebull,
      'api_version': instance.apiVersion,
    };

_$_GetDataApiDataApiMstFurnituregraphEntity
    _$$_GetDataApiDataApiMstFurnituregraphEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstFurnituregraphEntity(
          apiId: json['api_id'] as int,
          apiType: json['api_type'] as int,
          apiNo: json['api_no'] as int,
          apiFilename: json['api_filename'] as String,
          apiVersion: json['api_version'] as String,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstFurnituregraphEntityToJson(
        _$_GetDataApiDataApiMstFurnituregraphEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_type': instance.apiType,
      'api_no': instance.apiNo,
      'api_filename': instance.apiFilename,
      'api_version': instance.apiVersion,
    };

_$_GetDataApiDataApiMstUseitemEntity
    _$$_GetDataApiDataApiMstUseitemEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstUseitemEntity(
          apiId: json['api_id'] as int,
          apiUsetype: json['api_usetype'] as int,
          apiCategory: json['api_category'] as int,
          apiName: json['api_name'] as String,
          apiDescription: (json['api_description'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          apiPrice: json['api_price'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstUseitemEntityToJson(
        _$_GetDataApiDataApiMstUseitemEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_usetype': instance.apiUsetype,
      'api_category': instance.apiCategory,
      'api_name': instance.apiName,
      'api_description': instance.apiDescription,
      'api_price': instance.apiPrice,
    };

_$_GetDataApiDataApiMstPayitemEntity
    _$$_GetDataApiDataApiMstPayitemEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstPayitemEntity(
          apiId: json['api_id'] as int,
          apiType: json['api_type'] as int,
          apiName: json['api_name'] as String,
          apiDescription: json['api_description'] as String,
          apiShopDescription: json['api_shop_description'] as String,
          apiItem:
              (json['api_item'] as List<dynamic>).map((e) => e as int).toList(),
          apiPrice: json['api_price'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstPayitemEntityToJson(
        _$_GetDataApiDataApiMstPayitemEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_type': instance.apiType,
      'api_name': instance.apiName,
      'api_description': instance.apiDescription,
      'api_shop_description': instance.apiShopDescription,
      'api_item': instance.apiItem,
      'api_price': instance.apiPrice,
    };

_$_GetDataApiDataApiMstItemShopEntity
    _$$_GetDataApiDataApiMstItemShopEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstItemShopEntity(
          apiCabinet1: (json['api_cabinet_1'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiCabinet2: (json['api_cabinet_2'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstItemShopEntityToJson(
        _$_GetDataApiDataApiMstItemShopEntity instance) =>
    <String, dynamic>{
      'api_cabinet_1': instance.apiCabinet1,
      'api_cabinet_2': instance.apiCabinet2,
    };

_$_GetDataApiDataApiMstMapareaEntity
    _$$_GetDataApiDataApiMstMapareaEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstMapareaEntity(
          apiId: json['api_id'] as int,
          apiName: json['api_name'] as String,
          apiType: json['api_type'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstMapareaEntityToJson(
        _$_GetDataApiDataApiMstMapareaEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_name': instance.apiName,
      'api_type': instance.apiType,
    };

_$_GetDataApiDataApiMstMapinfoEntity
    _$$_GetDataApiDataApiMstMapinfoEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstMapinfoEntity(
          apiId: json['api_id'] as int,
          apiMapareaId: json['api_maparea_id'] as int,
          apiNo: json['api_no'] as int,
          apiName: json['api_name'] as String,
          apiLevel: json['api_level'] as int,
          apiOpetext: json['api_opetext'] as String,
          apiInfotext: json['api_infotext'] as String,
          apiItem:
              (json['api_item'] as List<dynamic>).map((e) => e as int).toList(),
          apiMaxMaphp: json['api_max_maphp'],
          apiRequiredDefeatCount: json['api_required_defeat_count'],
          apiSallyFlag: (json['api_sally_flag'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstMapinfoEntityToJson(
        _$_GetDataApiDataApiMstMapinfoEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_maparea_id': instance.apiMapareaId,
      'api_no': instance.apiNo,
      'api_name': instance.apiName,
      'api_level': instance.apiLevel,
      'api_opetext': instance.apiOpetext,
      'api_infotext': instance.apiInfotext,
      'api_item': instance.apiItem,
      'api_max_maphp': instance.apiMaxMaphp,
      'api_required_defeat_count': instance.apiRequiredDefeatCount,
      'api_sally_flag': instance.apiSallyFlag,
    };

_$_GetDataApiDataApiMstMapbgmEntity
    _$$_GetDataApiDataApiMstMapbgmEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstMapbgmEntity(
          apiId: json['api_id'] as int,
          apiMapareaId: json['api_maparea_id'] as int,
          apiNo: json['api_no'] as int,
          apiMovingBgm: json['api_moving_bgm'] as int,
          apiMapBgm: (json['api_map_bgm'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiBossBgm: (json['api_boss_bgm'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstMapbgmEntityToJson(
        _$_GetDataApiDataApiMstMapbgmEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_maparea_id': instance.apiMapareaId,
      'api_no': instance.apiNo,
      'api_moving_bgm': instance.apiMovingBgm,
      'api_map_bgm': instance.apiMapBgm,
      'api_boss_bgm': instance.apiBossBgm,
    };

_$_GetDataApiDataApiMstMissionEntity
    _$$_GetDataApiDataApiMstMissionEntityFromJson(Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstMissionEntity(
          apiId: json['api_id'] as int,
          apiDispNo: json['api_disp_no'] as String,
          apiMapareaId: json['api_maparea_id'] as int,
          apiName: json['api_name'] as String,
          apiDetails: json['api_details'] as String,
          apiResetType: json['api_reset_type'] as int,
          apiDamageType: json['api_damage_type'] as int,
          apiTime: json['api_time'] as int,
          apiDeckNum: json['api_deck_num'] as int,
          apiDifficulty: json['api_difficulty'] as int,
          apiUseFuel: (json['api_use_fuel'] as num).toDouble(),
          apiUseBull: (json['api_use_bull'] as num).toDouble(),
          apiWinItem1: (json['api_win_item1'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiWinItem2: (json['api_win_item2'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiWinMatLevel: (json['api_win_mat_level'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiReturnFlag: json['api_return_flag'] as int,
          apiSampleFleet: (json['api_sample_fleet'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstMissionEntityToJson(
        _$_GetDataApiDataApiMstMissionEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_disp_no': instance.apiDispNo,
      'api_maparea_id': instance.apiMapareaId,
      'api_name': instance.apiName,
      'api_details': instance.apiDetails,
      'api_reset_type': instance.apiResetType,
      'api_damage_type': instance.apiDamageType,
      'api_time': instance.apiTime,
      'api_deck_num': instance.apiDeckNum,
      'api_difficulty': instance.apiDifficulty,
      'api_use_fuel': instance.apiUseFuel,
      'api_use_bull': instance.apiUseBull,
      'api_win_item1': instance.apiWinItem1,
      'api_win_item2': instance.apiWinItem2,
      'api_win_mat_level': instance.apiWinMatLevel,
      'api_return_flag': instance.apiReturnFlag,
      'api_sample_fleet': instance.apiSampleFleet,
    };

_$_GetDataApiDataApiMstConstEntity _$$_GetDataApiDataApiMstConstEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetDataApiDataApiMstConstEntity(
      apiDpflagQuest: GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson(
          json['api_dpflag_quest'] as Map<String, dynamic>),
      apiBokoMaxShips: GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson(
          json['api_boko_max_ships'] as Map<String, dynamic>),
      apiParallelQuestMax:
          GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson(
              json['api_parallel_quest_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetDataApiDataApiMstConstEntityToJson(
        _$_GetDataApiDataApiMstConstEntity instance) =>
    <String, dynamic>{
      'api_dpflag_quest': instance.apiDpflagQuest,
      'api_boko_max_ships': instance.apiBokoMaxShips,
      'api_parallel_quest_max': instance.apiParallelQuestMax,
    };

_$_GetDataApiDataApiMstConstApiDpflagQuestEntity
    _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstConstApiDpflagQuestEntity(
          apiStringValue: json['api_string_value'] as String,
          apiIntValue: json['api_int_value'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityToJson(
        _$_GetDataApiDataApiMstConstApiDpflagQuestEntity instance) =>
    <String, dynamic>{
      'api_string_value': instance.apiStringValue,
      'api_int_value': instance.apiIntValue,
    };

_$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity
    _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity(
          apiStringValue: json['api_string_value'] as String,
          apiIntValue: json['api_int_value'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityToJson(
        _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity instance) =>
    <String, dynamic>{
      'api_string_value': instance.apiStringValue,
      'api_int_value': instance.apiIntValue,
    };

_$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity
    _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity(
          apiStringValue: json['api_string_value'] as String,
          apiIntValue: json['api_int_value'] as int,
        );

Map<String, dynamic>
    _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityToJson(
            _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity instance) =>
        <String, dynamic>{
          'api_string_value': instance.apiStringValue,
          'api_int_value': instance.apiIntValue,
        };

_$_GetDataApiDataApiMstShipupgradeEntity
    _$$_GetDataApiDataApiMstShipupgradeEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstShipupgradeEntity(
          apiId: json['api_id'] as int,
          apiCurrentShipId: json['api_current_ship_id'] as int,
          apiOriginalShipId: json['api_original_ship_id'] as int,
          apiUpgradeType: json['api_upgrade_type'] as int,
          apiUpgradeLevel: json['api_upgrade_level'] as int,
          apiDrawingCount: json['api_drawing_count'] as int,
          apiCatapultCount: json['api_catapult_count'] as int,
          apiReportCount: json['api_report_count'] as int,
          apiAviationMatCount: json['api_aviation_mat_count'] as int,
          apiArmsMatCount: json['api_arms_mat_count'] as int,
          apiSortno: json['api_sortno'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstShipupgradeEntityToJson(
        _$_GetDataApiDataApiMstShipupgradeEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_current_ship_id': instance.apiCurrentShipId,
      'api_original_ship_id': instance.apiOriginalShipId,
      'api_upgrade_type': instance.apiUpgradeType,
      'api_upgrade_level': instance.apiUpgradeLevel,
      'api_drawing_count': instance.apiDrawingCount,
      'api_catapult_count': instance.apiCatapultCount,
      'api_report_count': instance.apiReportCount,
      'api_aviation_mat_count': instance.apiAviationMatCount,
      'api_arms_mat_count': instance.apiArmsMatCount,
      'api_sortno': instance.apiSortno,
    };

_$_GetDataApiDataApiMstBgmEntity _$$_GetDataApiDataApiMstBgmEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GetDataApiDataApiMstBgmEntity(
      apiId: json['api_id'] as int,
      apiName: json['api_name'] as String,
    );

Map<String, dynamic> _$$_GetDataApiDataApiMstBgmEntityToJson(
        _$_GetDataApiDataApiMstBgmEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_name': instance.apiName,
    };

_$_GetDataApiDataApiMstEquipShipEntity
    _$$_GetDataApiDataApiMstEquipShipEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstEquipShipEntity(
          apiShipId: json['api_ship_id'] as int,
          apiEquipType: (json['api_equip_type'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstEquipShipEntityToJson(
        _$_GetDataApiDataApiMstEquipShipEntity instance) =>
    <String, dynamic>{
      'api_ship_id': instance.apiShipId,
      'api_equip_type': instance.apiEquipType,
    };

_$_GetDataApiDataApiMstFurnitureEntity
    _$$_GetDataApiDataApiMstFurnitureEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstFurnitureEntity(
          apiId: json['api_id'] as int,
          apiType: json['api_type'] as int,
          apiNo: json['api_no'] as int,
          apiTitle: json['api_title'] as String,
          apiDescription: json['api_description'] as String,
          apiRarity: json['api_rarity'] as int,
          apiPrice: json['api_price'] as int,
          apiSaleflg: json['api_saleflg'] as int,
          apiSeason: json['api_season'] as int,
          apiVersion: json['api_version'] as int,
          apiOutsideId: json['api_outside_id'] as int,
          apiActiveFlag: json['api_active_flag'] as int,
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstFurnitureEntityToJson(
        _$_GetDataApiDataApiMstFurnitureEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_type': instance.apiType,
      'api_no': instance.apiNo,
      'api_title': instance.apiTitle,
      'api_description': instance.apiDescription,
      'api_rarity': instance.apiRarity,
      'api_price': instance.apiPrice,
      'api_saleflg': instance.apiSaleflg,
      'api_season': instance.apiSeason,
      'api_version': instance.apiVersion,
      'api_outside_id': instance.apiOutsideId,
      'api_active_flag': instance.apiActiveFlag,
    };

_$_GetDataApiDataApiMstShipgraphEntity
    _$$_GetDataApiDataApiMstShipgraphEntityFromJson(
            Map<String, dynamic> json) =>
        _$_GetDataApiDataApiMstShipgraphEntity(
          apiId: json['api_id'] as int,
          apiFilename: json['api_filename'] as String,
          apiVersion: (json['api_version'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          apiBattleN: (json['api_battle_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiBattleD: (json['api_battle_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiSortno: json['api_sortno'] as int?,
          apiBokoN: (json['api_boko_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiBokoD: (json['api_boko_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiKaisyuN: (json['api_kaisyu_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiKaisyuD: (json['api_kaisyu_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiKaizoN: (json['api_kaizo_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiKaizoD: (json['api_kaizo_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiMapN: (json['api_map_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiMapD: (json['api_map_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiEnsyufN: (json['api_ensyuf_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiEnsyufD: (json['api_ensyuf_d'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiEnsyueN: (json['api_ensyue_n'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiWeda: (json['api_weda'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiWedb: (json['api_wedb'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiPa:
              (json['api_pa'] as List<dynamic>?)?.map((e) => e as int).toList(),
          apiPab: (json['api_pab'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
        );

Map<String, dynamic> _$$_GetDataApiDataApiMstShipgraphEntityToJson(
        _$_GetDataApiDataApiMstShipgraphEntity instance) =>
    <String, dynamic>{
      'api_id': instance.apiId,
      'api_filename': instance.apiFilename,
      'api_version': instance.apiVersion,
      'api_battle_n': instance.apiBattleN,
      'api_battle_d': instance.apiBattleD,
      'api_sortno': instance.apiSortno,
      'api_boko_n': instance.apiBokoN,
      'api_boko_d': instance.apiBokoD,
      'api_kaisyu_n': instance.apiKaisyuN,
      'api_kaisyu_d': instance.apiKaisyuD,
      'api_kaizo_n': instance.apiKaizoN,
      'api_kaizo_d': instance.apiKaizoD,
      'api_map_n': instance.apiMapN,
      'api_map_d': instance.apiMapD,
      'api_ensyuf_n': instance.apiEnsyufN,
      'api_ensyuf_d': instance.apiEnsyufD,
      'api_ensyue_n': instance.apiEnsyueN,
      'api_weda': instance.apiWeda,
      'api_wedb': instance.apiWedb,
      'api_pa': instance.apiPa,
      'api_pab': instance.apiPab,
    };
