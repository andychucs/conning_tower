import 'package:conning_tower/models/data/kcsapi/start2/get_data_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'map_info.dart';

part 'data_info.freezed.dart';

@unfreezed
class DataInfo with _$DataInfo {
  const DataInfo._();

  factory DataInfo({
    Map<int, GetDataApiDataApiMstShipEntity>? shipInfo,
    Map<int, GetDataApiDataApiMstUseitemEntity>? itemInfo,
    Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo,
    Map<int, MapArea>? mapAreaInfo,
    Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo,
    List<GetDataApiDataApiMstStypeEntity>? shipTypeList,
    Map<int, List<int>>? shipUpgradeMap,
    Map<int, String>? equipmentTypeNameMap,
  }) = _DataInfo;

  List<int>? get allOurShipIds => shipInfo?.values
      .where((e) => e.apiSortno != null)
      .map((e) => e.apiId)
      .toList();

  /// slotItemInfo => {index: element.apiName}
  Map<int, String>? get slotItemNameMap {
    if (slotItemInfo == null) return null;
    if (slotItemInfo!.isEmpty) return null;
    return slotItemInfo!.map((key, value) => MapEntry(key, value.apiName));
  }

  void initShipUpgradeMap() {
    shipUpgradeMap ??= {};
    Set<int> allAfterIds = {};
    for (final ship in shipInfo!.values.where((e) => e.apiSortno != null)) {
      final afterId = int.parse(ship.apiAftershipid ?? "0");
      if (shipUpgradeMap!.keys.contains(afterId)) {
        shipUpgradeMap?.remove(afterId);
      }
      if (allAfterIds.contains(ship.apiId)) continue;
      final afterIds = getAfterIds([], afterId);
      allAfterIds.addAll(afterIds);
      shipUpgradeMap?[ship.apiId] = afterIds;
    }
  }

  List<int> getAfterIds(List<int> ids, int? nextId) {
    if (nextId == null) return ids;
    if (ids.contains(nextId) || nextId == 0) return ids;
    ids.add(nextId);
    final newNext = shipInfo?[nextId];
    return getAfterIds(ids, int.parse(newNext?.apiAftershipid ?? "0"));
  }
}
