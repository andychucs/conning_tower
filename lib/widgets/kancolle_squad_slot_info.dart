import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/data/kcsapi/start2/get_data_entity.dart';
import '../models/data/l10n/kancolle_localization.dart';
import '../models/feature/kancolle/equipment.dart';
import '../models/feature/kancolle/ship.dart';
import '../models/feature/kancolle/squad.dart';
import 'components/edge_insets_constants.dart';
import 'cupertino_grouped_section.dart';

class KancolleSquadSlotInfo extends StatelessWidget {
  const KancolleSquadSlotInfo({
    super.key,
    required this.squad,
    required this.slotMap,
    this.slotItemInfo,
    this.l10nData,
    this.shipInfo,
  }) : stored = true;

  const KancolleSquadSlotInfo.unstored({
    super.key,
    required this.squad,
    required this.slotItemInfo,
    required this.shipInfo,
    this.l10nData,
    this.slotMap,
  }) : stored = false;

  final Squad squad;
  final Map<int, Equipment>? slotMap;
  final Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo;
  final KancolleLocalizationData? l10nData;
  final bool stored;
  final Map<int, GetDataApiDataApiMstShipEntity>? shipInfo;

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
                        "${stored ? ship.name : shipInfo![ship.shipId]?.apiName}",
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
                      children: stored
                          ? buildSlotInfo(ship, context)
                          : buildUnstoredSlotInfo(ship),
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

  List<Widget> buildSlotInfo(Ship ship, BuildContext context) {
    return [
      for (final (index, item) in ship.slot!.indexed)
        if (item != -1) equipmentItem(context, item, ship, index),
      if (ship.slotEx != null && ship.slotEx != -1 && ship.slotEx != 0)
        Text(slotMap?[ship.slotEx]?.text(l10nMap: l10nData?.equipmentLocal) ??
            "N/A"),
    ];
  }

  List<Widget> buildUnstoredSlotInfo(Ship ship) {
    return [
      for (final item in ship.slot ?? [])
        if (item != -1)
          if (l10nData == null)
            Text("${slotItemInfo![item]?.apiName}")
          else
            Text(
                "${l10nData!.equipmentLocal?[slotItemInfo![item]?.apiName] ?? slotItemInfo![item]?.apiName}")
    ];
  }

  Widget equipmentItem(BuildContext context, int item, Ship ship, int index) {
    final text = Text(
      slotMap?[item]?.text(
              onSlot: ship.onSlot?[index], l10nMap: l10nData?.equipmentLocal) ??
          "N/A",
      softWrap: true,
    );
    if (ship.onSlot?[index] == null) {
      return text;
    }
    final iconData = slotMap?[item]?.proficiencyIcon;
    final iconColor = slotMap?[item]?.proficiencyColor;
    return Row(
      children: [
        Expanded(child: text),
        Icon(
          iconData,
          size: CupertinoTheme.of(context).textTheme.textStyle.fontSize,
          color: iconColor,
        ),
      ],
    );
  }
}
