import 'dart:async';
import 'package:conning_tower/models/feature/dashboard/kancolle/operation_queue.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperationPage extends ConsumerWidget {
  const OperationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queueMap =
        ref.watch(kancolleDataProvider.select((data) => data.queue.map));
    return OperationSchedule(
      queueMap: queueMap,
    );
  }
}

class OperationSchedule extends ConsumerStatefulWidget {
  final Map<int, Operation> queueMap;
  const OperationSchedule({Key? key, required this.queueMap}) : super(key: key);

  @override
  OperationScheduleState createState() => OperationScheduleState();
}

class OperationScheduleState extends ConsumerState<OperationSchedule> {
  late Timer timer;
  late Map<int, String> remainingTimes;

  @override
  void initState() {
    remainingTimes = {
      for (var squad in [2, 3, 4]) squad: "00:00:00"
    };
    updateTime();
    super.initState();
    startTimer();
  }

  void updateTime() {
    widget.queueMap.forEach((squad, operation) {
      final remainingTime = operation.endTime.difference(DateTime.now());

      String remainingTimeString;

      if (remainingTime.isNegative) {
        remainingTimeString = "00:00:00";
      } else {
        remainingTimeString = remainingTimeToString(remainingTime);
      }

      // Update the remaining time of the task
      remainingTimes[squad] = remainingTimeString;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Update the time remaining for each squad mission
      updateTime();
      if (mounted) setState(() {}); // Trigger a rebuild to update the UI
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
    final queueMap = widget.queueMap;
    final squads =
        ref.watch(kancolleDataProvider.select((data) => data.squads));
    final missionInfo = ref.watch(
        kancolleDataProvider.select((data) => data.dataInfo.missionInfo));

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        color: CupertinoColors.systemGroupedBackground.resolveFrom(context),
        child: ListView.builder(
          shrinkWrap: true,
          physics: constraints.maxHeight < 220
              ? null
              : const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            final squad = index + 2;
            final operation = queueMap[squad]!;
            var squadName = '-';
            String? missionName = '--';
            var missionCode = '-';
            // print(missionCode);
            // print(operation);
            if (squads.length >= squad) {
              squadName = squads[squad - 1].name;
            }

            if (operation.id < 999) {
              var mission = missionInfo![operation.id]!;
              missionCode = mission.apiDispNo;
              missionName = mission.apiName;
            }
            return CupertinoListSection.insetGrouped(
                margin: const EdgeInsetsDirectional.only(
                    top: 5.0, bottom: 5.0, end: 10.0, start: 5.0),
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
