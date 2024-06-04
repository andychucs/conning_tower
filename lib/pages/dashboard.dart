import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/pages/dashboard_pages/battle_info_page.dart';
import 'package:conning_tower/pages/dashboard_pages/dashboard_settings.dart';
import 'package:conning_tower/pages/dashboard_pages/opreation_schedule.dart';
import 'package:conning_tower/pages/dashboard_pages/photo_gallery.dart';
import 'package:conning_tower/pages/dashboard_pages/port_info.dart';
import 'package:conning_tower/pages/dashboard_pages/quest_info.dart';
import 'package:conning_tower/pages/dashboard_pages/squad_info.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/theme_provider.dart';
import 'package:conning_tower/routes/cupertino_picker_view.dart';
import 'package:conning_tower/pages/dashboard_pages/web_info_page.dart';
import 'package:conning_tower/style/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tab_container/tab_container.dart';

const tabViewBottomMargin =
    EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0);

class Dashboard extends ConsumerStatefulWidget {
  Dashboard.general({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.TaskDashboardTitle,
          S.current.SettingsButton,
        ],
        children = [
          const PhotoGallery(),
          const WebInfoPage(),
          const TaskDashboard(),
          const DashboardSettings(
            settingsType: SettingsType.appSettings,
          ),
        ],
        bottomTab = false;
  Dashboard.generalWithBottomTab({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.TaskDashboardTitle,
          S.current.SettingsButton,
        ],
        children = [
          const PhotoGallery.bottomTab(),
          const WebInfoPage(),
          const TaskDashboard(),
          const DashboardSettings(
            settingsType: SettingsType.appSettings,
          ),
        ],
        bottomTab = true;
  Dashboard.kancolle({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.KCDashboardCommand,
          S.current.KCDashboardOperation,
          S.current.KCDashboardFleet,
          S.current.KCDashboardBattleReport,
          S.current.KCDashboardQuest,
          S.current.SettingsButton,
        ],
        children = [
          const PhotoGallery(),
          const WebInfoPage(),
          const PortInfo(),
          const OperationPage(),
          const SquadInfo(),
          const BattleInfoPage(),
          const QuestInfoPage(),
          const DashboardSettings(
            settingsType: SettingsType.kancolle,
          ),
        ],
        bottomTab = false;
  Dashboard.kancolleWithBottomTab({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.KCDashboardCommand,
          S.current.KCDashboardOperation,
          S.current.KCDashboardFleet,
          S.current.KCDashboardBattleReport,
          S.current.KCDashboardQuest,
          S.current.SettingsButton,
        ],
        children = [
          const PhotoGallery.bottomTab(),
          const WebInfoPage(),
          const PortInfo(),
          const OperationPage(),
          const SquadInfo(),
          const BattleInfoPage(),
          const QuestInfoPage(),
          const DashboardSettings(
            settingsType: SettingsType.kancolle,
          ),
        ],
        bottomTab = true;

  final VoidCallback notifyParent;
  final List<String> titles;
  final List<Widget> children;
  final bool bottomTab;

  @override
  ConsumerState createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    late Brightness brightness;
    if (theme == ThemeMode.system) {
      brightness = MediaQuery.platformBrightnessOf(context);
    } else if (theme == ThemeMode.light) {
      brightness = Brightness.light;
    } else if (theme == ThemeMode.dark) {
      brightness = Brightness.dark;
    }

    return LayoutBuilder(builder: (context, constraints) {
      // debugPrint(
      //     "dashboard space: W:${constraints.maxWidth} H:${constraints.maxHeight}");
      List<Widget> items = <Widget>[
        for (var i in widget.titles)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              i,
              style:
                  constraints.maxWidth < 500 ? TextStyle(fontSize: 14) : null,
            ),
          )
      ];

      if (widget.bottomTab) {
        List<Widget> tabs = <Widget>[for (var i in widget.titles) Text(i)];
        List<Color> colors = <Color>[
          for (var index = 0; index < tabs.length; index++)
            AppColor.getGroupBeta(index)
        ];

        return SafeArea(
          child: Container(
            color: brightness == Brightness.dark
                ? CupertinoDynamicColor.resolve(
                    CupertinoColors.secondarySystemBackground, context)
                : null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: TabContainer(
                tabEdge: TabEdge.bottom,
                // borderRadius: BorderRadius.circular(15),
                childPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                selectedTextStyle: const TextStyle(
                  fontSize: 15.0,
                ),
                unselectedTextStyle: const TextStyle(
                  fontSize: 13.0,
                ),
                // childPadding: const EdgeInsets.only(bottom: 10.0),
                tabMinLength: 100,
                tabExtent: 50,
                tabs: tabs,
                colors: brightness == Brightness.light ? colors : null,
                color:
                    brightness == Brightness.dark ? CupertinoColors.black : null,
                children: widget.children,
              ),
            ),
          ),
        );
      }

      return CupertinoPickerView(
        items: items,
        wideStyle: constraints.maxWidth >= 500,
        children: widget.children,
      );
    });
  }
}

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key, required this.notifyParent});
  final VoidCallback notifyParent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          transitionBetweenRoutes: false,
          backgroundColor: CupertinoColors.systemGroupedBackground,
          border: null,
        ),
        child: ref.watch(settingsProvider).useKancolleListener
            ? Dashboard.kancolle(notifyParent: notifyParent)
            : Dashboard.general(notifyParent: notifyParent));
  }
}
