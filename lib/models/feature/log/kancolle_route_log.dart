import 'package:objectbox/objectbox.dart';

@Entity()
class KancolleRouteLogEntity {
  int id;
  int mapId;
  int routeId;
  int formation;

  KancolleRouteLogEntity({
    this.id = 0,
    required this.mapId,
    required this.routeId,
    required this.formation,
  });
}