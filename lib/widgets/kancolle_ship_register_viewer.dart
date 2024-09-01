import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcsapi/start2/get_data_entity.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';
import '../models/feature/log/kancolle_ship_log.dart';

class KancolleShipRegisterViewer extends ConsumerStatefulWidget {
  const KancolleShipRegisterViewer({super.key});

  @override
  ConsumerState createState() => _KancolleShipRegisterViewerState();
}

class _KancolleShipRegisterViewerState
    extends ConsumerState<KancolleShipRegisterViewer>
    with AutomaticKeepAliveClientMixin {
  late Set<int>? notRegShipIds;
  int _selectedSegment = 0;
  late PageController _pageController;

  late final ScrollController _controller1;
  late final ScrollController _controller2;
  late final ScrollController _controller3;

  late List<KancolleShipLogEntity>? shipLogs;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedSegment);

    _controller1 = ScrollController();
    _controller2 = ScrollController();
    _controller3 = ScrollController();

  }

  @override
  void dispose() {
    _pageController.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    shipLogs = objectbox.queryShipLog();
    final data = ref.watch(kancolleDataProvider).dataInfo.shipInfo;
    notRegShipIds = ref.watch(kancolleDataProvider).fleet.notInFleetIds;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: CupertinoSlidingSegmentedControl(
          children: {
            0: Text(S.of(context).KCShipNotRegisteredLabel),
            1: Text(S.of(context).KCShipDeregisterLabel),
            2: Text(S.of(context).KCShipGetLabel),
          },
          groupValue: _selectedSegment,
          onValueChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
                _pageController.animateToPage(value,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease);
              });
            }
          },
        ),
      ),
      child: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _selectedSegment = value;
            });
          },
          children: [
            _buildNotRegPage(_controller1, data),
            _buildDeregisterPage(_controller2),
            _buildGetPage(_controller3),
          ],
        ),
      ),
    );
  }

  Widget _buildDeregisterPage(ScrollController controller) {
    final logs = shipLogs?.where((log) => [3, 4, 5].contains(log.type)).toList();
    return _buildShipLogPage(logs, controller);
  }

  Widget _buildGetPage(ScrollController controller) {
    final logs = shipLogs?.where((log) => [0, 1, 2].contains(log.type)).toList();
    return _buildShipLogPage(logs, controller);
  }

  Widget _buildShipLogPage(List<KancolleShipLogEntity>? logs, ScrollController controller) {

    if (logs == null) return Container();
    if (logs.isEmpty) return Container();

    return ScrollViewWithCupertinoScrollbar(
      controller: controller,
      children: [
        CupertinoListSection.insetGrouped(
          children: [
            for (final log in logs)
              ShipLogItem(log: log),
          ],
        ),
      ],
    );
  }

  Widget _buildNotRegPage(ScrollController controller,
      Map<int, GetDataApiDataApiMstShipEntity>? data) {
    if (notRegShipIds == null) return Container();
    if (notRegShipIds!.isEmpty) return Container();
    return ScrollViewWithCupertinoScrollbar(
      controller: controller,
      children: [
        CupertinoListSection.insetGrouped(
          header: CupertinoListSectionDescription("${S.of(context).TextTotal} ${notRegShipIds!.length}"),
          children: [
            for (final id in notRegShipIds!)
              if (data != null && data.containsKey(id))
                NotRegShipItem(data: data[id])
          ],
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ShipLogItem extends StatelessWidget {
  const ShipLogItem({
    super.key,
    required this.log,
  });

  final KancolleShipLogEntity log;

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.yMMMMd().format(log.dateTime);
    final time = DateFormat('HH:mm:ss').format(log.dateTime);
    final admiralName = log.admiral;
    return CupertinoListTile(
      title: Text(log.shipName),
      subtitle: Text('$date $time $admiralName'),
      additionalInfo: Text('${shipLogTypeNameMap[log.type]}'),
    );
  }
}

class NotRegShipItem extends StatelessWidget {
  const NotRegShipItem({
    super.key,
    required this.data,
  });

  final GetDataApiDataApiMstShipEntity? data;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: Text(data?.apiName ?? ""),
      additionalInfo: Text(data?.apiYomi ?? ""),
    );
  }
}
