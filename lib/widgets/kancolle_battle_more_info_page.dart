import 'package:conning_tower/models/feature/kancolle/battle_info.dart';
import 'package:conning_tower/widgets/kancolle_squad_slot_info.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../generated/l10n.dart';
import '../models/data/l10n/kancolle_localization.dart';
import '../models/feature/kancolle/data.dart';
import '../models/feature/kancolle/map_state.dart';
import '../pages/dashboard_pages/battle_info_page.dart';
import '../providers/generatable/kancolle_localization_provider.dart';
import '../providers/kancolle_data_provider.dart';

class KancolleBattleMoreInfoPage extends ConsumerStatefulWidget {
  const KancolleBattleMoreInfoPage({super.key});

  @override
  ConsumerState createState() => _KancolleBattleMoreInfoPageState();
}

class _KancolleBattleMoreInfoPageState
    extends ConsumerState<KancolleBattleMoreInfoPage> {
  int _selectedSegment = 0;
  Map<int, Widget> segments = {
    0: Text(S.current.KCDashboardBattleOur),
    1: Text(S.current.KCDashboardBattleEnemy),
    2: Text(S.current.KCDashboardBattleAllMap),
  };

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(kancolleDataProvider);
    final battleInfo = data.battleInfo;

    Locale locale = Localizations.localeOf(context);
    KancolleLocalizationData? l10nData;
    if (locale.languageCode != 'ja') {
      final l10n = ref.watch(kancolleLocalizationProvider(locale));
      l10nData = l10n.whenData((data) => data.data).value;
    }
    final PageController controller =
        PageController(initialPage: _selectedSegment);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: CupertinoSlidingSegmentedControl(
          groupValue: _selectedSegment,
          onValueChanged: (int? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
                controller.animateToPage(value,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease);
              });
            }
          },
          children: segments,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              _selectedSegment = value;
            });
          },
          children: [
            OurFleetInfo(battleInfo: battleInfo, data: data, l10nData: l10nData),
            EnemyFleetInfo(battleInfo: battleInfo, l10nData: l10nData, data: data),
            BattleInfoAllMapView(data: data),
          ],
        ),
      ),
    );
  }
}

class EnemyFleetInfo extends StatelessWidget {
  const EnemyFleetInfo({
    super.key,
    required this.battleInfo,
    required this.l10nData,
    required this.data,
  });

  final BattleInfo battleInfo;
  final KancolleLocalizationData? l10nData;
  final KancolleData data;

  @override
  Widget build(BuildContext context) {
    return ScrollViewWithCupertinoScrollbar(
      children: [
        for (final squad
            in battleInfo.enemySquads?.reversed.toList() ?? [])
          KancolleSquadSlotInfo.unstored(
            squad: squad,
            l10nData: l10nData,
            shipInfo: data.dataInfo.shipInfo,
            slotItemInfo: data.dataInfo.slotItemInfo,
          )
      ],
    );
  }
}

class OurFleetInfo extends StatelessWidget {
  const OurFleetInfo({
    super.key,
    required this.battleInfo,
    required this.data,
    required this.l10nData,
  });

  final BattleInfo battleInfo;
  final KancolleData data;
  final KancolleLocalizationData? l10nData;

  @override
  Widget build(BuildContext context) {
    return ScrollViewWithCupertinoScrollbar(
      children: [
        for (final squad in battleInfo.inBattleSquads ?? [])
          KancolleSquadSlotInfo(
            squad: squad,
            slotMap: data.fleet.equipment,
            l10nData: l10nData,
          )
      ],
    );
  }
}

class BattleInfoAllMapView extends StatelessWidget {
  const BattleInfoAllMapView({
    super.key,
    required this.data,
  });

  final KancolleData data;

  String mapName(MapState mapState) {
    final area = data.dataInfo.mapAreaInfo?[mapState.areaId];
    if (area != null) {
      final map = area.map.singleWhere((element) => element.id == mapState.id,
          orElse: () => kDefaultMap);
      if (mapState.rank != null) {
        return "${map.name} - ${mapState.rankName}";
      }
      return map.name;
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    final mapStates = data.mapStateMap;
    if (mapStates == null) {
      return const Center(child: CupertinoActivityIndicator(radius: 20));
    }

    if (mapStates.isEmpty) {
      return Container();
    }

    return ScrollViewWithCupertinoScrollbar(
      children: [
        CupertinoListSection.insetGrouped(
          // backgroundColor: CupertinoDynamicColor.resolve(
          //     CupertinoTheme.of(context).scaffoldBackgroundColor,
          //     context),
          children: mapStates.values.map((mapState) {
            return CupertinoListTile(
              // backgroundColor: CupertinoDynamicColor.resolve(
              //     CupertinoColors.secondarySystemGroupedBackground,
              //     context),
              leading: Text(
                mapState.mapCode,
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
              leadingSize: 32,
              title: Text(mapName(mapState)),
              subtitle: LinearPercentIndicator(
                padding: const EdgeInsets.only(right: 8.0),
                lineHeight: 12,
                percent: mapState.rate,
                backgroundColor: CupertinoDynamicColor.resolve(
                    CupertinoColors.systemGroupedBackground, context),
                animation: true,
                animationDuration: 500,
                barRadius: const Radius.circular(8),
                animateFromLastPercent: true,
                progressColor: mapState.color,
                trailing: mapState.now == null
                    ? Text(S.of(context).KCDashboardBattleMapStateCleared)
                    : Text(
                        "${mapState.now}/${mapState.max}",
                      ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
