import 'package:conning_tower/models/data/kcsapi/start2/get_data_entity.dart';
import 'map_info.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_info.freezed.dart';

@unfreezed
class DataInfo with _$DataInfo {
  factory DataInfo({
    Map<int, GetDataApiDataApiMstShipEntity>? shipInfo,
    Map<int, GetDataApiDataApiMstUseitemEntity>? itemInfo,
    Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo,
    Map<int, MapArea>? mapAreaInfo,
    Map<int, GetDataApiDataApiMstSlotitemEntity>? slotItemInfo,
    List<GetDataApiDataApiMstStypeEntity>? shipTypeList,
  }) = _DataInfo;
}