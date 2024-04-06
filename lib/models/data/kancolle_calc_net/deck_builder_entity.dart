import 'package:conning_tower/models/feature/dashboard/kancolle/equipment.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_builder_entity.freezed.dart';

part 'deck_builder_entity.g.dart';

@unfreezed
class DeckBuilderEntity with _$DeckBuilderEntity {
  factory DeckBuilderEntity({
    int? version,
    DeckBuilderFleetEntity? f1,
    DeckBuilderFleetEntity? f2,
    DeckBuilderFleetEntity? f3,
    DeckBuilderFleetEntity? f4,
  }) = _DeckBuilderEntity;

  factory DeckBuilderEntity.fromJson(Map<String, dynamic> json) =>
      _$DeckBuilderEntityFromJson(json);

  factory DeckBuilderEntity.fromSuads(List<Squad> squads) {
    const version = 4;
    var deckBuilder = DeckBuilderEntity(version: version);
    if (squads.isNotEmpty) {
      deckBuilder = deckBuilder.copyWith(f1: DeckBuilderFleetEntity.fromSquad(squads[0]));
      if (squads.length > 1) {
        deckBuilder = deckBuilder.copyWith(f2: DeckBuilderFleetEntity.fromSquad(squads[1]));
      }
      if (squads.length > 2) {
        deckBuilder = deckBuilder.copyWith(f3: DeckBuilderFleetEntity.fromSquad(squads[2]));
      }
      if (squads.length > 3) {
        deckBuilder = deckBuilder.copyWith(f4: DeckBuilderFleetEntity.fromSquad(squads[3]));
      }
    }
    return deckBuilder;
  }
}

@unfreezed
class DeckBuilderFleetEntity with _$DeckBuilderFleetEntity {
  factory DeckBuilderFleetEntity({
    DeckBuilderFleetShipEntity? s1,
    DeckBuilderFleetShipEntity? s2,
    DeckBuilderFleetShipEntity? s3,
    DeckBuilderFleetShipEntity? s4,
    DeckBuilderFleetShipEntity? s5,
    DeckBuilderFleetShipEntity? s6,
    DeckBuilderFleetShipEntity? s7,
  }) = _DeckBuilderFleetEntity;

  factory DeckBuilderFleetEntity.fromJson(Map<String, dynamic> json) =>
      _$DeckBuilderFleetEntityFromJson(json);

  factory DeckBuilderFleetEntity.fromSquad(Squad squad) {
    final ships = squad.ships;
    var fleet = DeckBuilderFleetEntity();
    if (ships.isNotEmpty) {
      fleet = fleet.copyWith(s1: DeckBuilderFleetShipEntity.fromShip(ships[0]));
      if (ships.length > 1) {
        fleet = fleet.copyWith(s2: DeckBuilderFleetShipEntity.fromShip(ships[1]));
      }
      if (ships.length > 2) {
        fleet = fleet.copyWith(s3: DeckBuilderFleetShipEntity.fromShip(ships[2]));
      }
      if (ships.length > 3) {
        fleet = fleet.copyWith(s4: DeckBuilderFleetShipEntity.fromShip(ships[3]));
      }
      if (ships.length > 4) {
        fleet = fleet.copyWith(s5: DeckBuilderFleetShipEntity.fromShip(ships[4]));
      }
      if (ships.length > 5) {
        fleet = fleet.copyWith(s6: DeckBuilderFleetShipEntity.fromShip(ships[5]));
      }
      if (ships.length > 6) {
        fleet = fleet.copyWith(s7: DeckBuilderFleetShipEntity.fromShip(ships[6]));
      }
    }
    return fleet;

  }
}

@unfreezed
class DeckBuilderFleetShipEntity with _$DeckBuilderFleetShipEntity {
  factory DeckBuilderFleetShipEntity({
    int? id,
    int? lv,
    int? luck,
    DeckBuilderItemsEntity? items,
  }) = _DeckBuilderFleetShipEntity;

  factory DeckBuilderFleetShipEntity.fromJson(Map<String, dynamic> json) =>
      _$DeckBuilderFleetShipEntityFromJson(json);

  factory DeckBuilderFleetShipEntity.fromShip(Ship ship) {
    return DeckBuilderFleetShipEntity(
      id: ship.shipId,
      lv: ship.level,
      luck: ship.currentLuck,
      items: DeckBuilderItemsEntity.fromShip(ship),
    );
  }
}

@unfreezed
class DeckBuilderItemsEntity with _$DeckBuilderItemsEntity {
  factory DeckBuilderItemsEntity({
    DeckBuilderItemEntity? i1,
    DeckBuilderItemEntity? i2,
    DeckBuilderItemEntity? i3,
    DeckBuilderItemEntity? i4,
    DeckBuilderItemEntity? i5,
    DeckBuilderItemEntity? ix,
  }) = _DeckBuilderItemsEntity;

  factory DeckBuilderItemsEntity.fromJson(Map<String, dynamic> json) =>
      _$DeckBuilderItemsEntityFromJson(json);

  factory DeckBuilderItemsEntity.fromShip(Ship ship) {
    if (ship.equipment == null) return DeckBuilderItemsEntity();
    var items = DeckBuilderItemsEntity(
      i1: ship.equipment!.isNotEmpty ? DeckBuilderItemEntity.fromEquipment(ship.equipment![0]) : null,
      i2: ship.equipment!.length > 1 ? DeckBuilderItemEntity.fromEquipment(ship.equipment![1]) : null,
      i3: ship.equipment!.length > 2 ? DeckBuilderItemEntity.fromEquipment(ship.equipment![2]) : null,
      i4: ship.equipment!.length > 3 ? DeckBuilderItemEntity.fromEquipment(ship.equipment![3]) : null,
      i5: ship.equipment!.length > 4 ? DeckBuilderItemEntity.fromEquipment(ship.equipment![4]) : null,
    );
    if (ship.exEquipment != null) {
      items = items.copyWith(
        ix: ship.exEquipment!.isNotEmpty ? DeckBuilderItemEntity.fromEquipment(ship.exEquipment![0]) : null,
      );
    }
    return items;
  }

}

@unfreezed
class DeckBuilderItemEntity with _$DeckBuilderItemEntity {
  factory DeckBuilderItemEntity({
    int? id,
    int? rf,
    int? mas,
  }) = _DeckBuilderItemEntity;

  factory DeckBuilderItemEntity.fromJson(Map<String, dynamic> json) =>
      _$DeckBuilderItemEntityFromJson(json);

  factory DeckBuilderItemEntity.fromEquipment(Equipment equipment) {
    return DeckBuilderItemEntity(
      id: equipment.itemId,
      rf: equipment.level,
      mas: equipment.proficiency,
    );
  }
}
