import 'dart:developer';

import 'package:conning_tower/models/data/ooyodo/equipment_type.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../generated/l10n.dart';
import '../models/feature/kancolle/equipment.dart';
import '../providers/generatable/kancolle_localization_provider.dart';
import 'input_pages.dart';

Map<EquipmentMainFilter, String> equipmentMainFilterNameMap = {
  EquipmentMainFilter.none: S.current.TextNone,
  EquipmentMainFilter.other: S.current.TextOther,
  EquipmentMainFilter.fighter: S.current.KCEquipmentMainTypeFilterFighter,
  EquipmentMainFilter.attack: S.current.KCEquipmentMainTypeFilterAttack,
  EquipmentMainFilter.reconAndSeaplane:
      S.current.KCEquipmentMainTypeFilterReconAndSeaplane,
  EquipmentMainFilter.gun: S.current.KCEquipmentMainTypeFilterGun,
  EquipmentMainFilter.ammo: S.current.KCEquipmentMainTypeFilterAmmo,
  EquipmentMainFilter.aaGun: S.current.KCEquipmentMainTypeFilterAAGun,
  EquipmentMainFilter.torpedo: S.current.KCEquipmentMainTypeFilterTorpedo,
  EquipmentMainFilter.antiSub: S.current.KCEquipmentMainTypeFilterAntiSub,
  EquipmentMainFilter.radar: S.current.KCEquipmentMainTypeFilterRadar,
  EquipmentMainFilter.vehicle: S.current.KCEquipmentMainTypeFilterVehicle,
  EquipmentMainFilter.improvementAndResource:
      S.current.KCEquipmentMainTypeFilterImprovementAndResource,
  EquipmentMainFilter.ldAircraft: S.current.KCEquipmentMainTypeFilterLDAircraft,
  EquipmentMainFilter.engineAndArmor:
      S.current.KCEquipmentMainTypeFilterEngineAndArmor,
  EquipmentMainFilter.searchlightAndDevice:
      S.current.KCEquipmentMainTypeFilterSearchlightAndDevice
};

class KancolleItemViewer extends ConsumerStatefulWidget {
  const KancolleItemViewer({super.key});

  @override
  ConsumerState createState() => _KancolleItemViewerState();
}

class _KancolleItemViewerState extends ConsumerState<KancolleItemViewer> {
  int _currentEquipmentNumber = 0;
  int _currentEquipmentTypes = 0;
  List<EquipmentCollection> _currentCollections = [];
  EquipmentMainFilter _mainFilter = EquipmentMainFilter.none;
  late EquipmentTypeUtil equipmentTypeUtil;
  int _currentEquipmentSubType2 = 0;

  List<int> get _currentEquipmentSubType2List =>
      equipmentMainFilterSubType2Map[_mainFilter]!;

  Set<int> _currentCollectionSubType2Set = {0};

  @override
  Widget build(BuildContext context) {
    final collections =
        ref.watch(kancolleDataProvider).fleet.equipmentCollections;
    Locale locale = Localizations.localeOf(context);
    final l10n = ref.watch(kancolleLocalizationProvider(locale));
    final l10nData = l10n.whenData((data) => data.data).value;
    equipmentTypeUtil = EquipmentTypeUtil(locale: locale);

    if (collections == null) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            border: null,
            backgroundColor: CupertinoColors.systemGroupedBackground,
            middle: Text(S.of(context).TextEquipment),
          ),
          child: SafeArea(
            child: Center(
              child: CupertinoActivityIndicator(),
            ),
          ));
    }

    setCollections(collections);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(
            '${_mainFilter == EquipmentMainFilter.none ? S.of(context).TextEquipment : equipmentMainFilterNameMap[_mainFilter]}'),
        trailing: PullDownButton(
          scrollController: ScrollController(),
          itemBuilder: (context) {
            return EquipmentMainFilter.values.map(
              (value) {
                return PullDownMenuItem(
                  title: equipmentMainFilterNameMap[value] ?? 'N/A',
                  onTap: () {
                    setState(() {
                      _mainFilter = value;
                      _currentEquipmentSubType2 = 0;
                      _currentCollectionSubType2Set = {0};
                    });
                  },
                );
              },
            ).toList();
          },
          buttonBuilder: (context, showMenu) => CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: showMenu,
            child: Icon(
              CupertinoIcons.line_horizontal_3_decrease_circle,
              size:
                  CupertinoTheme.of(context).textTheme.pickerTextStyle.fontSize,
              color: CupertinoColors.systemGrey2.resolveFrom(context),
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: ScrollViewWithCupertinoScrollbar(
          children: [
            if (_mainFilter != EquipmentMainFilter.none)
              CupertinoListSection.insetGrouped(
                header:
                    CupertinoListSectionDescription(S.of(context).TextCategory),
                children: [
                  CupertinoListTile(
                    title: Text(equipmentTypeUtil
                            .getSubType2Title(_currentEquipmentSubType2) ??
                        S.of(context).TextAll),
                    trailing: PullDownButton(
                      scrollController: ScrollController(),
                      itemBuilder: (context) {
                        return _currentCollectionSubType2Set.map(
                          (value) {
                            return PullDownMenuItem(
                              title: equipmentTypeUtil
                                      .getSubType2Title(value) ??
                                  (value == 0 ? S.of(context).TextAll : 'N/A'),
                              onTap: () {
                                setState(() {
                                  _currentEquipmentSubType2 = value;
                                });
                              },
                            );
                          },
                        ).toList();
                      },
                      buttonBuilder: (BuildContext context,
                          Future<void> Function() showMenu) {
                        return CupertinoButton(
                          padding: EdgeInsets.only(left: 32, right: 8),
                          onPressed: showMenu,
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .fontSize,
                            color: CupertinoColors.systemGrey2
                                .resolveFrom(context),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            CupertinoListSection.insetGrouped(
                header: CupertinoListSectionDescription(S
                    .of(context)
                    .KCEquipmentViewerTotalNote(
                        _currentEquipmentTypes, _currentEquipmentNumber)),
                children: [
                  for (final collection in _currentCollections)
                    CupertinoListTile(
                      title: Text(l10nData?.equipmentLocal?[collection.name] ??
                          collection.name),
                      subtitle: collection.levelMessage == ""
                          ? null
                          : Text(collection.levelMessage),
                      additionalInfo:
                          Text(collection.equipments.length.toString()),
                    )
                ])
          ],
        ),
      ),
    );
  }

  void setCollections(Map<int, EquipmentCollection> collections) {
    _currentCollections = collections.values.toList();
    if (_mainFilter != EquipmentMainFilter.none) {
      _currentCollections.removeWhere((element) =>
          !_currentEquipmentSubType2List.contains(element.subType2));
      _currentCollectionSubType2Set
          .addAll(_currentCollections.map((element) => element.subType2));
    }
    if (_currentEquipmentSubType2 != 0) {
      _currentCollections.removeWhere(
          (element) => element.subType2 != _currentEquipmentSubType2);
    }
    _currentCollections.sort((a, b) => a.sortId.compareTo(b.sortId));
    _currentEquipmentNumber =
        _currentCollections.fold(0, (p, e) => p + e.equipments.length);
    _currentEquipmentTypes = _currentCollections.length;
  }
}
