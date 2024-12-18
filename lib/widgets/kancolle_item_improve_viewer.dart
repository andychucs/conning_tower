import 'dart:developer';

import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/ooyodo/akashi_schedule.dart';
import 'package:conning_tower/providers/generatable/kancolle_item_data_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_localization_provider.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/utils/toast.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

import '../generated/l10n.dart';
import '../models/feature/kancolle/equipment.dart';

const String kPinedItems = "KC_ITEM_IMPROVE_VIEWER_PINED_ITEMS";

enum WeekdaySelector {
  all,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class KancolleItemImproveViewer extends ConsumerStatefulWidget {
  const KancolleItemImproveViewer({super.key});

  @override
  ConsumerState createState() => _KancolleItemImproveViewerState();
}

class _KancolleItemImproveViewerState
    extends ConsumerState<KancolleItemImproveViewer> {
  late WeekdaySelector _selectedSegment;
  String searchText = "";
  List<int> pinedItemsId = [];

  @override
  void initState() {
    initWeekday();
    super.initState();
  }

  void loadPinedItem() {
    final pinedItems = localStorage.getStringList(kPinedItems) ?? [];
    this.pinedItemsId = pinedItems.map((e) => int.parse(e)).toList();
    log("PINED: $pinedItems");
  }

  void initWeekday() {
    final today = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo')); // JST(UTC+9)
    _selectedSegment = switch (today.weekday) {
      DateTime.monday => WeekdaySelector.monday,
      DateTime.tuesday => WeekdaySelector.tuesday,
      DateTime.wednesday => WeekdaySelector.wednesday,
      DateTime.thursday => WeekdaySelector.thursday,
      DateTime.friday => WeekdaySelector.friday,
      DateTime.saturday => WeekdaySelector.saturday,
      DateTime.sunday => WeekdaySelector.sunday,
      _ => WeekdaySelector.all
    };
  }

  @override
  Widget build(BuildContext context) {
    final itemData = ref.watch(akashiScheduleDataProvider);
    Locale locale = Localizations.localeOf(context);
    final l10n = ref.watch(kancolleLocalizationProvider(locale));
    final l10nData = l10n.whenData((data) => data.data).value;
    final kcWiki = ref.watch(kcWikiDataStateProvider);
    final kcWikiData = kcWiki.whenData((data) => data).value;
    final weekdayIndex = _selectedSegment.index;
    loadPinedItem();

    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: CupertinoSlidingSegmentedControl<WeekdaySelector>(
          children: {
            WeekdaySelector.all: Text(S.current.ShortTextAll),
            WeekdaySelector.monday: Text(DateFormat.EEEEE().format(monday)),
            WeekdaySelector.tuesday: Text(DateFormat.EEEEE().format(tuesday)),
            WeekdaySelector.wednesday:
                Text(DateFormat.EEEEE().format(wednesday)),
            WeekdaySelector.thursday: Text(DateFormat.EEEEE().format(thursday)),
            WeekdaySelector.friday: Text(DateFormat.EEEEE().format(friday)),
            WeekdaySelector.saturday: Text(DateFormat.EEEEE().format(saturday)),
            WeekdaySelector.sunday: Text(DateFormat.EEEEE().format(sunday)),
          },
          groupValue: _selectedSegment,
          onValueChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
              });
            }
          },
        ),
      ),
      child: SafeArea(
        child: itemData.when(
            data: (data) {
              List<ImproveItem> items = [...data.improveItems];
              if (weekdayIndex != WeekdaySelector.all.index) {
                items = items
                    .where((value) => value.isAbleOn(weekdayIndex))
                    .toList();
              }

              if (l10n.isLoading || kcWiki.isLoading) {
                return const Center(child: CupertinoActivityIndicator());
              }
              Map<int, String> shipMap = kcWikiData!.ships
                  .asMap()
                  .map((key, value) => MapEntry(value.id, value.name!));
              Map<int, String> slotItemMap = l10nData!.equipment!;
              Map<int, String> useItemMap = l10nData.itemInImprove!;

              if (searchText.isNotEmpty) {
                items = items
                    .where((item) =>
                        slotItemMap[item.id]?.contains(searchText) ?? true)
                    .toList();
              }

              if (pinedItemsId.isNotEmpty) {
                final pined =
                    items.where((e) => pinedItemsId.contains(e.id)).toList();
                items.removeWhere((e) => pinedItemsId.contains(e.id));
                items.insertAll(0, pined);
              }

              final len = items.length;
              return ScrollViewWithCupertinoScrollbar(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 8, 20.0, 0.0),
                    child: CupertinoSearchTextField(
                      onChanged: (text) {
                        setState(() {
                          searchText = text;
                        });
                      },
                    ),
                  ),
                  CupertinoListSection.insetGrouped(
                    header: CupertinoListSectionDescription(
                        'Ver.${data.dataVersion}'),
                    children: List.generate(len, (index) {
                      ImproveItem improveItem = items[index];
                      EquipmentImprove improve = EquipmentImprove.fromData(
                          improveItem, slotItemMap, useItemMap, shipMap);

                      return CupertinoListTile(
                        title: Text(improve.name),
                        subtitle: Text(improve.allShipNames(shipMap,
                            weekday: _selectedSegment.index)),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          Feedback.forTap(context);
                          HapticFeedback.lightImpact();
                          showCupertinoModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => ImproveDetailSheet(
                              id: improveItem.id ?? 0,
                              pinedIds: pinedItemsId,
                              notifyParent: () => setState(() {}),
                              improve: improve,
                              slotItemMap: slotItemMap,
                              useItemMap: useItemMap,
                              shipMap: shipMap,
                            ),
                          );
                        },
                      );
                    }),
                  )
                ],
              );
            },
            error: (e, stack) => Container(),
            loading: () => const Center(child: CupertinoActivityIndicator())),
      ),
    );
  }
}

class ImproveDetailSheet extends StatefulWidget {
  const ImproveDetailSheet({
    super.key,
    required this.improve,
    required this.slotItemMap,
    required this.useItemMap,
    required this.shipMap,
    required this.id,
    required this.notifyParent,
    required this.pinedIds,
  });

  final EquipmentImprove improve;
  final Map<int, String> slotItemMap;
  final Map<int, String> useItemMap;
  final Map<int, String> shipMap;
  final int id;
  final VoidCallback notifyParent;
  final List<int> pinedIds;

  @override
  State<ImproveDetailSheet> createState() => _ImproveDetailSheetState();
}

class _ImproveDetailSheetState extends State<ImproveDetailSheet> {
  late bool _pined;

  @override
  void initState() {
    if (widget.pinedIds.contains(widget.id)) {
      _pined = true;
    } else {
      _pined = false;
    }
    super.initState();
  }

  void onPinedItem() {
    List<int> pinedItems = [...widget.pinedIds];
    if (_pined) {
      Toast.show(title: "Unpin");
      pinedItems.remove(widget.id);
    } else {
      Toast.show(title: "Pin");
      pinedItems.add(widget.id);
    }
    localStorage.setStringList(
        kPinedItems, pinedItems.map((e) => e.toString()).toList());
    widget.notifyParent();
    setState(() {
      _pined = !_pined;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.improve.name),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: (){
            Feedback.forTap(context);
            HapticFeedback.lightImpact();
            onPinedItem();
          },
          child: Icon(
            _pined ? CupertinoIcons.pin_slash : CupertinoIcons.pin,
            size: CupertinoTheme.of(context).textTheme.pickerTextStyle.fontSize,
          ),
        ),
      ),
      child: ListView(
        children: List.generate(widget.improve.data.length, (index) {
          final improveData = widget.improve.data[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // base resource
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ResourceLabel(
                      value: improveData.resource.oil,
                      color: const Color.fromRGBO(32, 89, 29, 1.0),
                    ),
                    ResourceLabel(
                      value: improveData.resource.ammo,
                      color: const Color.fromRGBO(126, 102, 54, 1.0),
                    ),
                    ResourceLabel(
                      value: improveData.resource.steel,
                      color: const Color.fromRGBO(181, 180, 180, 1.0),
                    ),
                    ResourceLabel(
                      value: improveData.resource.bauxite,
                      color: const Color.fromRGBO(219, 150, 102, 1.0),
                    ),
                  ],
                ),
                const Divider(),
                // extra resource
                ...buildImproveStageList(improveData),

                // req ship and weekday
                if (improveData.req != null && improveData.req!.isNotEmpty)
                  ...List.generate(improveData.req!.length, (reqIndex) {
                    return Column(
                      children: [
                        Text(
                            improveData.req![reqIndex]
                                .shipNameList(widget.shipMap)
                                .join(" | "),
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis),
                        Text(improveData.req![reqIndex].dayNameEEEEE),
                        const Divider(),
                      ],
                    );
                  })
              ],
            ),
          );
        }),
      ),
    );
  }

  List<Widget> buildImproveStageList(EquipmentImproveData improveData) {
    return List.generate(improveData.resource.extra.length, (index) {
      final stage = improveData.resource.extra[index];
      final developmentMaterialCost =
          "${S.current.KCResourceDevelopmentMaterial}: ${stage.dCost.text}";
      final improvementMaterialCost =
          "${S.current.KCResourceImprovementMaterial}: ${stage.iCost.text}";
      List<Widget> slotItems = [];
      List<Widget> useItems = [];
      if (stage.getSlotCostMap(widget.slotItemMap).isNotEmpty) {
        for (var key in stage.getSlotCostMap(widget.slotItemMap).keys) {
          slotItems.add(Text(
              "$key: ${stage.getSlotCostMap(widget.slotItemMap)[key]!.text}"));
        }
      }
      if (stage.getUseCostMap(widget.useItemMap).isNotEmpty) {
        for (var key in stage.getUseCostMap(widget.useItemMap).keys) {
          useItems.add(Text(
              "$key: ${stage.getUseCostMap(widget.useItemMap)[key]!.text}"));
        }
      }
      Widget stageWidget = Container();
      if (index == 0) {
        stageWidget = const Text("0~5 ★");
      } else if (index == 1) {
        stageWidget = const Text("6~9 ★");
      } else if (index == 2) {
        if (improveData.upgradeName == '') return Container();
        stageWidget = Column(
          children: [
            const Text("Max ★"),
            const Icon(
              CupertinoIcons.arrow_down_circle,
              size: 14,
            ),
            Text(improveData.upgradeName),
          ],
        );
      }
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(width: 120, child: Center(child: stageWidget)),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(developmentMaterialCost),
                    Text(improvementMaterialCost),
                    ...slotItems,
                    ...useItems
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      );
    });
  }
}

class ResourceLabel extends StatelessWidget {
  const ResourceLabel({
    super.key,
    required this.value,
    required this.color,
  });

  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: 14,
            height: 14,
            color: color,
          ),
        ),
        const SizedBox(width: 8),
        Text('$value'),
      ],
    );
  }
}
