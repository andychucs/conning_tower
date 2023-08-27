import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/models/data/kcwiki/api/kcwiki_api_ship_entity.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kcwiki_data_provider.g.dart';

@riverpod
class KcwikiDataState extends _$KcwikiDataState {
  Future<File> get _localJsonFile async {
    final path = await localPath;
    return File('$path/providers/kcwiki_data.json');
  }

  @override
  FutureOr<KcwikiData> build() async {
    return _loadData();
  }

  Future<void> deleteLocalFile() async {
    final file = await _localJsonFile;

    if (file.existsSync()) {
      await file.delete();
    }
  }

  Future<void> fetchData() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() => _fetchData());
  }

  Future<KcwikiData> _fetchData() async {
    final json = await http.get(Uri.parse(kKcwikiShipsUrl));
    final shipsJson = jsonDecode(json.body) as List<dynamic>;
    List<Ship> ships = shipsJson.map((json) {
      return Ship.fromJson(json);
    }).toList();
    log(ships.where((element) => element.sortNo == null).toString() + "no sort");
    // ships.removeWhere((element) => element.sortNo == null);
    // ships.removeWhere((element) => element.sortNo == 0);
    ships.sort((a, b) => a.sortNo!.compareTo(b.sortNo!));
    KcwikiData kcwikiData = KcwikiData(ships: ships);
    _saveLocalData(kcwikiData);
    return kcwikiData;
  }

  Future<KcwikiData> _loadData() async {
    try {
      final file = await _localJsonFile;

      String contents = await file.readAsString();

      var json = jsonDecode(contents);

      return KcwikiData.fromJson(json);
    } catch (e) {
      return _fetchData();
    }
  }

  Future<void> _saveLocalData(KcwikiData kcwikiData) async {
    final file = await _localJsonFile;

    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    await file.writeAsString(jsonEncode(kcwikiData.toJson()));
  }
}
