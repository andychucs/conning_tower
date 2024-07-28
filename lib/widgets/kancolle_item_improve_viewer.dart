import 'package:conning_tower/models/data/ooyodo/akashi_schedule.dart';
import 'package:conning_tower/providers/generatable/kancolle_item_data_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_localization_provider.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../generated/l10n.dart';
import '../models/feature/dashboard/kancolle/equipment.dart';

class KancolleItemImproveViewer extends ConsumerStatefulWidget {
  const KancolleItemImproveViewer({super.key});

  @override
  ConsumerState createState() => _KancolleItemImproveViewerState();
}

class _KancolleItemImproveViewerState
    extends ConsumerState<KancolleItemImproveViewer> {
  @override
  Widget build(BuildContext context) {
    final itemData = ref.watch(kancolleItemDataProvider);
    Locale locale = Localizations.localeOf(context);
    final l10n = ref.watch(kancolleLocalizationProvider(locale));
    final l10nData = l10n.whenData((data) => data.data).value;
    final kcWiki = ref.watch(kcWikiDataStateProvider);
    final kcWikiData = kcWiki.whenData((data) => data).value;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(S.of(context).KCAkashiStudio),
      ),
      child: SafeArea(
        child: itemData.when(
            data: (data) {
              final len = data.improveItems.length;

              if (l10n.isLoading || kcWiki.isLoading) {
                return const Center(child: CupertinoActivityIndicator());
              }
              Map<int, String> shipMap = kcWikiData!.ships
                  .asMap()
                  .map((key, value) => MapEntry(value.id, value.name!));
              Map<int, String> slotItemMap = l10nData!.equipment!;
              Map<int, String> useItemMap = l10nData.itemInImprove!;
              return ScrollViewWithCupertinoScrollbar(
                children: [
                  CupertinoListSection.insetGrouped(
                    header: CupertinoListSectionDescription(
                        'Ver.${data.dataVersion}'),
                    children: List.generate(len, (index) {
                      ImproveItem improveItem = data.improveItems[index];
                      EquipmentImprove improve = EquipmentImprove.fromData(
                          improveItem, slotItemMap, useItemMap, shipMap);

                      return CupertinoListTile(
                        title: Text(improve.name),
                        subtitle: Text(improve.allShipNames(shipMap)),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () {
                          showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context) => ImproveDetailSheet(
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

class ImproveDetailSheet extends StatelessWidget {
  const ImproveDetailSheet({
    super.key,
    required this.improve,
    required this.slotItemMap,
    required this.useItemMap,
    required this.shipMap,
  });

  final EquipmentImprove improve;
  final Map<int, String> slotItemMap;
  final Map<int, String> useItemMap;
  final Map<int, String> shipMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(improve.name),
        ),
        Expanded(
          child: ListView(
            children: List.generate(improve.data.length, (index) {
              final improveData = improve.data[index];

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
                                    .shipNameList(shipMap)
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
        ),
      ],
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
      if (stage.getSlotCostMap(slotItemMap).isNotEmpty) {
        for (var key in stage.getSlotCostMap(slotItemMap).keys) {
          slotItems.add(
              Text("$key: ${stage.getSlotCostMap(slotItemMap)[key]!.text}"));
        }
      }
      if (stage.getUseCostMap(useItemMap).isNotEmpty) {
        for (var key in stage.getUseCostMap(useItemMap).keys) {
          useItems
              .add(Text("$key: ${stage.getUseCostMap(useItemMap)[key]!.text}"));
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
