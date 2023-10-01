import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/port/port_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sea_force_base.freezed.dart';

@unfreezed
class SeaForceBase with _$SeaForceBase {
  const SeaForceBase._();

  factory SeaForceBase({
    required SeaForceBaseResource resource,
    required Commander commander
  }) = _SeaForceBase;

  void updateCommanderInfo(PortApiDataApiBasicEntity apiBasic) {
    commander = commander.copyWith(
      name: apiBasic.apiNickname,
      level: apiBasic.apiLevel,
      rank: apiBasic.apiRank,
      maxShip: apiBasic.apiMaxChara,
      maxItem: apiBasic.apiMaxSlotitem
    );
  }

  void updateMaterial(List<PortApiDataApiMaterialEntity> updatedMaterial) {
    var oil = updatedMaterial[0].apiValue;
    var ammo = updatedMaterial[1].apiValue;
    var steel = updatedMaterial[2].apiValue;
    var bauxite = updatedMaterial[3].apiValue;
    var instantCreateShip = updatedMaterial[4].apiValue;
    var instantRepairs = updatedMaterial[5].apiValue;
    var developmentMaterials = updatedMaterial[6].apiValue;
    var improvementMaterials = updatedMaterial[7].apiValue;
    resource = resource.copyWith(
        oil: oil,
        ammo: ammo,
        steel: steel,
        bauxite: bauxite,
        instantCreateShip: instantCreateShip,
        instantRepairs: instantRepairs,
        developmentMaterials: developmentMaterials,
        improvementMaterials: improvementMaterials);
    log(toString());
  }
}

@freezed
class SeaForceBaseResource with _$SeaForceBaseResource {
  const factory SeaForceBaseResource({
    required int oil,
    required int ammo,
    required int steel,
    required int bauxite,
    required int instantCreateShip,
    required int instantRepairs,
    required int developmentMaterials,
    required int improvementMaterials,
  }) = _SeaForceBaseResource;
}

@freezed
class Commander with _$Commander {
  const Commander._();

  const factory Commander({
    required String name,
    required int level,
    required int rank,
    required int maxShip,
    required int maxItem,
  }) = _Commander;

  String get rankName {
    try {
      return ['元帥', '大将', '中将', '少将', '大佐', '中佐', '新米中佐', '少佐', '中堅少佐', '新米少佐'][rank - 1];
    } catch (e) {
      return 'N/A';
    }
  }
}
