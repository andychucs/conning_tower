import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';
part 'equipment.g.dart';

@unfreezed
class Equipment with _$Equipment {
  const Equipment._();

  factory Equipment({
    required int id,
    int? itemId,
    int? locked,
    int? level,
    int? proficiency,
    String? name,
    List<int>? type,
    int? hp, // api_taik 耐久
    int? armor, // api_souk 装甲
    int? firepower, // api_houg 火力
    int? torpedo, // api_raig 雷装
    int? speed, // api_soku 速力
    int? bomber, // api_baku 爆装
    int? aa, // api_tyku 对空
    int? asw, // api_tais 对潜
    int? atap, // api_atap 不明
    int? hit, // api_houm 命中 対爆(局地戦闘機の場合)
    int? torpedoHit, // api_raim 雷击命中
    int? evasion, // api_houk 回避 迎撃(局地戦闘機の場合)
    int? torpedoEvasion, // api_raik 雷击回避
    int? bombEvasion, // api_bakk 爆击回避
    int? los, // api_saku 索敌
    int? antiLos, // api_sakb 索敌妨害
    int? luck, // api_luck 运
    int? range, // api_leng 射程
    int? cost, // api_cost 航空機のコスト
    int? distance, // api_distance 航空機の航続距離
  }) = _Equipment;
  

  factory Equipment.fromApi(SlotItem item, Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfoMap) {
    Equipment equipment = Equipment(id: item.apiId, itemId: item.apiSlotitemId, locked: item.apiLocked, level: item.apiLevel, proficiency: item.apiAlv);
    if (slotItemInfoMap != null) {
      final slotItemInfo = slotItemInfoMap[item.apiSlotitemId];
      if (slotItemInfo != null) {
        equipment = equipment.copyWith(
            name: slotItemInfo.apiName,
            type: slotItemInfo.apiType,
            hp: slotItemInfo.apiTaik,
            armor: slotItemInfo.apiSouk,
            firepower: slotItemInfo.apiHoug,
            torpedo: slotItemInfo.apiRaig,
            speed: slotItemInfo.apiSoku,
            bomber: slotItemInfo.apiBaku,
            aa: slotItemInfo.apiTyku,
            asw: slotItemInfo.apiTais,
            atap: slotItemInfo.apiAtap,
            hit: slotItemInfo.apiHoum,
            torpedoHit: slotItemInfo.apiRaim,
            evasion: slotItemInfo.apiHouk,
            torpedoEvasion: slotItemInfo.apiRaik,
            bombEvasion: slotItemInfo.apiBakk,
            los: slotItemInfo.apiSaku,
            antiLos: slotItemInfo.apiSakb,
            luck: slotItemInfo.apiLuck,
            range: slotItemInfo.apiLeng,
            cost: slotItemInfo.apiCost,
            distance: slotItemInfo.apiDistance
        );
      }
    }
    return equipment;
  }

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);

  bool get isAirCraft => (type?[4] ?? 0) > 0;

}


