import 'dart:async';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/data/mission.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/fleet.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/operation_queue.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/task_provider.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperationSchedule extends ConsumerStatefulWidget {
  const OperationSchedule({Key? key}) : super(key: key);

  @override
  _OperationScheduleState createState() => _OperationScheduleState();
}

class _OperationScheduleState extends ConsumerState<OperationSchedule> {
  late Timer timer;
  late Map<int, String> remainingTimes;

  @override
  void initState() {
    remainingTimes = {
      for (var squad in [2, 3, 4]) squad: "00:00:00"
    };
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // 更新每个小队任务的剩余时间
      final kancolleData = ref.watch(kancolleDataProvider);
      final queueMap = kancolleData.queue.map;

      queueMap.forEach((squad, operation) {
        final remainingTime = operation.endTime.difference(DateTime.now());

        String remainingTimeString;

        if (remainingTime.isNegative) {
          remainingTimeString = "00:00:00";
        } else {
          remainingTimeString = remainingTimeToString(remainingTime);
        }

        // 更新任务的剩余时间
        remainingTimes[squad] = remainingTimeString;
      });

      // if (remainingTimes[1] == kZeroTime) {
      //   operationQueue.executeOperation(
      //       1,
      //       Operation(
      //           id: "1",
      //           title: "New Op",
      //           endTime: DateTime.now().add(Duration(minutes: 1))));
      // }

      setState(() {}); // 触发重建以更新UI
    });
  }

  String remainingTimeToString(Duration remainingTime) {
    final hours = remainingTime.inHours.toString().padLeft(2, '0');
    final minutes =
        remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        remainingTime.inSeconds.remainder(60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final kancolleData = ref.watch(kancolleDataProvider);
    final queueMap = kancolleData.queue.map;
    final squads = kancolleData.squads;
    if (kancolleData.operationCancel != 999) {
      notification.cancelTaskNotification(missionToTask[kancolleData.operationCancel]);
      kancolleData.operationCancel = 999;
    }
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 500) {
        return GridView.extent(
            shrinkWrap: true,
            maxCrossAxisExtent: 500,
            scrollDirection: Axis.vertical,
            childAspectRatio: 2 / 1,
            children: List.generate(3, (index) {
              final squad = queueMap.keys.elementAt(index);
              final operation = queueMap[squad]!;
              return CupertinoListSection.insetGrouped(
                  header: CupertinoListSectionDescription(squads[squad].name),
                  children: [
                    CupertinoListTile(
                      title: Text('${operation.title}'),
                      additionalInfo: Text('${remainingTimes[squad]}'),
                    ),
                  ]);
            }));
      }

      return Container(
        alignment: Alignment.center,
        color: CupertinoColors.systemGroupedBackground.resolveFrom(context),
        child: ListView.builder(
          shrinkWrap: true,
          physics: constraints.maxHeight < 220 ? null :NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            final squad = index + 2;
            final operation = queueMap[squad]!;
            var squadName = '';
            var missionName = operation.title;
            var missionCode = missionName.length > 2 ? operation.id : missionName;
            if (squads.length >= squad) {
              // print(squads);
              // print(squad);
              squadName = squads[squad-1].name;
            }
            final tasks = ref.read(tasksStateProvider);
            if (tasks.items.isNotEmpty) {
              for (var task in tasks.items) {
                if (task.id == operation.title) {
                  missionName = task.title;
                  EasyThrottle.throttle("set-notification", const Duration(minutes: 1), () {
                    ref.read(taskUtilProvider.notifier).setNotificationExclusive(task.copyWith(time: remainingTimes[squad]!));
                  });
                }
              }
            }
            return CupertinoListSection.insetGrouped(
                margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                footer: CupertinoListSectionDescription(squadName),
                children: [
                  CupertinoListTile(
                    leading: Text(missionCode.toString()),
                    title: Text(missionName),
                    additionalInfo: Text('${remainingTimes[squad]}'),
                  ),
                ]);
          },
        ),
      );
    });
  }
}
