import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/data/ooyodo/akashi_schedule.dart';

part 'kancolle_item_data_provider.freezed.dart';
part 'kancolle_item_data_provider.g.dart';

const kAkashiScheduleUrl =
    "https://conntower.github.io/ooyodo/data/akashi_schedule.json";

@riverpod
class AkashiScheduleData extends _$AkashiScheduleData {
  Future<File> get _localJsonFile async {
    return File(pathUtil.localAkashiSchedulePath);
  }

  Future<void> _saveLocalData(AkashiSchedule akashiSchedule) async {
    final file = await _localJsonFile;
    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }
    await file.writeAsString(jsonEncode(akashiSchedule.toJson()));
  }

  Future<AkashiSchedule> requestAkashiSchedule() async {
    final res = await http.get(Uri.parse(kAkashiScheduleUrl));
    return AkashiSchedule.fromJson(jsonDecode(res.body));
  }

  Future<String> fetchDataVersion({timeout = 5000}) async {
    try {
      final res = await http.get(Uri.parse(kOoyodoDataVersion)).timeout(
          Duration(milliseconds: timeout),
          onTimeout: () => http.Response('timeout', 408));
      if (res.statusCode == 408) return '';
      return jsonDecode(res.body)['version'] as String;
    } catch (e) {
      return '';
    }
  }

  Future<AkashiScheduleDataState> _loadData() async {
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

    return AkashiScheduleDataState(
      improveItems: akashiSchedule.items ?? [],
      dataVersion: akashiSchedule.dataVersion ?? '',
    );
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
    final jsonString = await rootBundle
        .loadString('assets/resources/json/akashi_schedule.json');
    return AkashiSchedule.fromJson(json.decode(jsonString));
  }

  List<ImproveItem>? activeImproveItem({int? dayOfWeek}) {
    if (dayOfWeek != null) {
      return state.value?.improveItems
          .where((e) => e.isAbleOn(dayOfWeek))
          .toList();
    } else {
      return state.value?.improveItems.where((e) => e.isAbleNow()).toList();
    }
  }

  @override
  Future<AkashiScheduleDataState> build() async {
    return _loadData();
  }
}

@freezed
class AkashiScheduleDataState with _$AkashiScheduleDataState {
  const factory AkashiScheduleDataState({
    required List<ImproveItem> improveItems,
    required String dataVersion,
  }) = _AkashiScheduleDataState;

  factory AkashiScheduleDataState.fromJson(Map<String, dynamic> json) =>
      _$AkashiScheduleDataStateFromJson(json);
}
