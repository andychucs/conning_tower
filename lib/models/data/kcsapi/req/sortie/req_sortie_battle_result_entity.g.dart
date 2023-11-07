// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_sortie_battle_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReqSortieBattleResultEntity _$$_ReqSortieBattleResultEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ReqSortieBattleResultEntity(
      apiResult: json['api_result'] as int,
      apiResultMsg: json['api_result_msg'] as String,
      apiData: ReqSortieBattleResultApiDataEntity.fromJson(
          json['api_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReqSortieBattleResultEntityToJson(
        _$_ReqSortieBattleResultEntity instance) =>
    <String, dynamic>{
      'api_result': instance.apiResult,
      'api_result_msg': instance.apiResultMsg,
      'api_data': instance.apiData,
    };

_$_ReqSortieBattleResultApiDataEntity
    _$$_ReqSortieBattleResultApiDataEntityFromJson(Map<String, dynamic> json) =>
        _$_ReqSortieBattleResultApiDataEntity(
          apiShipId: (json['api_ship_id'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiWinRank: json['api_win_rank'] as String,
          apiGetExp: json['api_get_exp'] as int,
          apiMvp: json['api_mvp'] as int,
          apiMemberLv: json['api_member_lv'] as int,
          apiMemberExp: json['api_member_exp'] as int,
          apiGetBaseExp: json['api_get_base_exp'] as int,
          apiGetShipExp: (json['api_get_ship_exp'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          apiGetExpLvup: json['api_get_exp_lvup'] as List<dynamic>,
          apiDests: json['api_dests'] as int,
          apiDestsf: json['api_destsf'] as int,
          apiQuestName: json['api_quest_name'] as String,
          apiQuestLevel: json['api_quest_level'] as int,
          apiEnemyInfo: ReqSortieBattleResultApiDataApiEnemyInfoEntity.fromJson(
              json['api_enemy_info'] as Map<String, dynamic>),
          apiFirstClear: json['api_first_clear'] as int,
          apiMapcellIncentive: json['api_mapcell_incentive'] as int,
          apiGetFlag: (json['api_get_flag'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
          apiGetShip: json['api_get_ship'] == null
              ? null
              : ReqSortieBattleResultApiDataApiGetShipEntity.fromJson(
                  json['api_get_ship'] as Map<String, dynamic>),
          apiGetUseitem: json['api_get_useitem'] == null
              ? null
              : ReqSortieBattleResultApiDataApiGetUseitemEntity.fromJson(
                  json['api_get_useitem'] as Map<String, dynamic>),
          apiGetEventflag: json['api_get_eventflag'] as int?,
          apiGetExmapRate: json['api_get_exmap_rate'] as int?,
          apiGetExmapUseitemId: json['api_get_exmap_useitem_id'] as int?,
          apiEscapeFlag: json['api_escape_flag'] as int?,
          apiEscape: json['api_escape'],
        );

Map<String, dynamic> _$$_ReqSortieBattleResultApiDataEntityToJson(
        _$_ReqSortieBattleResultApiDataEntity instance) =>
    <String, dynamic>{
      'api_ship_id': instance.apiShipId,
      'api_win_rank': instance.apiWinRank,
      'api_get_exp': instance.apiGetExp,
      'api_mvp': instance.apiMvp,
      'api_member_lv': instance.apiMemberLv,
      'api_member_exp': instance.apiMemberExp,
      'api_get_base_exp': instance.apiGetBaseExp,
      'api_get_ship_exp': instance.apiGetShipExp,
      'api_get_exp_lvup': instance.apiGetExpLvup,
      'api_dests': instance.apiDests,
      'api_destsf': instance.apiDestsf,
      'api_quest_name': instance.apiQuestName,
      'api_quest_level': instance.apiQuestLevel,
      'api_enemy_info': instance.apiEnemyInfo,
      'api_first_clear': instance.apiFirstClear,
      'api_mapcell_incentive': instance.apiMapcellIncentive,
      'api_get_flag': instance.apiGetFlag,
      'api_get_ship': instance.apiGetShip,
      'api_get_useitem': instance.apiGetUseitem,
      'api_get_eventflag': instance.apiGetEventflag,
      'api_get_exmap_rate': instance.apiGetExmapRate,
      'api_get_exmap_useitem_id': instance.apiGetExmapUseitemId,
      'api_escape_flag': instance.apiEscapeFlag,
      'api_escape': instance.apiEscape,
    };

_$_ReqSortieBattleResultApiDataApiEnemyInfoEntity
    _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity(
          apiLevel: json['api_level'] as String,
          apiRank: json['api_rank'] as String,
          apiDeckName: json['api_deck_name'] as String,
        );

Map<String, dynamic> _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityToJson(
        _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity instance) =>
    <String, dynamic>{
      'api_level': instance.apiLevel,
      'api_rank': instance.apiRank,
      'api_deck_name': instance.apiDeckName,
    };

_$_ReqSortieBattleResultApiDataApiGetUseitemEntity
    _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleResultApiDataApiGetUseitemEntity(
          apiUseitemId: json['api_useitem_id'] as int?,
          apiUseitemName: json['api_useitem_name'] as String?,
        );

Map<String, dynamic> _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityToJson(
        _$_ReqSortieBattleResultApiDataApiGetUseitemEntity instance) =>
    <String, dynamic>{
      'api_useitem_id': instance.apiUseitemId,
      'api_useitem_name': instance.apiUseitemName,
    };

_$_ReqSortieBattleResultApiDataApiGetShipEntity
    _$$_ReqSortieBattleResultApiDataApiGetShipEntityFromJson(
            Map<String, dynamic> json) =>
        _$_ReqSortieBattleResultApiDataApiGetShipEntity(
          apiShipId: json['api_ship_id'] as int,
          apiShipType: json['api_ship_type'] as String,
          apiShipName: json['api_ship_name'] as String,
          apiShipGetmes: json['api_ship_getmes'] as String,
        );

Map<String, dynamic> _$$_ReqSortieBattleResultApiDataApiGetShipEntityToJson(
        _$_ReqSortieBattleResultApiDataApiGetShipEntity instance) =>
    <String, dynamic>{
      'api_ship_id': instance.apiShipId,
      'api_ship_type': instance.apiShipType,
      'api_ship_name': instance.apiShipName,
      'api_ship_getmes': instance.apiShipGetmes,
    };
