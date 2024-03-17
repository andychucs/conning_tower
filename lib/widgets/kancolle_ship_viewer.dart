import 'dart:developer';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_down_button/pull_down_button.dart';

const _sectionMargin = EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 10.0, 10.0);

// sort by level upper first, level lower first, uid upper first, uid lower first
enum ShipSort {
  level,
  levelDesc,
  uid,
  uidDesc,
  attack,
  attackDesc,
  aa,
  aaDesc,
  asw,
  aswDesc,
  armor,
  armorDesc,
  luck,
  luckDesc,
  condition,
  conditionDesc
}

enum ShipStatus { all, canUpgrade, waitUpgrade, upgraded }

enum ShipSlot { all, slotEx, noSlotEx }

enum ShipSpeed { all, slow, fast, fastPlus, fastest }

enum MenuOption { shipType, shipStatus, shipSort, shipSlot, shipSpeed }

class KancolleShipViewer extends ConsumerStatefulWidget {
  const KancolleShipViewer({super.key});

  @override
  ConsumerState createState() => _KancolleShipViewerState();
}

class _KancolleShipViewerState extends ConsumerState<KancolleShipViewer> {
  ScrollController scrollController = ScrollController();

  ShipStatus shipStatus = ShipStatus.all;

  ShipSlot shipSlot = ShipSlot.all;

  ShipSpeed shipSpeed = ShipSpeed.all;

  List<Ship>? ships;

  ShipSort shipSort = ShipSort.levelDesc;

  Map<String, List<int>> shipTypeMap = {S.current.TextAll: []};

  List<String> selectedShipType = [S.current.TextAll];

  String get _shipTypeTitle {
    final shipTypeTitle = S.current.KCDashboardShipViewerFilterShipType;
    if (selectedShipType.isEmpty) return shipTypeTitle;
    if (selectedShipType.length == 1 &&
        selectedShipType.first == S.current.TextAll) return shipTypeTitle;
    return selectedShipType.join(", ");
  }

  String get _shipStatusTitle {
    switch (shipStatus) {
      case ShipStatus.all:
        return S.current.KCDashboardShipViewerFilterShipStatus;
      case ShipStatus.canUpgrade:
        return S.current.KCDashboardShipViewerFilterShipStatusCanUpgrade;
      case ShipStatus.waitUpgrade:
        return S.current.KCDashboardShipViewerFilterShipStatusWaitUpgrade;
      case ShipStatus.upgraded:
        return S.current.KCDashboardShipViewerFilterShipStatusUpgraded;
    }
  }

  String get _shipSlotTitle {
    switch (shipSlot) {
      case ShipSlot.all:
        return S.current.KCDashboardShipViewerFilterShipSlot;
      case ShipSlot.slotEx:
        return S.current.KCDashboardShipViewerFilterShipSlotHaveExSlot;
      case ShipSlot.noSlotEx:
        return S.current.KCDashboardShipViewerFilterShipSlotNoExSlot;
    }
  }

  String get _shipSpeedTitle {
    switch (shipSpeed) {
      case ShipSpeed.all:
        return S.current.KCDashboardShipViewerFilterSpeed;
      case ShipSpeed.slow:
        return S.current.TextSlowSpeed;
      case ShipSpeed.fast:
        return S.current.TextFastSpeed;
      case ShipSpeed.fastPlus:
        return S.current.TextFastPlusSpeed;
      case ShipSpeed.fastest:
        return S.current.TextFastestSpeed;
    }
  }

  void onSelectShipType(String value) {
    final allStr = S.current.TextAll;
    if (selectedShipType.length == 1 && selectedShipType.first == allStr) {
      if (value == allStr) {
        selectedShipType.clear();
      } else {
        selectedShipType.clear();
        selectedShipType.addAll(shipTypeMap.keys);
        selectedShipType.remove(allStr);
        selectedShipType.remove(value);
      }
    } else {
      if (value == allStr) {
        selectedShipType.clear();
        selectedShipType.add(value);
      } else {
        if (selectedShipType.contains(value)) {
          selectedShipType.remove(value);
        } else {
          selectedShipType.add(value);
        }
      }
    }
  }

  void updateShipTypeMap(KancolleData data) {
    data.dataInfo.shipTypeList?.forEach((element) {
      if (shipTypeMap.keys.contains(element.apiName)) {
        if (!shipTypeMap[element.apiName]!.contains(element.apiId)) {
          shipTypeMap[element.apiName]?.add(element.apiId);
        }
      } else {
        shipTypeMap[element.apiName] = [element.apiId];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(kancolleDataProvider);
    ships = data.fleet.ships;
    updateShipTypeMap(data);
    sortShips();
    log("shipTypeMap: $shipTypeMap");
    log("shipStatus: $shipStatus");
    log("shipSort: $shipSort");
    log("shipSlot: $shipSlot");
    log("selectedShipType: $selectedShipType");

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: FutureBuilder(
            future: getShips(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final count = snapshot.data!.length;
                if (count > 0) {
                  return Text(S.of(context).KCDashboardShipViewerCount(count));
                } else {
                  return Text(S.of(context).KCDashboardShipViewerTitle);
                }
              }
              return Container();
            }),
        trailing: pullDownButtonFilter(
          child: Icon(
            CupertinoIcons.line_horizontal_3_decrease_circle,
            color: Theme.of(context).primaryColor,
          ),
          option: MenuOption.shipSort,
          items: {
            S.current.KCDashboardShipViewerSortLevelAsc: ShipSort.level,
            S.current.KCDashboardShipViewerSortLevelDesc: ShipSort.levelDesc,
            S.current.KCDashboardShipViewerSortUIDAsc: ShipSort.uid,
            S.current.KCDashboardShipViewerSortUIDDesc: ShipSort.uidDesc,
            S.current.KCDashboardShipViewerSortAttackAsc: ShipSort.attack,
            S.current.KCDashboardShipViewerSortAttackDesc: ShipSort.attackDesc,
            S.current.KCDashboardShipViewerSortAAAsc: ShipSort.aa,
            S.current.KCDashboardShipViewerSortAADesc: ShipSort.aaDesc,
            S.current.KCDashboardShipViewerSortASWAsc: ShipSort.asw,
            S.current.KCDashboardShipViewerSortASWDesc: ShipSort.aswDesc,
            S.current.KCDashboardShipViewerSortArmorAsc: ShipSort.armor,
            S.current.KCDashboardShipViewerSortArmorDesc: ShipSort.armorDesc,
            S.current.KCDashboardShipViewerSortLuckAsc: ShipSort.luck,
            S.current.KCDashboardShipViewerSortLuckDesc: ShipSort.luckDesc,
            S.current.KCDashboardShipViewerSortConditionAsc: ShipSort.condition,
            S.current.KCDashboardShipViewerSortConditionDesc:
                ShipSort.conditionDesc,
          },
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            buildFiltersWidget(),
            Expanded(
              child: ScrollViewWithCupertinoScrollbar(
                child: FutureBuilder(
                  future: getShips(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Ship>> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.isEmpty) {
                        return CupertinoListSection.insetGrouped(
                          margin: _sectionMargin,
                          children: const [
                            CupertinoListTile(title: Text('N/A'))
                          ],
                        );
                      }
                      final count = snapshot.data!.length;
                      return CupertinoListSection.insetGrouped(
                        margin: _sectionMargin,
                        children: List.generate(snapshot.data!.length, (index) {
                          final ship = snapshot.data?[index];
                          if (ship != null) {
                            return CupertinoListTile(
                              title: Text(ship.name ?? ""),
                              additionalInfo: SizedBox(
                                width: 56,
                                child: Text(
                                  'Lv.${ship.level}',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('ID:${ship.uid}'),
                                    if (shipSort.name.startsWith('level'))
                                      Text(
                                          '${S.current.KCDashboardShipUpgradeLevel}:${ship.upgradeLevel}'),
                                    if (shipSort.name.startsWith('attack'))
                                      Text(
                                          '${S.current.KCDashboardShipTotalAttack}:${ship.totalAttack}'),
                                    if (shipSort.name.startsWith('aa'))
                                      Text(
                                          '${S.current.KCDashboardShipAA}:${ship.antiAircraft?[0]}'),
                                    if (shipSort.name.startsWith('asw'))
                                      Text(
                                          '${S.current.KCDashboardShipASW}:${ship.antiSubmarine?[0]}'),
                                    if (shipSort.name.startsWith('armor'))
                                      Text(
                                          '${S.current.KCDashboardShipArmor}:${ship.armor?[0]}'),
                                    if (shipSort.name.startsWith('luck'))
                                      Text(
                                          '${S.current.KCDashboardShipLuck}:${ship.luck?[0]}'),
                                    if (shipSort.name.startsWith('condition'))
                                      Text(
                                          '${S.current.KCDashboardShipCondition}:${ship.condition}'),
                                  ],
                                ),
                              ),
                            );
                          }
                          return const CupertinoListTile(title: Text('N/A'));
                        }),
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sortShips() {
    int Function(Ship, Ship) compareFunction;

    switch (shipSort) {
      case ShipSort.level:
        compareFunction = (a, b) => a.level.compareTo(b.level);
        break;
      case ShipSort.levelDesc:
        compareFunction = (a, b) => b.level.compareTo(a.level);
        break;
      case ShipSort.uid:
        compareFunction = (a, b) => a.uid.compareTo(b.uid);
        break;
      case ShipSort.uidDesc:
        compareFunction = (a, b) => b.uid.compareTo(a.uid);
        break;
      case ShipSort.attack:
        compareFunction = (a, b) => a.totalAttack.compareTo(b.totalAttack);
        break;
      case ShipSort.attackDesc:
        compareFunction = (a, b) => b.totalAttack.compareTo(a.totalAttack);
        break;
      case ShipSort.aa:
        compareFunction =
            (a, b) => a.antiAircraft![0].compareTo(b.antiAircraft![0]);
        break;
      case ShipSort.aaDesc:
        compareFunction =
            (a, b) => b.antiAircraft![0].compareTo(a.antiAircraft![0]);
        break;
      case ShipSort.asw:
        compareFunction =
            (a, b) => a.antiSubmarine![0].compareTo(b.antiSubmarine![0]);
        break;
      case ShipSort.aswDesc:
        compareFunction =
            (a, b) => b.antiSubmarine![0].compareTo(a.antiSubmarine![0]);
        break;
      case ShipSort.armor:
        compareFunction = (a, b) => a.armor![0].compareTo(b.armor![0]);
        break;
      case ShipSort.armorDesc:
        compareFunction = (a, b) => b.armor![0].compareTo(a.armor![0]);
        break;
      case ShipSort.luck:
        compareFunction = (a, b) => a.luck![0].compareTo(b.luck![0]);
        break;
      case ShipSort.luckDesc:
        compareFunction = (a, b) => b.luck![0].compareTo(a.luck![0]);
        break;
      case ShipSort.condition:
        compareFunction = (a, b) => a.condition!.compareTo(b.condition!);
        break;
      case ShipSort.conditionDesc:
        compareFunction = (a, b) => b.condition!.compareTo(a.condition!);
      default:
        return; // No sorting if shipSort does not match any case.
    }

    ships?.sort(compareFunction);
  }

  SingleChildScrollView buildFiltersWidget() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 8.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pullDownButtonFilter(
                child: FilterButton(title: _shipTypeTitle),
                option: MenuOption.shipType,
                items: shipTypeMap),
            const SizedBox(
              width: 10,
            ),
            pullDownButtonFilter(
                child: FilterButton(title: _shipStatusTitle),
                option: MenuOption.shipStatus,
                items: {
                  S.current.TextAll: ShipStatus.all,
                  S.current.KCDashboardShipViewerFilterShipStatusWaitUpgrade:
                      ShipStatus.waitUpgrade,
                  S.current.KCDashboardShipViewerFilterShipStatusCanUpgrade:
                      ShipStatus.canUpgrade,
                  S.current.KCDashboardShipViewerFilterShipStatusUpgraded:
                      ShipStatus.upgraded
                }),
            const SizedBox(
              width: 10,
            ),
            pullDownButtonFilter(
                child: FilterButton(title: _shipSlotTitle),
                option: MenuOption.shipSlot,
                items: {
                  S.current.TextAll: ShipSlot.all,
                  S.current.KCDashboardShipViewerFilterShipSlotHaveExSlot:
                      ShipSlot.slotEx,
                  S.current.KCDashboardShipViewerFilterShipSlotNoExSlot:
                      ShipSlot.noSlotEx,
                }),
            const SizedBox(
              width: 10,
            ),
            pullDownButtonFilter(
                child: FilterButton(title: _shipSpeedTitle),
                option: MenuOption.shipSpeed,
                items: {
                  S.current.TextAll: ShipSpeed.all,
                  S.current.TextSlowSpeed: ShipSpeed.slow,
                  S.current.TextFastSpeed: ShipSpeed.fast,
                  S.current.TextFastPlusSpeed: ShipSpeed.fastPlus,
                  S.current.TextFastestSpeed: ShipSpeed.fastest
                })
          ],
        ),
      ),
    );
  }

  Future<List<Ship>> getShips() async {
    List<Ship>? filterShips = [...?ships];
    // if (shipType.isNotEmpty) {
    //   filterShips = filterShips
    //       .where((element) => shipType.contains(element.shipType))
    //       .toList();
    // }
    if (selectedShipType.isEmpty) {
      return [];
    }
    if (selectedShipType.length == 1 &&
        selectedShipType.first == S.current.TextAll) {
      log("all ship type selected");
    } else if (selectedShipType.isNotEmpty) {
      final List<int> shipType = [
        for (final item in selectedShipType) ...?shipTypeMap[item]
      ];
      filterShips = filterShips
          .where((element) => shipType.contains(element.shipType))
          .toList();
    }
    if (shipStatus != ShipStatus.all) {
      if (shipStatus == ShipStatus.waitUpgrade) {
        filterShips =
            filterShips.where((element) => element.waitUpgrade()).toList();
      } else if (shipStatus == ShipStatus.upgraded) {
        filterShips =
            filterShips.where((element) => !element.canUpgrade).toList();
      } else if (shipStatus == ShipStatus.canUpgrade) {
        filterShips =
            filterShips.where((element) => element.canUpgrade).toList();
      }
    }
    if (shipSlot != ShipSlot.all) {
      if (shipSlot == ShipSlot.slotEx) {
        filterShips =
            filterShips.where((element) => element.haveSlotEx).toList();
      } else if (shipSlot == ShipSlot.noSlotEx) {
        filterShips =
            filterShips.where((element) => !element.haveSlotEx).toList();
      }
    }
    if (shipSpeed != ShipSpeed.all) {
      switch (shipSpeed) {
        case ShipSpeed.slow:
          filterShips = filterShips
              .where((element) => element.speedLevel == S.current.TextSlowSpeed)
              .toList();
          break;
        case ShipSpeed.fast:
          filterShips = filterShips
              .where((element) => element.speedLevel == S.current.TextFastSpeed)
              .toList();
          break;
        case ShipSpeed.fastPlus:
          filterShips = filterShips
              .where((element) =>
                  element.speedLevel == S.current.TextFastPlusSpeed)
              .toList();
          break;
        case ShipSpeed.fastest:
          filterShips = filterShips
              .where(
                  (element) => element.speedLevel == S.current.TextFastestSpeed)
              .toList();
          break;
        default:
          break;
      }
    }
    return filterShips;
  }

  Widget pullDownButtonFilter(
      {required Widget child,
      required MenuOption option,
      required Map<String, Object?> items}) {
    return PullDownButton(
      position: PullDownMenuPosition.over,
      scrollController: ScrollController(),
      itemBuilder: (context) {
        List<PullDownMenuItem> menuItems = [];
        items.forEach((key, value) {
          if (option == MenuOption.shipType) {
            menuItems.add(PullDownMenuItem.selectable(
              selected: selectedShipType.isNotEmpty &&
                  (selectedShipType.contains(key) ||
                      selectedShipType.first == S.current.TextAll),
              onTap: () {
                if (value is List<int>) {
                  onSelectShipType(key);
                }
              },
              title: key,
            ));
          } else {
            menuItems.add(
              PullDownMenuItem(
                onTap: () {
                  setState(() {
                    if (option == MenuOption.shipStatus &&
                        value is ShipStatus) {
                      shipStatus = value;
                    } else if (option == MenuOption.shipSort &&
                        value is ShipSort) {
                      shipSort = value;
                    } else if (option == MenuOption.shipSlot &&
                        value is ShipSlot) {
                      shipSlot = value;
                    } else if (option == MenuOption.shipSpeed &&
                        value is ShipSpeed) {
                      shipSpeed = value;
                    }
                  });
                },
                title: key,
              ),
            );
          }
        });
        return menuItems;
      },
      buttonBuilder: (context, showMenu) => GestureDetector(
        onTap: showMenu,
        child: child,
      ),
    );
  }

  Widget buildPopupMenu(
      {required Widget child,
      required MenuOption option,
      required Map<String, Object?> items}) {
    return PopupMenuButton<Object?>(
      position: PopupMenuPosition.under,
      key: ValueKey<String>('ShowPopupMenu-$option'),
      onSelected: (Object? value) {
        log('option: $option, value: $value');
        setState(() {
          if (option == MenuOption.shipType && value is List<int>) {
            // shipType = value;
          } else if (option == MenuOption.shipStatus && value is ShipStatus) {
            shipStatus = value;
          } else if (option == MenuOption.shipSort && value is ShipSort) {
            shipSort = value;
          } else if (option == MenuOption.shipSlot && value is ShipSlot) {
            shipSlot = value;
          } else if (option == MenuOption.shipSpeed && value is ShipSpeed) {
            shipSpeed = value;
          }
        });
      },
      onCanceled: () {
        log('cancel');
      },
      itemBuilder: (BuildContext context) {
        List<PopupMenuItem<Object?>> menuItems = [];
        items.forEach((key, value) {
          menuItems.add(
            PopupMenuItem(
              onTap: () {
                log("tap $key");
                setState(() {
                  if (key != S.current.TextAll) {
                    if (option == MenuOption.shipType) {
                      onSelectShipType(key);
                      // shipTypeTitle = key;
                    }
                    if (option == MenuOption.shipStatus) {
                      // shipStatusTitle = key;
                    }
                    if (option == MenuOption.shipSlot) {
                      // shipSlotTitle = key;
                    }
                  } else {
                    if (option == MenuOption.shipType) {
                      onSelectShipType(key);
                      // shipTypeTitle = 'Ship Type';
                    }
                    if (option == MenuOption.shipStatus) {
                      // shipStatusTitle = 'Ship Status';
                    }
                    if (option == MenuOption.shipSlot) {
                      // shipSlotTitle = 'Ship Slot';
                    }
                  }
                });
              },
              value: value,
              child: option == MenuOption.shipType
                  ? buildShipTypeItem(key)
                  : Text(key),
            ),
          );
        });
        return menuItems;
      },
      child: child,
    );
  }

  Widget buildShipTypeItem(String title) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title),
      if (selectedShipType.isNotEmpty &&
          (selectedShipType.contains(title) ||
              selectedShipType.first == S.current.TextAll))
        Icon(
          CupertinoIcons.checkmark_alt,
        ),
    ]);
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 7.0,
        right: 1,
        top: 1,
        bottom: 1,
      ),
      decoration: BoxDecoration(
          color: CupertinoColors.systemGroupedBackground.resolveFrom(context),
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: CupertinoColors.label.resolveFrom(context).withOpacity(0.3),
            width: 1,
          )),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 160,
            ),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: CupertinoColors.label.resolveFrom(context).withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
