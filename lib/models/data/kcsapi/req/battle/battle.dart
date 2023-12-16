library battle;

import 'package:freezed_annotation/freezed_annotation.dart';

export 'req_battle_midnight_battle_entity.dart';
export 'req_combined_battle_ec_battle_entity.dart';
export 'req_practice_battle_entity.dart';
export 'req_sortie_battle_entity.dart';
export 'req_sortie_battle_result_entity.dart';
export 'req_practice_midnight_battle_entity.dart';
export 'req_sortie_ld_airbattle_entity.dart';
export 'req_combined_battle_result_entity.dart';

part 'battle.freezed.dart';

part 'battle.g.dart';

abstract class GunFireRound {
  late List<int>? apiAtEflag;
  late List<int>? apiAtList;
  late List<List<int>>? apiDfList;
  late List<dynamic>? apiSiList;
  late List<List<int>>? apiClList;
  late List<List<num>>? apiDamage;
}

abstract class AircraftRound {
  late BattleDataAircraftRoundStage1? apiStage1;
  late BattleDataAircraftRoundStage2? apiStage2;
  late BattleDataAircraftRoundStage3? apiStage3;
}

abstract class AircraftRoundDoubleEnemy extends AircraftRound {
  late BattleDataAircraftRoundStage3? apiStage3Combined;
}

abstract class SingleVsSingleBaseModel {
  late int apiDeckId;
  late List<int> apiFormation;
  late List<int> apiFNowhps;
  late List<int> apiFMaxhps;
  late List<int> apiShipKe;
  late List<int> apiShipLv;
  late List<int> apiENowhps;
  late List<int> apiEMaxhps;
}

abstract class SingleVsSingleBattleData extends SingleVsSingleBaseModel {
  late GunFireRoundEntity? apiHougeki1;
  late GunFireRoundEntity? apiHougeki2;
  late GunFireRoundEntity? apiHougeki3;
}

abstract class SingleVsDoubleBattleData extends SingleVsSingleBaseModel {
  late List<int>? apiShipKeCombined;
  late List<int>? apiShipLvCombined;
  late List<int>? apiENowhpsCombined;
  late List<int>? apiEMaxhpsCombined;
}

@unfreezed
class GunFireRoundEntity with _$GunFireRoundEntity implements GunFireRound {
  factory GunFireRoundEntity({
    @JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int>? apiAtList,
    @JsonKey(name: 'api_at_type') List<int>? apiAtType,
    @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
    @JsonKey(name: 'api_damage') List<List<num>>? apiDamage,
  }) = _GunFireRoundEntity;

  factory GunFireRoundEntity.fromJson(Map<String, dynamic> json) =>
      _$GunFireRoundEntityFromJson(json);
}

@unfreezed
class TorpedoRoundEntity with _$TorpedoRoundEntity {
  factory TorpedoRoundEntity({
    @JsonKey(name: 'api_frai') required List<int> apiFrai,
    @JsonKey(name: 'api_fcl') required List<num> apiFcl,
    @JsonKey(name: 'api_fdam') required List<num> apiFdam,
    @JsonKey(name: 'api_fydam') required List<num> apiFydam,
    @JsonKey(name: 'api_erai') required List<int> apiErai,
    @JsonKey(name: 'api_ecl') required List<num> apiEcl,
    @JsonKey(name: 'api_edam') required List<num> apiEdam,
    @JsonKey(name: 'api_eydam') required List<num> apiEydam,
  }) = _TorpedoRoundEntity;

  factory TorpedoRoundEntity.fromJson(Map<String, dynamic> json) =>
      _$TorpedoRoundEntityFromJson(json);
}

@unfreezed
class BattleDataAircraftRoundStage1 with _$BattleDataAircraftRoundStage1 {
  factory BattleDataAircraftRoundStage1({
    required int? apiFCount,
    required int? apiFLostcount,
    required int? apiECount,
    required int? apiELostcount,
    required int? apiDispSeiku,
    required List<int>? apiTouchPlane,
  }) = _BattleDataAircraftRoundStage1;

  factory BattleDataAircraftRoundStage1.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage1FromJson(json);
}

@unfreezed
class BattleDataAircraftRoundStage2 with _$BattleDataAircraftRoundStage2 {
  factory BattleDataAircraftRoundStage2({
    required int? apiFCount,
    required int? apiFLostcount,
    required int? apiECount,
    required int? apiELostcount,
  }) = _BattleDataAircraftRoundStage2;

  factory BattleDataAircraftRoundStage2.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage2FromJson(json);
}

@unfreezed
class BattleDataAircraftRoundStage3 with _$BattleDataAircraftRoundStage3 {
  factory BattleDataAircraftRoundStage3({
    required List<int>? apiFraiFlag,
    required List<int>? apiEraiFlag,
    required List<int>? apiFbakFlag,
    required List<int>? apiEbakFlag,
    required List<int>? apiFclFlag,
    required List<int>? apiEclFlag,
    required List<num>? apiFdam,
    required List<num>? apiEdam,
    List<dynamic>? apiFSpList,
    List<dynamic>? apiESpList,
  }) = _BattleDataAircraftRoundStage3;

  factory BattleDataAircraftRoundStage3.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage3FromJson(json);
}

@unfreezed
class AirBaseAttackRound
    with _$AirBaseAttackRound {
  factory AirBaseAttackRound({
    @JsonKey(name: 'api_base_id') int? apiBaseId,
    @JsonKey(name: 'api_stage_flag') List<int>? apiStageFlag,
    @JsonKey(name: 'api_plane_from') dynamic apiPlaneFrom,
    @JsonKey(name: 'api_squadron_plane') List<AirBasePlane?>? apiSquadronPlane,
    @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1? apiStage1,
    @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
    @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3,
    @JsonKey(name: 'api_stage3_combined')
    BattleDataAircraftRoundStage3? apiStage3Combined,
  }) = _AirBaseAttackRound;

  factory AirBaseAttackRound.fromJson(
      Map<String, dynamic> json) =>
      _$AirBaseAttackRoundFromJson(json);
}

@unfreezed
class AirBasePlane with _$AirBasePlane {
  factory AirBasePlane({
    @JsonKey(name: 'api_mst_id') int? apiMstId,
    @JsonKey(name: 'api_count') int? apiCount,
  }) = _AirBasePlane;

  factory AirBasePlane.fromJson(Map<String, dynamic> json) =>
      _$AirBasePlaneFromJson(json);
}