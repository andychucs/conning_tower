import 'package:objectbox/objectbox.dart';

import '../../../generated/l10n.dart';

enum Resource {
  fuel,
  ammo,
  steel,
  bauxite,
  instantCreateShip,
  instantRepairs,
  developmentMaterials,
  improvementMaterials
}

const allResource = [
  "fuel",
  "ammo",
  "steel",
  "bauxite",
  "ic",
  "ir",
  "dm",
  "im"
];

final resourceNameMap = {
  "fuel": S.current.KCResourceFuel,
  "ammo": S.current.KCResourceAmmo,
  "steel": S.current.KCResourceSteel,
  "bauxite": S.current.KCResourceBauxite,
  "ic": S.current.KCResourceInstantCreateShip,
  "ir": S.current.KCResourceInstantRepair,
  "dm": S.current.KCResourceDevelopmentMaterial,
  "im": S.current.KCResourceImprovementMaterial
};

@Entity()
class KancolleResourceLogEntity {
  int id;
  @Property(type: PropertyType.date)
  DateTime time;
  String admiral;
  String resource;
  int open;
  int close;
  int high;
  int low;

  KancolleResourceLogEntity(
      {this.id = 0,
      required this.time,
      required this.admiral,
      required this.resource,
      required this.open,
      required this.close,
      required this.high,
      required this.low})
      : assert(allResource.contains(resource));
  factory KancolleResourceLogEntity.fromJson(Map<String, dynamic> json) {
    return KancolleResourceLogEntity(
      time: json['time'],
      admiral: json['admiral'],
      resource: json['resource'],
      open: json['open'],
      close: json['close'],
      high: json['high'],
      low: json['low'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'time': time.toString(),
      'admiral': admiral,
      'resource': resource,
      'open': open,
      'close': close,
      'high': high,
      'low': low,
    };
  }
}
