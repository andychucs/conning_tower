import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/data/kcsapi/item_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:conning_tower/widgets/components/label.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:conning_tower/widgets/dialog.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';

const _sectionMargin = EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0);

class SquadInfo extends ConsumerStatefulWidget {
  const SquadInfo({super.key});

  @override
  ConsumerState createState() => _SquadInfoState();
}

class _SquadInfoState extends ConsumerState<SquadInfo> {
  final Map<int, Widget> displayModes = <int, Widget>{
    0: Text(S.current.TextStatus),
    1: Text(S.current.TextEquipment),
  };
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

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: _selectedSegment);
    var data = ref.watch(kancolleDataProvider);
    var squads = data.squads;
    final shipInfo = data.dataInfo.shipInfo;

    segments = {
      for (var element in squads)
        squads.indexOf(element):
            Text(element.name, style: const TextStyle(fontSize: 14))
    };

    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 10.0),
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
                child: Column(
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
                              child: _displayedSegment == 0
                                  ? CupertinoListSection.insetGrouped(
                                      margin: _sectionMargin,
                                      footer: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CupertinoListSectionDescription(
                                                'Lv:${levelList.reduce((value, element) => value + element)}\n'
                                                '${S.current.KCDashboardShipSpeed}:${speedLevel(speedList.reduce(min))}\n'
                                                '${S.current.KCDashboardShipFirepower}:${attackList.reduce((value, element) => value + element)}\n'
                                                '${S.current.KCDashboardShipAA}:${antiAircraftList.reduce((value, element) => value + element)}\n'
                                                '${S.current.KCDashboardShipASW}:${antiSubmarineList.reduce((value, element) => value + element)}\n'
                                                '${S.current.KCDashboardShipScout}:${scoutList.reduce((value, element) => value + element)}\n'),
                                            GestureDetector(
                                              child: Icon(
                                                CupertinoIcons.question_circle,
                                                size: 20,
                                                color: CupertinoDynamicColor
                                                    .resolve(kHeaderFooterColor,
                                                        context),
                                              ),
                                              onTap: () => showAdaptiveDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog.adaptive(
                                                      content: Text(S
                                                          .of(context)
                                                          .KCDashboardFleetDescription),
                                                      actions: [
                                                        adaptiveAction(
                                                          context: context,
                                                          child: Text(S
                                                              .of(context)
                                                              .TextYes),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        )
                                                      ],
                                                    );
                                                  }),
                                            ),
                                          ]),
                                      children: [
                                        for (final ship in squad.ships)
                                          CupertinoListTile(
                                            title: Text(ship.name!),
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 10.0, end: 8.0),
                                            leading: CarouselSlider(
                                              items: [
                                                AttributeLabel.vertical(
                                                    label: 'Lv',
                                                    value: '${ship.level}'),
                                                AttributeLabel.vertical(
                                                    label: 'Lv Up',
                                                    value: '${ship.exp?[1]}'),
                                              ],
                                              options: CarouselOptions(
                                                height: 30,
                                                viewportFraction: 1,
                                                initialPage: 0,
                                                enableInfiniteScroll: true,
                                                reverse: false,
                                                autoPlay: true,
                                                autoPlayInterval:
                                                    Duration(seconds: 5),
                                                autoPlayAnimationDuration:
                                                    Duration(milliseconds: 800),
                                                autoPlayCurve: Curves.ease,
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
                                                        squads[index].name,
                                                  ));
                                            },
                                            additionalInfo: SizedBox(
                                                width: 70,
                                                child: Text(
                                                  "${ship.nowHP}/${ship.maxHP}",
                                                  textAlign: TextAlign.end,
                                                )),
                                            subtitle: LinearPercentIndicator(
                                              backgroundColor:
                                                  CupertinoDynamicColor.resolve(
                                                      CupertinoColors
                                                          .systemGroupedBackground,
                                                      context),
                                              animation: true,
                                              animationDuration: 500,
                                              barRadius:
                                                  const Radius.circular(2.5),
                                              animateFromLastPercent: true,
                                              lineHeight: 5.0,
                                              percent: ship.nowHP / ship.maxHP,
                                              progressColor: ship.damageColor,
                                            ),
                                            trailing: CircularPercentIndicator(
                                              backgroundColor:
                                                  CupertinoDynamicColor.resolve(
                                                      CupertinoColors
                                                          .systemGroupedBackground,
                                                      context),
                                              reverse: true,
                                              radius: 12.0,
                                              lineWidth: 5.0,
                                              animation: true,
                                              animationDuration: 500,
                                              animateFromLastPercent: true,
                                              circularStrokeCap:
                                                  CircularStrokeCap.round,
                                              percent: ship.condition! / 100,
                                              center: Container(
                                                height: 6,
                                                width: 6,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ship.fuelBullColor(
                                                      shipInfo?[ship.shipId]!
                                                          .apiFuelMax,
                                                      shipInfo?[ship.shipId]!
                                                          .apiBullMax),
                                                ),
                                              ),
                                              progressColor: ship.sparkColor,
                                            ),
                                          ),
                                      ],
                                    )
                                  : SlotItemPage(
                                      squad: squad,
                                      slotItems: data.fleet.equipment,
                                      slotItemInfo: data.dataInfo.slotItemInfo),
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
                        padding: const EdgeInsets.only(top: 4.0),
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
              ),
            );
          }),
        ),
      ),
    );
  }
}

class SlotItemPage extends StatelessWidget {
  const SlotItemPage({
    super.key,
    required this.squad,
    required this.slotItems,
    this.slotItemInfo,
  });

  final Squad squad;
  final List<SlotItem> slotItems;
  final Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo;

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = CupertinoColors.separator.resolveFrom(context);
    final double dividerHeight = 1.0 / MediaQuery.devicePixelRatioOf(context);

    Map<int, SlotItem> slotMap = {
      for (final item in slotItems) item.apiId: item
    };

    return CupertinoGroupedSection(
      padding: _sectionMargin,
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
                            Text(_slotItemInfoText(slotMap[item], slotItemInfo,
                                onSlot: ship.onSlot?[index])),
                        if (ship.slotEx != null &&
                            ship.slotEx != -1 &&
                            ship.slotEx != 0)
                          Text(_slotItemInfoText(
                              slotMap[ship.slotEx], slotItemInfo)),
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
}

String _slotItemInfoText(SlotItem? slotItem,
    Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo,
    {int? onSlot}) {
  if (slotItem == null || slotItemInfo == null) {
    return "";
  }
  final itemInfo = slotItemInfo[slotItem.apiSlotitemId];
  final name = itemInfo?.apiName ?? "N/A";
  late String info;

  if (slotItem.apiLevel > 0) {
    info = "$name - ★${slotItem.apiLevel}";
  } else {
    info = name;
  }

  if (onSlot == null) {
    return info;
  } else {
    if (onSlot > 0 && (itemInfo?.apiType[4] ?? 0) > 0) {
      // aircraft
      info = "$name : $onSlot";
      if (slotItem.apiLevel > 0) {
        info = "$name - ★${slotItem.apiLevel} : $onSlot";
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
        child: CupertinoListSection.insetGrouped(
          margin: _sectionMargin,
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
        ),
      ),
    );
  }
}

