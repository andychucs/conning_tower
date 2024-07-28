import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../helper.dart';
import '../../models/data/ooyodo/akashi_schedule.dart';
import '../../models/feature/dashboard/kancolle/equipment.dart';

part 'kancolle_item_data_provider.freezed.dart';
part 'kancolle_item_data_provider.g.dart';

const kAkashiScheduleUrl = "https://conntower.github.io/ooyodo/data/akashi_schedule.json";

@riverpod
class KancolleItemData extends _$KancolleItemData {
  Future<File> get _localJsonFile async {
    final path = await localPath;
    return File('$path/providers/akashi_schedule.json');
  }

  Future<void> _saveLocalData(AkashiSchedule akashiSchedule) async {
    final file = await _localJsonFile;
    await file.writeAsString(jsonEncode(akashiSchedule.toJson()));
  }

  Future<AkashiSchedule> requestAkashiSchedule() async {
    final res = await http.get(Uri.parse(kAkashiScheduleUrl));
    return AkashiSchedule.fromJson(jsonDecode(res.body));
  }

  Future<String> fetchDataVersion() async {
    try {
      final res = await http.get(Uri.parse(kOoyodoDataVersion));
      return jsonDecode(res.body)['version'] as String;
    } catch (e) {
      return '';
    }
  }

  Future<KancolleItemDataState> _loadData() async {
    late AkashiSchedule akashiSchedule;

    try {
      final file = await _localJsonFile;
      final contents = await file.readAsString();
      akashiSchedule = AkashiSchedule.fromJson(jsonDecode(contents));
      final dataVersion = await fetchDataVersion();
      if (dataVersion != '') {
        if (dataVersion != akashiSchedule.dataVersion) {
          akashiSchedule = await requestAkashiSchedule();
          _saveLocalData(akashiSchedule);
        }
      }
    } catch (e) {
      akashiSchedule = await _fetchAkashiScheduleData();
    }

    return KancolleItemDataState(equipments: [], improveItems: akashiSchedule.items ?? [], sets: {}, dataVersion: akashiSchedule.dataVersion ?? '');
  }

  Future<AkashiSchedule> _fetchAkashiScheduleData() async {
    late AkashiSchedule akashiSchedule;
    try {
      akashiSchedule = await requestAkashiSchedule();
      _saveLocalData(akashiSchedule);
    } catch (e) {
      akashiSchedule = await getAssetsAkashiSchedule();
    }

    return akashiSchedule;
  }

  Future<AkashiSchedule> getAssetsAkashiSchedule() async {
    // load assets file in assets/resources/json/akashi_schedule.json
    final jsonString =
        await rootBundle.loadString('assets/resources/json/akashi_schedule.json');
    return AkashiSchedule.fromJson(json.decode(jsonString));
  }

  List<ImproveItem>? activeImproveItem({int? dayOfWeek}) {
    if (dayOfWeek != null) {
      return state.value?.improveItems.where((e) => e.isAbleOn(dayOfWeek)).toList();
    } else {
      return state.value?.improveItems.where((e) => e.isAbleNow()).toList();
    }
  }

  @override
  Future<KancolleItemDataState> build() async {
    return _loadData();
  }

  Map<int, KancolleItemSet> canImproveItemSet({int? dayOfWeek}) {
    final map = <int, KancolleItemSet>{};
    for (final item in state.value!.sets.values) {
      if (item.improve == null) {
        continue;
      }
      if (dayOfWeek == null) {
        if (item.improve!.isAbleNow()) {
          map[item.id] = item;
        }
        continue;
      }
      if (item.improve!.isAbleOn(dayOfWeek)) {
        map[item.id] = item;
      }
    }
    return map;
  }

  KancolleItemSet? itemSet(int id) {
    return state.value?.sets[id];
  }


  void setEquipments(List<Equipment> equipments) {
    if (equipments.isEmpty || state.hasValue == false) {
      return;
    }
    state = const AsyncValue.loading();
    state = AsyncValue.data(state.value!.copyWith(equipments: equipments));
    updateData();
  }

  Future<void> updateData() async {
    // Read equipments and improveItems, then init sets by them
    if (!state.hasValue) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      if (state.value!.equipments.isEmpty || state.value!.improveItems.isEmpty) {
        return state.value!;
      }
      Map<int, KancolleItemSet> sets = {};

      // all itemId in equipments
      final itemIds = state.value!.equipments.map((e) => e.itemId!).toSet();

      for (var itemId in itemIds) {
        final improveItems = state.value!.improveItems.where((e) => e.id == itemId);
        if (improveItems.isEmpty) {
          continue;
        }
        final equipments = state.value!.equipments.where((e) => e.itemId == itemId);
        sets[itemId] = KancolleItemSet(
            id: itemId,
            name: equipments.first.name ?? "Item $itemId",
            equipments: equipments.toList(),
            improve: improveItems.first);
      }

      return state.value!.copyWith(sets: sets);
    });

  }
}

@freezed
class KancolleItemDataState with _$KancolleItemDataState {
  const factory KancolleItemDataState({
    required List<Equipment> equipments,
    required List<ImproveItem> improveItems,
    required Map<int, KancolleItemSet> sets,
    required String dataVersion,
  }) = _KancolleItemDataState;

  factory KancolleItemDataState.fromJson(Map<String, dynamic> json) =>
      _$KancolleItemDataStateFromJson(json);
}

@unfreezed
class KancolleItemSet with _$KancolleItemSet {
  factory KancolleItemSet({
    required int id,
    required String name,
    required List<Equipment> equipments,
    ImproveItem? improve,
  }) = _KancolleItemSet;

  factory KancolleItemSet.fromJson(Map<String, dynamic> json) =>
      _$KancolleItemSetFromJson(json);

  const KancolleItemSet._();

  Map<int, int> get levelTotalView {
    final map = <int, int>{};
    for (final equipment in equipments) {
      map[equipment.level!] = (map[equipment.level!] ?? 0) + 1;
    }
    return map;
  }

  Map<int, int> get proficiencyTotalView {
    final map = <int, int>{};
    for (final equipment in equipments) {
      map[equipment.proficiency!] = (map[equipment.proficiency!] ?? 0) + 1;
    }
    return map;
  }
}
