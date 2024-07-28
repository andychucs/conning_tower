import 'package:conning_tower/models/feature/dashboard/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data_info.dart';
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
      endTime: tz.TZDateTime.now(tz.local),
    ),
    3: Operation(
      id: 999,
      endTime: tz.TZDateTime.now(tz.local),
    ),
    4: Operation(
      id: 999,
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
  const admiral = Admiral(name: "", level: 1, rank: 10, maxShip: 0, maxItem: 0);
  final seaForceBase = SeaForceBase(resource: resource, admiral: admiral);
  final fleet = Fleet(ships: [], equipment: {});
  final dataInfo = DataInfo();

  return KancolleData(
    queue: queue,
    squads: squads,
    ref: ref,
    seaForceBase: seaForceBase,
    fleet: fleet, dataInfo: dataInfo, battleInfo: BattleInfo(),
  );
});
