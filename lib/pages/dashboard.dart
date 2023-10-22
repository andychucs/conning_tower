import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
// import 'package:conning_tower/pages/dashboard_pages/battle_info.dart';
import 'package:conning_tower/pages/dashboard_pages/opreation_schedule.dart';
import 'package:conning_tower/pages/dashboard_pages/photo_gallery.dart';
import 'package:conning_tower/pages/dashboard_pages/port_info.dart';
import 'package:conning_tower/pages/dashboard_pages/squad_info.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/routes/cupertino_picker_view.dart';
import 'package:conning_tower/pages/dashboard_pages/web_info_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerStatefulWidget {
  Dashboard.general({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.TaskDashboardTitle
        ],
        children = [
          const PhotoGallery(),
          const WebInfoList(),
          const TaskDashboard()
        ];
  Dashboard.kancolle({super.key, required this.notifyParent})
      : titles = [
          S.current.PhotoAlbum,
          S.current.WebInfo,
          S.current.KCDashboardCommand,
          S.current.KCDashboardOperation,
          S.current.KCDashboardFleet
        ],
        children = [
          const PhotoGallery(),
          const WebInfoList(),
          const PortInfo(),
          const OperationPage(),
          const SquadInfo()
        ];

  final VoidCallback notifyParent;
  final List<String> titles;
  final List<Widget> children;

  @override
  ConsumerState createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
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

      return CupertinoPickerView(
        items: items,
        wideStyle: constraints.maxWidth >= 500,
        children: widget.children,
      );
    });
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.notifyParent});
  final VoidCallback notifyParent;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          border: null,
        ),
        child: useKancolleListener
            ? Dashboard.kancolle(notifyParent: notifyParent)
            : Dashboard.general(notifyParent: notifyParent));
  }
}
