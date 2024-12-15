library battle;

import 'package:freezed_annotation/freezed_annotation.dart';

export 'req_battle_midnight_battle_entity.dart';
export 'req_battle_midnight_sp_midnight_entity.dart';
export 'req_combined_battle_each_battle_entity.dart';
export 'req_combined_battle_each_water_entity.dart';
export 'req_combined_battle_ec_battle_entity.dart';
export 'req_combined_battle_ec_midnight_battle_entity.dart';
export 'req_combined_battle_entity.dart';
export 'req_combined_battle_goback_port_entity.dart';
export 'req_combined_battle_ld_airbattle_entity.dart';
export 'req_combined_battle_midnight_battle_entity.dart';
export 'req_combined_battle_sp_midnight_entity.dart';
export 'req_combined_battle_water_entity.dart';
export 'req_practice_battle_entity.dart';
export 'req_practice_midnight_battle_entity.dart';
export 'req_sortie_airbattle_entity.dart';
export 'req_sortie_battle_entity.dart';
export 'req_sortie_goback_port_entity.dart';
export 'req_sortie_ld_airbattle_entity.dart';
export 'result/req_combined_battle_result_entity.dart';
export 'result/req_sortie_battle_result_entity.dart';
export 'result/req_practice_battle_result_entity.dart';

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
  late BattleDataAircraftRoundStage3? apiStage3Combined;
}

abstract class BattleBasicModel {
  late int apiDeckId;
  late List<int> apiFormation;
  late List<int> apiFNowhps;
  late List<int> apiFMaxhps;
  late List<int> apiShipKe;
  late List<int> apiShipLv;
  late List<dynamic> apiENowhps;
  late List<dynamic> apiEMaxhps;
  late List<int>? apiEscapeIdx;
  late List<List<int>> apiESlot;
}

abstract class DoubleEnemyBattleData extends BattleBasicModel {
  late List<int>? apiShipKeCombined;
  late List<int>? apiShipLvCombined;
  late List<dynamic>? apiENowhpsCombined;
  late List<dynamic>? apiEMaxhpsCombined;
  late List<List<int>>? apiESlotCombined;
}

abstract class DoubleOurBattleData extends BattleBasicModel {
  late List<int>? apiFNowhpsCombined;
  late List<int>? apiFMaxhpsCombined;
  late List<int>? apiEscapeIdxCombined;
}

abstract class SingleVsDoubleBattleData implements DoubleEnemyBattleData {}

abstract class DoubleVsSingleBattleData implements DoubleOurBattleData {}

abstract class DoubleVsDoubleBattleData
    implements DoubleOurBattleData, DoubleEnemyBattleData {}

abstract class FullGunFireRoundBattle implements BattleBasicModel {
  late GunFireRoundEntity? apiHougeki1;
  late GunFireRoundEntity? apiHougeki2;
  late GunFireRoundEntity? apiHougeki3;
}

abstract class NightBattleData implements BattleBasicModel {
  late NightBattleGunFireRoundEntity? apiHougeki;
  late BattleFriendlyInfo? apiFriendlyInfo;
  late FriendlyFleetBattle? apiFriendlyBattle;
}

abstract class NightBattleWithSupportData implements NightBattleData {
  late int? apiNSupportFlag;
  late BattleSupportInfo? apiNSupportInfo;
}

abstract class NormalBattleData implements BattleBasicModel {
  late List<AirBaseAttackRound?>? apiAirBaseAttack;
  late List<int>? apiStageFlag;
  late AircraftRoundData? apiKouku;
  late int? apiSupportFlag;
  late BattleSupportInfo? apiSupportInfo;
  late int? apiOpeningTaisenFlag;
  late GunFireRoundEntity? apiOpeningTaisen;
  late int? apiOpeningFlag;
  late OpeningTorpedoRoundEntity? apiOpeningAtack;
  late AirBaseJetAircraftRound? apiAirBaseInjection;
  late AircraftRoundData? apiInjectionKouku;
  late BattleFriendlyInfo? apiFriendlyInfo;
  late AircraftRoundData? apiFriendlyKouku;
}

abstract class SurfaceForceBattleData implements BattleBasicModel {
  late List<int>? apiHouraiFlag;
  late GunFireRoundEntity? apiHougeki1;
  late GunFireRoundEntity? apiHougeki2;
  late GunFireRoundEntity? apiHougeki3;
  late TorpedoRoundEntity? apiRaigeki;
}

abstract class CarrierOrEscortBattleData implements BattleBasicModel {
  late List<int>? apiHouraiFlag;
  late GunFireRoundEntity? apiHougeki1;
  late TorpedoRoundEntity? apiRaigeki;
  late GunFireRoundEntity? apiHougeki2;
  late GunFireRoundEntity? apiHougeki3;
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
class OpeningTorpedoRoundEntity with _$OpeningTorpedoRoundEntity {
  factory OpeningTorpedoRoundEntity({
    @JsonKey(name: 'api_frai_list_items')
    required List<List<int>?> apiFraiListItems,
    @JsonKey(name: 'api_fcl_list_items')
    required List<List<num>?> apiFclListItems,
    @JsonKey(name: 'api_fdam') required List<num> apiFdam,
    @JsonKey(name: 'api_fydam_list_items')
    required List<List<num>?> apiFydamListItems,
    @JsonKey(name: 'api_erai_list_items')
    required List<List<int>?> apiEraiListItems,
    @JsonKey(name: 'api_ecl_list_items')
    required List<List<num>?> apiEclListItems,
    @JsonKey(name: 'api_edam') required List<num> apiEdam,
    @JsonKey(name: 'api_eydam_list_items')
    required List<List<num>?> apiEydamListItems,
  }) = _OpeningTorpedoRoundEntity;

  factory OpeningTorpedoRoundEntity.fromJson(Map<String, dynamic> json) =>
      _$OpeningTorpedoRoundEntityFromJson(json);
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

  @Deprecated('Use torpedoFireRoundWithItem instead covert to torpedoFireRound')
  factory TorpedoRoundEntity.fromOpening(OpeningTorpedoRoundEntity opening) {
    return TorpedoRoundEntity(
      apiFrai: opening.apiFraiListItems
          .map((e) => e != null ? e.first : -1)
          .toList(),
      apiFcl:
          opening.apiFclListItems.map((e) => e != null ? e.first : 0).toList(),
      apiFdam: opening.apiFdam,
      apiFydam: opening.apiFydamListItems
          .map((e) =>
              e != null ? e.reduce((value, element) => value + element) : 0)
          .toList(),
      apiErai: opening.apiEraiListItems
          .map((e) => e != null ? e.first : -1)
          .toList(),
      apiEcl:
          opening.apiEclListItems.map((e) => e != null ? e.first : 0).toList(),
      apiEdam: opening.apiEdam,
      apiEydam: opening.apiEydamListItems
          .map((e) => e != null ? e.first : 0)
          .toList(),
    );
  }
}

@unfreezed
class BattleDataAircraftRoundStage1 with _$BattleDataAircraftRoundStage1 {
  factory BattleDataAircraftRoundStage1({
    int? apiFCount,
    int? apiFLostcount,
    int? apiECount,
    int? apiELostcount,
    int? apiDispSeiku,
    List<int>? apiTouchPlane,
  }) = _BattleDataAircraftRoundStage1;

  factory BattleDataAircraftRoundStage1.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage1FromJson(json);
}

@unfreezed
class BattleDataAircraftRoundStage2 with _$BattleDataAircraftRoundStage2 {
  factory BattleDataAircraftRoundStage2({
    int? apiFCount,
    int? apiFLostcount,
    int? apiECount,
    int? apiELostcount,
  }) = _BattleDataAircraftRoundStage2;

  factory BattleDataAircraftRoundStage2.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage2FromJson(json);
}

@unfreezed
class BattleDataAircraftRoundStage3 with _$BattleDataAircraftRoundStage3 {
  factory BattleDataAircraftRoundStage3({
    List<int?>? apiFraiFlag,
    List<int?>? apiEraiFlag,
    List<int?>? apiFbakFlag,
    List<int?>? apiEbakFlag,
    List<int?>? apiFclFlag,
    List<int?>? apiEclFlag,
    List<num?>? apiFdam,
    List<num?>? apiEdam,
    List<dynamic>? apiFSpList,
    List<dynamic>? apiESpList,
  }) = _BattleDataAircraftRoundStage3;

  factory BattleDataAircraftRoundStage3.fromJson(Map<String, dynamic> json) =>
      _$BattleDataAircraftRoundStage3FromJson(json);
}

@unfreezed
class AirBaseAttackRound with _$AirBaseAttackRound {
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

  factory AirBaseAttackRound.fromJson(Map<String, dynamic> json) =>
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

@unfreezed
class NightBattleGunFireRoundEntity
    with _$NightBattleGunFireRoundEntity
    implements GunFireRound {
  factory NightBattleGunFireRoundEntity({
    @JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
    @JsonKey(name: 'api_at_list') List<int>? apiAtList,
    @JsonKey(name: 'api_n_mother_list') List<int>? apiNMotherList,
    @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
    @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
    @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
    @JsonKey(name: 'api_sp_list') List<int>? apiSpList,
    @JsonKey(name: 'api_damage') List<List<num>>? apiDamage,
  }) = _NightBattleGunFireRoundEntity;

  factory NightBattleGunFireRoundEntity.fromJson(Map<String, dynamic> json) =>
      _$NightBattleGunFireRoundEntityFromJson(json);
}

@unfreezed
class AirBaseJetAircraftRound with _$AirBaseJetAircraftRound {
  factory AirBaseJetAircraftRound({
    dynamic apiPlaneFrom,
    List<AirBasePlane?>? apiAirBaseData,
    BattleDataAircraftRoundStage1? apiStage1,
    BattleDataAircraftRoundStage2? apiStage2,
    BattleDataAircraftRoundStage3? apiStage3,
    BattleDataAircraftRoundStage3? apiStage3Combined,
  }) = _AirBaseJetAircraftRound;

  factory AirBaseJetAircraftRound.fromJson(Map<String, dynamic> json) =>
      _$AirBaseJetAircraftRoundFromJson(json);
}

@unfreezed
class AircraftRoundData with _$AircraftRoundData implements AircraftRound {
  factory AircraftRoundData({
    @JsonKey(name: 'api_plane_from') dynamic apiPlaneFrom,
    @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1? apiStage1,
    @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
    @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3,
    @JsonKey(name: 'api_stage3_combined')
    BattleDataAircraftRoundStage3? apiStage3Combined,
  }) = _AircraftRoundData;

  factory AircraftRoundData.fromJson(Map<String, dynamic> json) =>
      _$AircraftRoundDataFromJson(json);
}

@freezed
class BattleSupportInfo with _$BattleSupportInfo {
  const factory BattleSupportInfo({
    AircraftRoundData? apiSupportAiratack,
    BattleGunfireSupport? apiSupportHourai,
  }) = _BattleSupportInfo;

  factory BattleSupportInfo.fromJson(Map<String, dynamic> json) =>
      _$BattleSupportInfoFromJson(json);
}

@freezed
class BattleGunfireSupport with _$BattleGunfireSupport {
  const factory BattleGunfireSupport({
    int? apiDeckId,
    List<int>? apiShipId,
    List<int>? apiUndressingFlag,
    List<int>? apiClList,
    List<num>? apiDamage,
  }) = _BattleGunfireSupport;

  factory BattleGunfireSupport.fromJson(Map<String, dynamic> json) =>
      _$BattleGunfireSupportFromJson(json);
}

@freezed
class FriendlyFleetBattle with _$FriendlyFleetBattle {
  const factory FriendlyFleetBattle({
    dynamic apiFlarePos,
    GunFireRoundEntity? apiHougeki,
  }) = _FriendlyFleetBattle;

  factory FriendlyFleetBattle.fromJson(Map<String, dynamic> json) =>
      _$FriendlyFleetBattleFromJson(json);
}

@freezed
class BattleFriendlyInfo with _$BattleFriendlyInfo {
  const factory BattleFriendlyInfo({
    int? apiProductionType,
    required List<int> apiShipId,
    required List<int> apiShipLv,
    required List<int> apiNowhps,
    required List<int> apiMaxhps,
    List<List<int>>? apiSlot,
    List<int>? apiSlotEx,
    dynamic apiParam,
    List<int?>? apiVoiceId,
    List<int?>? apiVoicePNo,
  }) = _BattleFriendlyInfo;

  factory BattleFriendlyInfo.fromJson(Map<String, dynamic> json) =>
      _$BattleFriendlyInfoFromJson(json);
}
