import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:conning_tower/models/feature/kancolle/equipment.dart';
import 'package:conning_tower/models/feature/kancolle/ship.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/components/label.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:conning_tower/widgets/squads_share_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../../models/data/l10n/kancolle_localization.dart';
import '../../providers/generatable/kancolle_event_ship_tags_provider.dart';
import '../../providers/generatable/kancolle_localization_provider.dart';

const _sectionMargin = EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0);
const _normalMargin = EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0);
const _kListPadding = EdgeInsetsDirectional.only(start: 10.0, end: 8.0);

class SquadInfo extends ConsumerStatefulWidget {
  const SquadInfo({super.key});

  @override
  ConsumerState createState() => _SquadInfoState();
}

class _SquadInfoState extends ConsumerState<SquadInfo>
    with AutomaticKeepAliveClientMixin {
  Map<String, EventShipTag>? shipTagsData;

  @override
  bool get wantKeepAlive => true;
  final Map<int, Widget> displayModes = <int, Widget>{
    0: Text(S.current.TextStatus),
    1: Text(S.current.TextEquipment),
  };
  double _mapModifier = 1.0;
  int _selectedSegment = 0;
  int _displayedSegment = 0;
  late Map<int, Widget> segments;

  String speedLevel(speed) {
    if (speed == 5) return S.current.TextSlowSpeed;
    if (speed == 10) return S.current.TextFastSpeed;
    if (speed == 15) return S.current.TextFastPlusSpeed;
    if (speed == 20) return S.current.TextFastestSpeed;
    return 'N/A';
  }

  PullDownButton mapModifierMenu() {
    final List<double> modifierList = [1.0, 2.0, 3.0, 4.0];
    final scrollController = ScrollController();
    return PullDownButton(
      useRootNavigator: true,
      scrollController: scrollController,
      itemBuilder: (context) => modifierList
          .map((e) => PullDownMenuItem(
                onTap: () {
                  setState(() {
                    _mapModifier = e;
                  });
                },
                title: '✕$e',
              ))
          .toList(),
      buttonBuilder: (context, showMenu) => CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => showMenu(),
        child: Row(
          children: [
            Text(
              S.of(context).KCDashboardShipScoutScoreCoefficient,
              style: TextStyle(
                  fontSize:
                      CupertinoTheme.of(context).textTheme.textStyle.fontSize),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: CupertinoTheme.of(context).textTheme.textStyle.fontSize,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final PageController controller =
        PageController(initialPage: _selectedSegment);
    final eventShipTags = ref.watch(eventShipTagsProvider);
    eventShipTags.whenData((data) => setState(() {
          shipTagsData = data.data;
        }));
    var data = ref.watch(kancolleDataProvider);
    var squads = data.squads;
    final shipInfo = data.dataInfo.shipInfo;
    Locale locale = Localizations.localeOf(context);
    KancolleLocalizationData? l10nData;
    if (locale.languageCode != 'ja') {
      final l10n = ref.watch(kancolleLocalizationProvider(locale));
      l10nData = l10n.whenData((data) => data.data).value;
    }

    segments = {
      for (var element in squads)
        squads.indexOf(element):
            Text(element.name, style: const TextStyle(fontSize: 14))
    };

    return SafeArea(
      child: Padding(
        padding: tabContentMargin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: LocalNavigatorBuilder(builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                automaticallyImplyLeading: false,
                transitionBetweenRoutes: false,
                backgroundColor: CupertinoColors.systemGroupedBackground
                    .resolveFrom(context),
                border: null,
                middle: segments.length >= 2
                    ? CupertinoSlidingSegmentedControl(
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
                      )
                    : null,
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: PageView(
                            controller: controller,
                            onPageChanged: (value) {
                              setState(() {
                                _selectedSegment = value;
                              });
                            },
                            children: List.generate(squads.length, (index) {
                              var squad = squads[index];
                              String losScore = squad
                                  .los(
                                      admiralLevel:
                                          data.seaForceBase.admiral.level,
                                      mapModifier: _mapModifier)
                                  .total
                                  .toStringAsFixed(2);
                              if (squad.ships.isNotEmpty) {
                                List<int> speedList = [];
                                List<int> attackList = [];
                                List<int> antiAircraftList = [];
                                List<int> levelList = [];
                                List<int> antiSubmarineList = [];
                                List<int> scoutList = [];
                                for (var ship in squad.ships) {
                                  speedList.add(ship.speed!);
                                  attackList.add(ship.attack![0]);
                                  antiAircraftList.add(ship.antiAircraft![0]);
                                  levelList.add(ship.level);
                                  antiSubmarineList.add(ship.antiSubmarine![0]);
                                  scoutList.add(ship.scout![0]);
                                }

                                return ScrollViewWithCupertinoScrollbar(
                                  children: _displayedSegment == 0
                                      ? [
                                          CupertinoListSection.insetGrouped(
                                            margin: tabBottomListMargin,
                                            children: [
                                              for (final ship in squad.ships)
                                                CupertinoListTile(
                                                  title: buildShipTitle(
                                                      ship, locale),
                                                  padding: _kListPadding,
                                                  leading: CarouselSlider(
                                                    items: [
                                                      AttributeLabel.vertical(
                                                          label: 'Lv',
                                                          value:
                                                              '${ship.level}'),
                                                      AttributeLabel.vertical(
                                                          label: 'Lv Up',
                                                          value:
                                                              '${ship.exp?[1]}'),
                                                    ],
                                                    options: CarouselOptions(
                                                      height: 30,
                                                      viewportFraction: 1,
                                                      initialPage: 0,
                                                      enableInfiniteScroll:
                                                          true,
                                                      reverse: false,
                                                      autoPlay: true,
                                                      autoPlayInterval:
                                                          Duration(seconds: 5),
                                                      autoPlayAnimationDuration:
                                                          Duration(
                                                              milliseconds:
                                                                  800),
                                                      autoPlayCurve:
                                                          Curves.ease,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                    ),
                                                  ),
                                                  leadingToTitle: 4,
                                                  onTap: () async {
                                                    await navigatorToCupertino(
                                                        context,
                                                        ShipInfo(
                                                          ship: ship,
                                                          squadName:
                                                              squads[index]
                                                                  .name,
                                                        ));
                                                  },
                                                  additionalInfo: SizedBox(
                                                      width: 70,
                                                      child: Text(
                                                        "${ship.nowHP}/${ship.maxHP}",
                                                        textAlign:
                                                            TextAlign.end,
                                                      )),
                                                  subtitle:
                                                      LinearPercentIndicator(
                                                    backgroundColor:
                                                        CupertinoDynamicColor
                                                            .resolve(
                                                                CupertinoColors
                                                                    .systemGroupedBackground,
                                                                context),
                                                    animation: true,
                                                    animationDuration: 500,
                                                    barRadius:
                                                        const Radius.circular(
                                                            2.5),
                                                    animateFromLastPercent:
                                                        true,
                                                    lineHeight: 5.0,
                                                    percent:
                                                        ship.nowHP / ship.maxHP,
                                                    progressColor:
                                                        ship.damageColor,
                                                  ),
                                                  trailing:
                                                      CircularPercentIndicator(
                                                    backgroundColor:
                                                        CupertinoDynamicColor
                                                            .resolve(
                                                                CupertinoColors
                                                                    .systemGroupedBackground,
                                                                context),
                                                    reverse: true,
                                                    radius: 12.0,
                                                    lineWidth: 5.0,
                                                    animation: true,
                                                    animationDuration: 500,
                                                    animateFromLastPercent:
                                                        true,
                                                    circularStrokeCap:
                                                        CircularStrokeCap.round,
                                                    percent:
                                                        ship.condition! / 100,
                                                    center: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: ship.fuelBullColor(
                                                            shipInfo?[ship
                                                                    .shipId]!
                                                                .apiFuelMax,
                                                            shipInfo?[ship
                                                                    .shipId]!
                                                                .apiBullMax),
                                                      ),
                                                    ),
                                                    progressColor:
                                                        ship.sparkColor,
                                                  ),
                                                ),
                                              SquadsShareButton
                                                  .cupertinoListTile(
                                                      squads: squads),
                                            ],
                                          ),
                                          CupertinoListSection.insetGrouped(
                                            margin: tabBottomListMargin,
                                            footer:
                                                CupertinoListSectionDescription(S
                                                    .of(context)
                                                    .KCDashboardFleetDescription),
                                            children: [
                                              CupertinoListTile(
                                                subtitle: Text("Lv"),
                                                title: Text(
                                                    '${levelList.reduce((value, element) => value + element)}'),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(
                                                    "${S.current.KCDashboardShipScoutScore} ${S.current.KCDashboardShipScoutScoreFormula33}"),
                                                title: Text(losScore),
                                                additionalInfo:
                                                    Text('$_mapModifier'),
                                                trailing: mapModifierMenu(),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S.current
                                                    .KCDashboardShipSpeed),
                                                title: Text(speedLevel(
                                                    speedList.reduce(min))),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S.current
                                                    .KCDashboardShipFirepower),
                                                title: Text(
                                                    '${attackList.reduce((value, element) => value + element)}'),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S
                                                    .current.KCDashboardShipAA),
                                                title: Text(
                                                    '${antiAircraftList.reduce((value, element) => value + element)}'),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S.current
                                                    .KCDashboardShipASW),
                                                title: Text(
                                                    '${antiSubmarineList.reduce((value, element) => value + element)}'),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S.current
                                                    .KCDashboardShipScout),
                                                title: Text(
                                                    '${scoutList.reduce((value, element) => value + element)}'),
                                              ),
                                              CupertinoListTile(
                                                subtitle: Text(S.current
                                                    .KCDashboardShipAircraftPower),
                                                title:
                                                    Text(squad.aircraftPower),
                                              ),
                                            ],
                                          )
                                        ]
                                      : [
                                          SlotItemPage(
                                            squad: squad,
                                            slotMap: data.fleet.equipment,
                                            slotItemInfo:
                                                data.dataInfo.slotItemInfo,
                                            l10nData: l10nData,
                                          )
                                        ],
                                );
                              }
                              return CupertinoListSection.insetGrouped(
                                children: const [
                                  CupertinoListTile.notched(
                                    title: Text("N/A"),
                                  ),
                                ],
                              );
                            }),
                          ),
                        ),
                        if (squads.isNotEmpty)
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: CupertinoSlidingSegmentedControl(
                                children: displayModes,
                                groupValue: _displayedSegment,
                                onValueChanged: (value) {
                                  setState(() {
                                    _displayedSegment = value ?? 0;
                                  });
                                }),
                          ),
                      ],
                    ),
                    Positioned(
                        right: 4,
                        bottom: 4,
                        child: Text(data.fleet.combinedText))
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildShipTitle(Ship ship, Locale locale) {
    if (ship.sallyArea != null && shipTagsData != null) {
      return Stack(
        children: [
          Text(ship.name!),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                shipTagsData?["${ship.sallyArea}"]?.nameLocal(locale) ?? '',
                style: CupertinoTheme.of(context)
                    .textTheme
                    .tabLabelTextStyle
                    .merge(TextStyle(
                        color: CupertinoColors.secondaryLabel
                            .resolveFrom(context))),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(width: 4.0),
              Icon(
                CupertinoIcons.tag_fill,
                color: shipTagsData?["${ship.sallyArea}"]?.color ??
                    Colors.transparent,
                size: CupertinoTheme.of(context)
                    .textTheme
                    .tabLabelTextStyle
                    .fontSize,
              ),
            ],
          ),
        ],
      );
    }
    return Text(ship.name!);
  }
}

class SlotItemPage extends StatelessWidget {
  const SlotItemPage({
    super.key,
    required this.squad,
    required this.slotMap,
    this.slotItemInfo,
    this.l10nData,
  });

  final Squad squad;
  final Map<int, Equipment> slotMap;
  final Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo;
  final KancolleLocalizationData? l10nData;

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = CupertinoColors.separator.resolveFrom(context);
    final double dividerHeight = 1.0 / MediaQuery.devicePixelRatioOf(context);

    return CupertinoGroupedSection(
      padding: tabBottomListMargin,
      child: Column(
        children: squad.ships.expand((ship) {
          final index = squad.ships.indexOf(ship);
          return [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Text(
                        ship.name!,
                        softWrap: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final (index, item) in ship.slot!.indexed)
                          if (item != -1)
                            equipmentItem(context, item, ship, index),
                        if (ship.slotEx != null &&
                            ship.slotEx != -1 &&
                            ship.slotEx != 0)
                          Text(slotMap[ship.slotEx]
                                  ?.text(l10nMap: l10nData?.equipmentLocal) ??
                              "N/A"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            if (index < squad.ships.length - 1)
              Divider(
                height: 1,
                thickness: dividerHeight,
                indent: 16,
                color: dividerColor,
              ),
          ];
        }).toList(),
      ),
    );
  }

  Widget equipmentItem(BuildContext context, int item, Ship ship, int index) {
    final text = Text(slotMap[item]?.text(
            onSlot: ship.onSlot?[index], l10nMap: l10nData?.equipmentLocal) ??
        "N/A");
    final iconData = slotMap[item]?.proficiencyIcon;
    final iconColor = slotMap[item]?.proficiencyColor;
    return Row(
      children: [
        text,
        Icon(
          iconData,
          size: CupertinoTheme.of(context).textTheme.textStyle.fontSize,
          color: iconColor,
        ),
      ],
    );
  }
}

@Deprecated("Use Equipment.text instead")
String _slotItemInfoText(Equipment? slotItem, {int? onSlot}) {
  if (slotItem == null) {
    return "";
  }
  final name = slotItem.name ?? "N/A";
  late String info;

  if (slotItem.level! > 0) {
    info = "$name - ★${slotItem.level}";
  } else {
    info = name;
  }

  if (onSlot == null) {
    return info;
  } else {
    if (onSlot > 0 && slotItem.isAirCraft) {
      // aircraft
      info = "$name : $onSlot";
      if (slotItem.level! > 0) {
        info = "$name - ★${slotItem.level} : $onSlot";
      }
    }
  }

  return info;
}

class ShipInfo extends StatelessWidget {
  const ShipInfo({
    super.key,
    required this.ship,
    required this.squadName,
  });

  final Ship ship;
  final String squadName;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: Text(ship.name!),
        previousPageTitle: squadName,
      ),
      child: ScrollViewWithCupertinoScrollbar(
        children: [
          CupertinoListSection.insetGrouped(
            margin: tabBottomListMargin,
            children: [
              CupertinoListTile(
                title: Text("Lv"),
                additionalInfo: Text('${ship.level}'),
              ),
              CupertinoListTile(
                title: Text("Lv. up EXP"),
                additionalInfo: Text('${ship.exp?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipUpgradeLevel),
                additionalInfo: Text('${ship.upgradeLevel}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipCondition),
                additionalInfo: Text('${ship.condition}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipHP),
                additionalInfo: Text(ship.damageLevel),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipSpeed),
                additionalInfo: Text(ship.speedLevel),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipFirepower),
                additionalInfo: Text('${ship.attack?[0]}/${ship.attack?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipTorpedo),
                additionalInfo: Text('${ship.attackT?[0]}/${ship.attackT?[1]}'),
              ),
              CupertinoListTile(
                  title: Text(S.current.KCDashboardShipAircraftPower),
                  additionalInfo: Text(ship.aircraftPower().text)),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipAA),
                additionalInfo:
                    Text('${ship.antiAircraft?[0]}/${ship.antiAircraft?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipArmor),
                additionalInfo: Text('${ship.armor?[0]}/${ship.armor?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipEvasion),
                additionalInfo: Text('${ship.evasion?[0]}/${ship.evasion?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipASW),
                additionalInfo:
                    Text('${ship.antiSubmarine?[0]}/${ship.antiSubmarine?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipScout),
                additionalInfo: Text('${ship.scout?[0]}/${ship.scout?[1]}'),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipRange),
                additionalInfo: Text(ship.attackRangeLevel),
              ),
              CupertinoListTile(
                title: Text(S.current.KCDashboardShipLuck),
                additionalInfo: Text('${ship.luck?[0]}/${ship.luck?[1]}'),
              ),
              CupertinoListTile(
                title: Text("ID"),
                additionalInfo: Text('${ship.uid}'),
              ),
              CupertinoListTile(
                leading: Icon(CupertinoIcons.back),
                title: Text(S.of(context).AppBack),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
