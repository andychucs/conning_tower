import 'dart:async';
import 'package:conning_tower/data/mission.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperationPage extends ConsumerWidget {
  const OperationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, Task> taskMap = Map.fromIterable(
        ref.read(tasksStateProvider).items,
        key: (task) => task.id);
    return OperationSchedule(taskMap: taskMap);
  }
}

class OperationSchedule extends ConsumerStatefulWidget {
  final Map<String, Task> taskMap;
  const OperationSchedule({Key? key, required this.taskMap}) : super(key: key);

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
      final queueMap =
      ref.watch(kancolleDataProvider.select((data) => data.queue.map));
      queueMap.forEach((squad, operation) {
        EasyThrottle.throttle(
            "set-notification", const Duration(minutes: 1), () {
          notification
              .setNotificationExclusive(widget.taskMap[operation.code]!);
        });

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
      if (mounted) setState(() {}); // 触发重建以更新UI
    });
  }

  static String remainingTimeToString(Duration remainingTime) {
    final hours = remainingTime.inHours.toString().padLeft(2, '0');
    final minutes =
        remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        remainingTime.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final queueMap =
        ref.watch(kancolleDataProvider.select((data) => data.queue.map));
    final squads =
        ref.watch(kancolleDataProvider.select((data) => data.squads));

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        color: CupertinoColors.systemGroupedBackground.resolveFrom(context),
        child: ListView.builder(
          shrinkWrap: true,
          physics: constraints.maxHeight < 220
              ? null
              : NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            final squad = index + 2;
            final operation = queueMap[squad]!;
            var squadName = '-';
            String? missionName = '--';
            var missionCode = '-';
            // print(missionCode);
            // print(operation);

            if (operation.id < 999) {
              missionCode = operation.code;
              if (squads.length >= squad) {
                squadName = squads[squad - 1].name;
              }

              missionName = widget.taskMap[operation.code]?.title;
            }
            return CupertinoListSection.insetGrouped(
                margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                footer: CupertinoListSectionDescription(squadName),
                children: [
                  CupertinoListTile(
                    leading: Text(missionCode),
                    title: Text(missionName ?? '--'),
                    additionalInfo: Text('${remainingTimes[squad]}'),
                  ),
                ]);
          },
        ),
      );
    });
  }
}
