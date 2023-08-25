import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/port/port_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sea_force_base.freezed.dart';

@unfreezed
class SeaForceBase with _$SeaForceBase {
  const SeaForceBase._();

  factory SeaForceBase({
    required SeaForceBaseResource resource,
  }) = _SeaForceBase;

  void updateMaterial(List<PortApiDataApiMaterialEntity> updatedMaterial) {
    var oil = updatedMaterial[0].apiValue;
    var ammo = updatedMaterial[1].apiValue;
    var steel = updatedMaterial[2].apiValue;
    var bauxite = updatedMaterial[3].apiValue;
    var instantRepairs = updatedMaterial[4].apiValue;
    var developmentMaterials = updatedMaterial[5].apiValue;
    var improvementMaterials = updatedMaterial[6].apiValue;
    resource = resource.copyWith(
        oil: oil,
        ammo: ammo,
        steel: steel,
        bauxite: bauxite,
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
    required int instantRepairs,
    required int developmentMaterials,
    required int improvementMaterials,
  }) = _SeaForceBaseResource;
}
