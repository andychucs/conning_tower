library battle;

import 'package:freezed_annotation/freezed_annotation.dart';

export 'req_battle_midnight_battle_entity.dart';
export 'req_combined_battle_ec_battle_entity.dart';
export 'req_practice_battle_entity.dart';
export 'req_sortie_battle_entity.dart';
export 'req_sortie_battle_result_entity.dart';
export 'req_practice_midnight_battle_entity.dart';

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
