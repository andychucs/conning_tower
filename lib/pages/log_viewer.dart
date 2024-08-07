import 'dart:convert';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/log_pages/battle_log_data_page.dart';
import 'package:conning_tower/utils/objectbox.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../models/feature/log/kancolle_log.dart';
import '../objectbox.g.dart';
import '../providers/kancolle_data_provider.dart';
import 'log_pages/resource_log_data_page.dart';

enum LogType { battle, resource }

class LogViewer extends ConsumerWidget {
  final String? previousPageTitle;

  const LogViewer({super.key, required this.previousPageTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var admiral = ref.watch(kancolleDataProvider).seaForceBase.admiral;
    objectbox.updateAllBattle(admiral.name);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).KanColleLogbook),
        previousPageTitle: previousPageTitle,
        trailing: PullDownButton(
          useRootNavigator: true,
          itemBuilder: (BuildContext context) => [
            PullDownMenuItem(
              onTap: () async {
                Box<KancolleBattleLogEntity> dataBox = objectbox.battleLog;
                final allData = dataBox.getAll();
                await Clipboard.setData(
                    ClipboardData(text: jsonEncode(allData)));
              },
              title: "Copy Battle Log",
            ),
            PullDownMenuItem(
              onTap: () async {
                Box<KancolleQuestLogEntity> dataBox = objectbox.questLog;
                final allData = dataBox.getAll();
                await Clipboard.setData(
                    ClipboardData(text: jsonEncode(allData)));
              },
              title: "Copy Quest Log",
            ),
            PullDownMenuItem(
              onTap: () async {
                Box<KancolleResourceLogEntity> dataBox = objectbox.resourceLog;
                final allData = dataBox.getAll();
                await Clipboard.setData(
                    ClipboardData(text: jsonEncode(allData)));
              },
              title: "Copy Resource Log",
            ),
          ],
          buttonBuilder:
              (BuildContext context, Future<void> Function() showMenu) =>
                  CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: showMenu,
            child: const Icon(CupertinoIcons.hammer),
          ),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoScrollbar(
          child: ListView(
            children: [
              CupertinoListSection.insetGrouped(
                footer: FutureBuilder(
                    future: objectbox.storeSize(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData)
                        return CupertinoListSectionDescription(snapshot.data!);
                      return Container();
                    }),
                children: [
                  CupertinoListTile(
                    title: Text(S.of(context).TextBattle),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => navigatorToCupertino(
                        context, const BattleLogDataPage()),
                  ),
                  CupertinoListTile(
                    title: Text(S.of(context).KCResources),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => navigatorToCupertino(
                        context, const ResourceLogDataPage()),
                  ),
                  // CupertinoListTile(
                  //   title: Text("建造"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                  // CupertinoListTile(
                  //   title: Text("開発"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                  // CupertinoListTile(
                  //   title: Text("遠征"),
                  //   trailing: CupertinoListTileChevron(),
                  // ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(
                    leading: const DummyIcon(
                        color: CupertinoColors.destructiveRed,
                        icon: CupertinoIcons.trash),
                    title: Text("Clear"),
                    onTap: () async {
                      await objectbox.clear();
                      objectbox = await ObjectBox.create();
                      Fluttertoast.showToast(msg: "All log cleared");
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
