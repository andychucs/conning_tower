import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/log/kancolle_battle_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogViewer extends ConsumerWidget {
  final String previousPageTitle;
  const LogViewer({super.key, required this.previousPageTitle});

  
@override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text("LogViewer"),
        previousPageTitle: previousPageTitle,
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoScrollbar(
          child: ListView(
            children: [
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(title: Text("戦闘"), trailing: CupertinoListTileChevron(),),
                  CupertinoListTile(title: Text("建造"), trailing: CupertinoListTileChevron(),),
                  CupertinoListTile(title: Text("開発"), trailing: CupertinoListTileChevron(),),
                  CupertinoListTile(title: Text("遠征"), trailing: CupertinoListTileChevron(),),
                ],
              )
            ],
          ),
        ),
      ),);
  }
}


class LogDataPage extends ConsumerStatefulWidget {
  const LogDataPage({super.key});

  @override
  ConsumerState createState() => _LogDataPageState();
}

class _LogDataPageState extends ConsumerState<LogDataPage> {
  @override
  Widget build(BuildContext context) {
    List<KancolleBattleLogEntity> data = objectbox.battleLog.getAll();

    return CupertinoPageScaffold(backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text("戦闘"),
        previousPageTitle: "LogViewer",
        trailing: GestureDetector(
          child: Icon(CupertinoIcons.calendar),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoScrollbar(
          child: ListView(
            children: [
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(title: Text("戦闘"), trailing: CupertinoListTileChevron(),),
                ],
              )
            ],
          ),
        ),
      ),);
  }
}
