import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/operation_queue.dart';
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
  final List<Squad> squads = [Squad(id: 1, name: '第1艦隊')];

  return KancolleData(
      queue: queue, squads: squads, operationCancel: 999, ref: ref);
});