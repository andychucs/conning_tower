import 'dart:developer';

import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcsapi/port/port_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sea_force_base.freezed.dart';
part 'sea_force_base.g.dart';

@unfreezed
class SeaForceBase with _$SeaForceBase {
  const SeaForceBase._();

  factory SeaForceBase(
      {required SeaForceBaseResource resource,
      required Admiral admiral}) = _SeaForceBase;

  factory SeaForceBase.fromJson(Map<String, dynamic> json) =>
      _$SeaForceBaseFromJson(json);

  void updateAdmiralInfo(PortApiDataApiBasicEntity apiBasic) {
    admiral = admiral.copyWith(
      name: apiBasic.apiNickname,
      level: apiBasic.apiLevel,
      rank: apiBasic.apiRank,
      maxShip: apiBasic.apiMaxChara,
      maxItem: apiBasic.apiMaxSlotitem
    );
  }

  void saveResource() {
    objectbox.saveResource(admiral.name, "fuel", resource.fuel);
    objectbox.saveResource(admiral.name, "ammo", resource.ammo);
    objectbox.saveResource(admiral.name, "steel", resource.steel);
    objectbox.saveResource(admiral.name, "bauxite", resource.bauxite);
  }

  void saveMaterials() {
    objectbox.saveResource(admiral.name, "ic", resource.instantCreateShip);
    objectbox.saveResource(admiral.name, "ir", resource.instantRepairs);
    objectbox.saveResource(admiral.name, "dm", resource.developmentMaterials);
    objectbox.saveResource(admiral.name, "im", resource.improvementMaterials);
  }

  void updateMaterial(List<PortApiDataApiMaterialEntity> updatedMaterial) {
    var fuel = updatedMaterial[0].apiValue;
    var ammo = updatedMaterial[1].apiValue;
    var steel = updatedMaterial[2].apiValue;
    var bauxite = updatedMaterial[3].apiValue;
    var instantCreateShip = updatedMaterial[4].apiValue;
    var instantRepairs = updatedMaterial[5].apiValue;
    var developmentMaterials = updatedMaterial[6].apiValue;
    var improvementMaterials = updatedMaterial[7].apiValue;
    resource = resource.copyWith(
        fuel: fuel,
        ammo: ammo,
        steel: steel,
        bauxite: bauxite,
        instantCreateShip: instantCreateShip,
        instantRepairs: instantRepairs,
        developmentMaterials: developmentMaterials,
        improvementMaterials: improvementMaterials);
    saveResource();
    saveMaterials();
    log(toString());
  }

  void updateResource(List<int> material) {
    var fuel = material[0];
    var ammo = material[1];
    var steel = material[2];
    var bauxite = material[3];
    resource = resource.copyWith(fuel: fuel, ammo: ammo, steel: steel, bauxite: bauxite);
    saveResource();
  }
}

@freezed
class SeaForceBaseResource with _$SeaForceBaseResource {
  const factory SeaForceBaseResource({
    required int fuel,
    required int ammo,
    required int steel,
    required int bauxite,
    required int instantCreateShip,
    required int instantRepairs,
    required int developmentMaterials,
    required int improvementMaterials,
  }) = _SeaForceBaseResource;

  factory SeaForceBaseResource.fromJson(Map<String, dynamic> json) =>
      _$SeaForceBaseResourceFromJson(json);
}

@freezed
class Admiral with _$Admiral {
  const Admiral._();

  const factory Admiral({
    required String name,
    required int level,
    required int rank,
    required int maxShip,
    required int maxItem,
  }) = _Admiral;

  factory Admiral.fromJson(Map<String, dynamic> json) =>
      _$AdmiralFromJson(json);

  String get rankName {
    try {
      return ['元帥', '大将', '中将', '少将', '大佐', '中佐', '新米中佐', '少佐', '中堅少佐', '新米少佐'][rank - 1];
    } catch (e) {
      return 'N/A';
    }
  }
}
