import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_data_entity.freezed.dart';
part 'get_data_entity.g.dart';

@unfreezed
class GetDataEntity with _$GetDataEntity {
  factory GetDataEntity({
    @JsonKey(name: 'api_result') required int apiResult,
    @JsonKey(name: 'api_result_msg') required String apiResultMsg,
    @JsonKey(name: 'api_data') required GetDataApiDataEntity apiData,
  }) = _GetDataEntity;

  static const source = "/api_start2/getData";

  factory GetDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataEntityFromJson(json);
}

@unfreezed
class GetDataApiDataEntity with _$GetDataApiDataEntity {
  factory GetDataApiDataEntity({
    @JsonKey(name: 'api_mst_ship')
    required List<GetDataApiDataApiMstShipEntity> apiMstShip,
    @JsonKey(name: 'api_mst_slotitem_equiptype') dynamic apiMstSlotitemEquiptype,
    @JsonKey(name: 'api_mst_equip_exslot') required List<int> apiMstEquipExslot,
    @JsonKey(name: 'api_mst_equip_exslot_ship') dynamic apiMstEquipExslotShip,
    @JsonKey(name: 'api_mst_stype')
    required List<GetDataApiDataApiMstStypeEntity> apiMstStype,
    @JsonKey(name: 'api_mst_slotitem')
    required List<GetDataApiDataApiMstSlotitemEntity> apiMstSlotitem,
    @JsonKey(name: 'api_mst_furnituregraph') dynamic apiMstFurnituregraph,
    @JsonKey(name: 'api_mst_useitem')
    required List<GetDataApiDataApiMstUseitemEntity> apiMstUseitem,
    @JsonKey(name: 'api_mst_payitem')
    required List<GetDataApiDataApiMstPayitemEntity> apiMstPayitem,
    @JsonKey(name: 'api_mst_item_shop') dynamic apiMstItemShop,
    @JsonKey(name: 'api_mst_maparea')
    required List<GetDataApiDataApiMstMapareaEntity> apiMstMaparea,
    @JsonKey(name: 'api_mst_mapinfo')
    required List<GetDataApiDataApiMstMapinfoEntity> apiMstMapinfo,
    @JsonKey(name: 'api_mst_mapbgm') dynamic apiMstMapbgm,
    @JsonKey(name: 'api_mst_mission')
    required List<GetDataApiDataApiMstMissionEntity> apiMstMission,
    @JsonKey(name: 'api_mst_const') dynamic apiMstConst,
    @JsonKey(name: 'api_mst_shipupgrade') dynamic apiMstShipupgrade,
    @JsonKey(name: 'api_mst_bgm') dynamic apiMstBgm,
    @JsonKey(name: 'api_mst_equip_ship') dynamic apiMstEquipShip,
    @JsonKey(name: 'api_mst_furniture') dynamic apiMstFurniture,
    @JsonKey(name: 'api_mst_shipgraph') dynamic apiMstShipgraph,
  }) = _GetDataApiDataEntity;

  factory GetDataApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataApiDataEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstShipEntity with _$GetDataApiDataApiMstShipEntity {
  factory GetDataApiDataApiMstShipEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_sortno') int? apiSortno,
    @JsonKey(name: 'api_sort_id') required int apiSortId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_yomi') required String apiYomi,
    @JsonKey(name: 'api_stype') required int apiStype,
    @JsonKey(name: 'api_ctype') required int apiCtype,
    @JsonKey(name: 'api_afterlv') int? apiAfterlv,
    @JsonKey(name: 'api_aftershipid') String? apiAftershipid,
    @JsonKey(name: 'api_taik') List<int>? apiTaik,
    @JsonKey(name: 'api_souk') List<int>? apiSouk,
    @JsonKey(name: 'api_houg') List<int>? apiHoug,
    @JsonKey(name: 'api_raig') List<int>? apiRaig,
    @JsonKey(name: 'api_tyku') List<int>? apiTyku,
    @JsonKey(name: 'api_luck') List<int>? apiLuck,
    @JsonKey(name: 'api_soku') int? apiSoku,
    @JsonKey(name: 'api_leng') int? apiLeng,
    @JsonKey(name: 'api_slot_num') int? apiSlotNum,
    @JsonKey(name: 'api_maxeq') List<int>? apiMaxeq,
    @JsonKey(name: 'api_buildtime') int? apiBuildtime,
    @JsonKey(name: 'api_broken') List<int>? apiBroken,
    @JsonKey(name: 'api_powup') List<int>? apiPowup,
    @JsonKey(name: 'api_backs') int? apiBacks,
    @JsonKey(name: 'api_getmes') String? apiGetmes,
    @JsonKey(name: 'api_afterfuel') int? apiAfterfuel,
    @JsonKey(name: 'api_afterbull') int? apiAfterbull,
    @JsonKey(name: 'api_fuel_max') int? apiFuelMax,
    @JsonKey(name: 'api_bull_max') int? apiBullMax,
    @JsonKey(name: 'api_voicef') int? apiVoicef,
  }) = _GetDataApiDataApiMstShipEntity;

  factory GetDataApiDataApiMstShipEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstShipEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstSlotitemEquiptypeEntity
    with _$GetDataApiDataApiMstSlotitemEquiptypeEntity {
  factory GetDataApiDataApiMstSlotitemEquiptypeEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_show_flg') required int apiShowFlg,
  }) = _GetDataApiDataApiMstSlotitemEquiptypeEntity;

  factory GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstSlotitemEquiptypeEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstStypeEntity with _$GetDataApiDataApiMstStypeEntity {
  factory GetDataApiDataApiMstStypeEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_sortno') required int apiSortno,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_scnt') required int apiScnt,
    @JsonKey(name: 'api_kcnt') required int apiKcnt,
    @JsonKey(name: 'api_equip_type') required dynamic apiEquipType,
  }) = _GetDataApiDataApiMstStypeEntity;

  factory GetDataApiDataApiMstStypeEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstStypeEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstSlotitemEntity
    with _$GetDataApiDataApiMstSlotitemEntity {
  factory GetDataApiDataApiMstSlotitemEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_sortno') required int apiSortno,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_type') required List<int> apiType,
    @JsonKey(name: 'api_taik') required int apiTaik,
    @JsonKey(name: 'api_souk') required int apiSouk,
    @JsonKey(name: 'api_houg') required int apiHoug,
    @JsonKey(name: 'api_raig') required int apiRaig,
    @JsonKey(name: 'api_soku') required int apiSoku,
    @JsonKey(name: 'api_baku') required int apiBaku,
    @JsonKey(name: 'api_tyku') required int apiTyku,
    @JsonKey(name: 'api_tais') required int apiTais,
    @JsonKey(name: 'api_atap') required int apiAtap,
    @JsonKey(name: 'api_houm') required int apiHoum,
    @JsonKey(name: 'api_raim') required int apiRaim,
    @JsonKey(name: 'api_houk') required int apiHouk,
    @JsonKey(name: 'api_raik') required int apiRaik,
    @JsonKey(name: 'api_bakk') required int apiBakk,
    @JsonKey(name: 'api_saku') required int apiSaku,
    @JsonKey(name: 'api_sakb') required int apiSakb,
    @JsonKey(name: 'api_luck') required int apiLuck,
    @JsonKey(name: 'api_leng') required int apiLeng,
    @JsonKey(name: 'api_rare') required int apiRare,
    @JsonKey(name: 'api_cost') int? apiCost,
    @JsonKey(name: 'api_distance') int? apiDistance,
    @JsonKey(name: 'api_broken') required List<int> apiBroken,
    @JsonKey(name: 'api_usebull') required String apiUsebull,
    @JsonKey(name: 'api_version') int? apiVersion,
  }) = _GetDataApiDataApiMstSlotitemEntity;

  factory GetDataApiDataApiMstSlotitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstSlotitemEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstFurnituregraphEntity
    with _$GetDataApiDataApiMstFurnituregraphEntity {
  factory GetDataApiDataApiMstFurnituregraphEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_type') required int apiType,
    @JsonKey(name: 'api_no') required int apiNo,
    @JsonKey(name: 'api_filename') required String apiFilename,
    @JsonKey(name: 'api_version') required String apiVersion,
  }) = _GetDataApiDataApiMstFurnituregraphEntity;

  factory GetDataApiDataApiMstFurnituregraphEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstFurnituregraphEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstUseitemEntity
    with _$GetDataApiDataApiMstUseitemEntity {
  factory GetDataApiDataApiMstUseitemEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_usetype') required int apiUsetype,
    @JsonKey(name: 'api_category') required int apiCategory,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_description') required List<String> apiDescription,
    @JsonKey(name: 'api_price') required int apiPrice,
  }) = _GetDataApiDataApiMstUseitemEntity;

  factory GetDataApiDataApiMstUseitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstUseitemEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstPayitemEntity
    with _$GetDataApiDataApiMstPayitemEntity {
  factory GetDataApiDataApiMstPayitemEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_type') required int apiType,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_description') required String apiDescription,
    @JsonKey(name: 'api_shop_description') required String apiShopDescription,
    @JsonKey(name: 'api_item') required List<int> apiItem,
    @JsonKey(name: 'api_price') required int apiPrice,
  }) = _GetDataApiDataApiMstPayitemEntity;

  factory GetDataApiDataApiMstPayitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstPayitemEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstItemShopEntity
    with _$GetDataApiDataApiMstItemShopEntity {
  factory GetDataApiDataApiMstItemShopEntity({
    @JsonKey(name: 'api_cabinet_1') required List<int> apiCabinet1,
    @JsonKey(name: 'api_cabinet_2') required List<int> apiCabinet2,
  }) = _GetDataApiDataApiMstItemShopEntity;

  factory GetDataApiDataApiMstItemShopEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstItemShopEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstMapareaEntity
    with _$GetDataApiDataApiMstMapareaEntity {
  factory GetDataApiDataApiMstMapareaEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_type') required int apiType,
  }) = _GetDataApiDataApiMstMapareaEntity;

  factory GetDataApiDataApiMstMapareaEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstMapareaEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstMapinfoEntity
    with _$GetDataApiDataApiMstMapinfoEntity {
  factory GetDataApiDataApiMstMapinfoEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
    @JsonKey(name: 'api_no') required int apiNo,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_level') required int apiLevel,
    @JsonKey(name: 'api_opetext') required String apiOpetext,
    @JsonKey(name: 'api_infotext') required String apiInfotext,
    @JsonKey(name: 'api_item') required List<int> apiItem,
    @JsonKey(name: 'api_max_maphp') required dynamic apiMaxMaphp,
    @JsonKey(name: 'api_required_defeat_count')
    required dynamic apiRequiredDefeatCount,
    @JsonKey(name: 'api_sally_flag') required List<int> apiSallyFlag,
  }) = _GetDataApiDataApiMstMapinfoEntity;

  factory GetDataApiDataApiMstMapinfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstMapinfoEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstMapbgmEntity with _$GetDataApiDataApiMstMapbgmEntity {
  factory GetDataApiDataApiMstMapbgmEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
    @JsonKey(name: 'api_no') required int apiNo,
    @JsonKey(name: 'api_moving_bgm') required int apiMovingBgm,
    @JsonKey(name: 'api_map_bgm') required List<int> apiMapBgm,
    @JsonKey(name: 'api_boss_bgm') required List<int> apiBossBgm,
  }) = _GetDataApiDataApiMstMapbgmEntity;

  factory GetDataApiDataApiMstMapbgmEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstMapbgmEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstMissionEntity
    with _$GetDataApiDataApiMstMissionEntity {
  factory GetDataApiDataApiMstMissionEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_disp_no') required String apiDispNo,
    @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
    @JsonKey(name: 'api_name') required String apiName,
    @JsonKey(name: 'api_details') required String apiDetails,
    @JsonKey(name: 'api_reset_type') required int apiResetType,
    @JsonKey(name: 'api_damage_type') required int apiDamageType,
    @JsonKey(name: 'api_time') required int apiTime,
    @JsonKey(name: 'api_deck_num') required int apiDeckNum,
    @JsonKey(name: 'api_difficulty') required int apiDifficulty,
    @JsonKey(name: 'api_use_fuel') required double apiUseFuel,
    @JsonKey(name: 'api_use_bull') required double apiUseBull,
    @JsonKey(name: 'api_win_item1') required List<int> apiWinItem1,
    @JsonKey(name: 'api_win_item2') required List<int> apiWinItem2,
    @JsonKey(name: 'api_win_mat_level') required List<int> apiWinMatLevel,
    @JsonKey(name: 'api_return_flag') required int apiReturnFlag,
    @JsonKey(name: 'api_sample_fleet') required List<int> apiSampleFleet,
  }) = _GetDataApiDataApiMstMissionEntity;

  factory GetDataApiDataApiMstMissionEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstMissionEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstConstEntity with _$GetDataApiDataApiMstConstEntity {
  factory GetDataApiDataApiMstConstEntity({
    @JsonKey(name: 'api_dpflag_quest')
    required GetDataApiDataApiMstConstApiDpflagQuestEntity apiDpflagQuest,
    @JsonKey(name: 'api_boko_max_ships')
    required GetDataApiDataApiMstConstApiBokoMaxShipsEntity apiBokoMaxShips,
    @JsonKey(name: 'api_parallel_quest_max')
    required GetDataApiDataApiMstConstApiParallelQuestMaxEntity
        apiParallelQuestMax,
  }) = _GetDataApiDataApiMstConstEntity;

  factory GetDataApiDataApiMstConstEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstConstEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstConstApiDpflagQuestEntity
    with _$GetDataApiDataApiMstConstApiDpflagQuestEntity {
  factory GetDataApiDataApiMstConstApiDpflagQuestEntity({
    @JsonKey(name: 'api_string_value') required String apiStringValue,
    @JsonKey(name: 'api_int_value') required int apiIntValue,
  }) = _GetDataApiDataApiMstConstApiDpflagQuestEntity;

  factory GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstConstApiDpflagQuestEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstConstApiBokoMaxShipsEntity
    with _$GetDataApiDataApiMstConstApiBokoMaxShipsEntity {
  factory GetDataApiDataApiMstConstApiBokoMaxShipsEntity({
    @JsonKey(name: 'api_string_value') required String apiStringValue,
    @JsonKey(name: 'api_int_value') required int apiIntValue,
  }) = _GetDataApiDataApiMstConstApiBokoMaxShipsEntity;

  factory GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstConstApiParallelQuestMaxEntity
    with _$GetDataApiDataApiMstConstApiParallelQuestMaxEntity {
  factory GetDataApiDataApiMstConstApiParallelQuestMaxEntity({
    @JsonKey(name: 'api_string_value') required String apiStringValue,
    @JsonKey(name: 'api_int_value') required int apiIntValue,
  }) = _GetDataApiDataApiMstConstApiParallelQuestMaxEntity;

  factory GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstShipupgradeEntity
    with _$GetDataApiDataApiMstShipupgradeEntity {
  factory GetDataApiDataApiMstShipupgradeEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_current_ship_id') required int apiCurrentShipId,
    @JsonKey(name: 'api_original_ship_id') required int apiOriginalShipId,
    @JsonKey(name: 'api_upgrade_type') required int apiUpgradeType,
    @JsonKey(name: 'api_upgrade_level') required int apiUpgradeLevel,
    @JsonKey(name: 'api_drawing_count') required int apiDrawingCount,
    @JsonKey(name: 'api_catapult_count') required int apiCatapultCount,
    @JsonKey(name: 'api_report_count') required int apiReportCount,
    @JsonKey(name: 'api_aviation_mat_count') required int apiAviationMatCount,
    @JsonKey(name: 'api_arms_mat_count') required int apiArmsMatCount,
    @JsonKey(name: 'api_sortno') required int apiSortno,
  }) = _GetDataApiDataApiMstShipupgradeEntity;

  factory GetDataApiDataApiMstShipupgradeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstShipupgradeEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstBgmEntity with _$GetDataApiDataApiMstBgmEntity {
  factory GetDataApiDataApiMstBgmEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_name') required String apiName,
  }) = _GetDataApiDataApiMstBgmEntity;

  factory GetDataApiDataApiMstBgmEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstBgmEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstEquipShipEntity
    with _$GetDataApiDataApiMstEquipShipEntity {
  factory GetDataApiDataApiMstEquipShipEntity({
    @JsonKey(name: 'api_ship_id') required int apiShipId,
    @JsonKey(name: 'api_equip_type') required List<int> apiEquipType,
  }) = _GetDataApiDataApiMstEquipShipEntity;

  factory GetDataApiDataApiMstEquipShipEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstEquipShipEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstFurnitureEntity
    with _$GetDataApiDataApiMstFurnitureEntity {
  factory GetDataApiDataApiMstFurnitureEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_type') int? apiType,
    @JsonKey(name: 'api_no') int? apiNo,
    @JsonKey(name: 'api_title') String? apiTitle,
    @JsonKey(name: 'api_description') String? apiDescription,
    @JsonKey(name: 'api_rarity') int? apiRarity,
    @JsonKey(name: 'api_price') int? apiPrice,
    @JsonKey(name: 'api_saleflg') int? apiSaleflg,
    @JsonKey(name: 'api_season') int? apiSeason,
    @JsonKey(name: 'api_version') int? apiVersion,
    @JsonKey(name: 'api_outside_id') int? apiOutsideId,
    @JsonKey(name: 'api_active_flag') int? apiActiveFlag,
  }) = _GetDataApiDataApiMstFurnitureEntity;

  factory GetDataApiDataApiMstFurnitureEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstFurnitureEntityFromJson(json);
}

@unfreezed
class GetDataApiDataApiMstShipgraphEntity
    with _$GetDataApiDataApiMstShipgraphEntity {
  factory GetDataApiDataApiMstShipgraphEntity({
    @JsonKey(name: 'api_id') required int apiId,
    @JsonKey(name: 'api_filename') required String apiFilename,
    @JsonKey(name: 'api_version') required List<String> apiVersion,
    @JsonKey(name: 'api_battle_n') List<int>? apiBattleN,
    @JsonKey(name: 'api_battle_d') List<int>? apiBattleD,
    @JsonKey(name: 'api_sortno') int? apiSortno,
    @JsonKey(name: 'api_boko_n') List<int>? apiBokoN,
    @JsonKey(name: 'api_boko_d') List<int>? apiBokoD,
    @JsonKey(name: 'api_kaisyu_n') List<int>? apiKaisyuN,
    @JsonKey(name: 'api_kaisyu_d') List<int>? apiKaisyuD,
    @JsonKey(name: 'api_kaizo_n') List<int>? apiKaizoN,
    @JsonKey(name: 'api_kaizo_d') List<int>? apiKaizoD,
    @JsonKey(name: 'api_map_n') List<int>? apiMapN,
    @JsonKey(name: 'api_map_d') List<int>? apiMapD,
    @JsonKey(name: 'api_ensyuf_n') List<int>? apiEnsyufN,
    @JsonKey(name: 'api_ensyuf_d') List<int>? apiEnsyufD,
    @JsonKey(name: 'api_ensyue_n') List<int>? apiEnsyueN,
    @JsonKey(name: 'api_weda') List<int>? apiWeda,
    @JsonKey(name: 'api_wedb') List<int>? apiWedb,
    @JsonKey(name: 'api_pa') List<int>? apiPa,
    @JsonKey(name: 'api_pab') List<int>? apiPab,
  }) = _GetDataApiDataApiMstShipgraphEntity;

  factory GetDataApiDataApiMstShipgraphEntity.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataApiDataApiMstShipgraphEntityFromJson(json);
}
