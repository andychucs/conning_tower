import 'package:objectbox/objectbox.dart';

import '../../../generated/l10n.dart';

enum ShipLogType { drop, build, bonus, destroy, refit, sunken }

const kShipLogTypeMap = {
  ShipLogType.drop: 0,
  ShipLogType.build: 1,
  ShipLogType.bonus: 2,
  ShipLogType.destroy: 3,
  ShipLogType.refit: 4,
  ShipLogType.sunken: 5
};

final shipLogTypeNameMap = {
  0: S.current.TextDrop,
  1: S.current.TextBuild,
  2: S.current.TextBonus,
  3: S.current.TextDestroy,
  4: S.current.TextRefit,
  5: S.current.TextSunken
};

@Entity()
class KancolleShipLogEntity {
  int id;
  @Property(type: PropertyType.date)
  DateTime dateTime;
  String admiral;
  int type;
  String shipName;

  KancolleShipLogEntity({
    this.id = 0,
    required this.dateTime,
    required this.admiral,
    required this.type,
    required this.shipName,
  });
}
