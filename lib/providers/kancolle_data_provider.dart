import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/operation_queue.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

final kancolleDataProvider = StateProvider<KancolleData>((ref) {
  final OperationQueue queue = OperationQueue(map: {
    2: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
    3: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
    4: Operation(
      id: 999,
      code: '--',
      endTime: tz.TZDateTime.now(tz.local),
    ),
  });
  final List<Squad> squads = [];
  const resource = SeaForceBaseResource(
      oil: 0,
      ammo: 0,
      steel: 0,
      bauxite: 0,
      instantCreateShip: 0,
      instantRepairs: 0,
      developmentMaterials: 0,
      improvementMaterials: 0);
  const commander = Commander(name: "T", level: 1, rank: 10, maxShip: 100, maxItem: 590);
  final seaForceBase = SeaForceBase(resource: resource, commander: commander);
  final fleet = Fleet(ships: [], items: []);

  return KancolleData(
    queue: queue,
    squads: squads,
    ref: ref,
    seaForceBase: seaForceBase,
    fleet: fleet, kcwikiData: KcwikiData(ships: []),
  );
});
