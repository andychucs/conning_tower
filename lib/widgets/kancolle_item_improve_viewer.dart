import 'dart:developer';

import 'package:conning_tower/models/data/ooyodo/akashi_schedule.dart';
import 'package:conning_tower/providers/generatable/kancolle_item_data_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_localization_provider.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../generated/l10n.dart';
import '../models/data/kcwiki/ship.dart';

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
    final l10n = ref.watch(kancolleLocalizationProvider(locale).notifier).data;
    final kcWikiData = ref.watch(kcWikiDataStateProvider.notifier).data;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(S.of(context).KCAkashiStudio),
      ),
      child: SafeArea(
        child: itemData.when(
            data: (data) {
              final len = data.improveItems.length;
              return ScrollViewWithCupertinoScrollbar(
                children: [
                  CupertinoListSection.insetGrouped(
                    header: CupertinoListSectionDescription(
                        'Ver.${data.dataVersion}'),
                    children: List.generate(len, (index) {
                      ImproveItem improveItem = data.improveItems[index];
                      final title = l10n.equipment?[improveItem.id] ??
                          "slot item ${improveItem.id}";
                      final reqs = [
                        for (var improveEvent in improveItem.improvement!)
                          ...?improveEvent?.req
                      ];

                      final reqShips = [];

                      for (var req in reqs) {
                        final ships = req?.ship;
                        if (ships != null && ships.isNotEmpty) {
                          for (var ship in ships) {
                            final shipData = kcWikiData.ships
                                .firstWhere((element) => element.id == ship, orElse: () => Ship(id: 0, name: ''));
                            if (shipData.id == 0) {
                              log("unable to find ship ${ship}");
                            }
                            reqShips.add(shipData.name);
                          }
                        }
                      }

                      return CupertinoListTile(
                        title: Text(title),
                        subtitle: Text(reqShips.join('|')),
                        onTap: () {
                          showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context) => Container(),
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
