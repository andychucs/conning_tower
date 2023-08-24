import 'dart:developer';

import 'package:conning_tower/models/data/kcsapi/port/port_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sea_force_base.freezed.dart';

@unfreezed
class SeaForceBase with _$SeaForceBase {
  const SeaForceBase._();

  factory SeaForceBase({
    required int oil,
    required int ammo,
    required int steel,
    required int bauxite,
    required int instantRepairs,
    required int developmentMaterials,
    required int improvementMaterials,
  }) = _SeaForceBase;

  void updateMaterial(List<PortApiDataApiMaterialEntity> updatedMaterial) {
    oil = updatedMaterial[0].apiValue;
    ammo = updatedMaterial[1].apiValue;
    steel = updatedMaterial[2].apiValue;
    bauxite = updatedMaterial[3].apiValue;
    instantRepairs = updatedMaterial[4].apiValue;
    developmentMaterials = updatedMaterial[5].apiValue;
    improvementMaterials = updatedMaterial[6].apiValue;
    log(toString());
  }
}
