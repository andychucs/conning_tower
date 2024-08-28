import 'dart:convert';

import 'package:conning_tower/models/feature/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/kancolle/data.dart';
import 'package:conning_tower/models/feature/kancolle/data_info.dart';
import 'package:conning_tower/models/feature/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/kancolle/operation_queue.dart';
import 'package:conning_tower/models/feature/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

import '../main.dart';

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
      fuel: 0,
      ammo: 0,
      steel: 0,
      bauxite: 0,
      instantCreateShip: 0,
      instantRepairs: 0,
      developmentMaterials: 0,
      improvementMaterials: 0);
  const admiral = Admiral(name: "", level: 1, rank: 10, maxShip: 0, maxItem: 0);
  SeaForceBase seaForceBase = SeaForceBase(resource: resource, admiral: admiral);

  try {
    final localSeaForceBase = localStorage.getString("KC_SEA_FORCE_BASE_CACHE");
    if (localSeaForceBase != null) {
      seaForceBase = SeaForceBase.fromJson(jsonDecode(localSeaForceBase));
      print("load port info: $localSeaForceBase");
    }
  }
  catch (e) {
    print(e);
  }


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
