import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/github_api/git_hub_refs_entity.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kcwiki_data_provider.g.dart';

@riverpod
class KcWikiDataState extends _$KcWikiDataState {
  Future<File> get _localJsonFile async {
    final path = await localPath;
    return File('$path/providers/kcwiki_data.json');
  }

  @override
  Future<KcWikiData> build() async {
    return _loadData();
  }

  KcWikiData get data => state.value ?? const KcWikiData(ships: [], maps: []);

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

  Future<KcWikiData> _fetchData() async {
    log("fetching data");
    List<Ship> ships = await _fetchShipData();
    List<MapData> maps = await _fetchMapData();
    String? refSha = await fetchDataRefSha();
    setDataRefSha(refSha);
    KcWikiData kcWikiData = KcWikiData(ships: ships, maps: maps);
    _saveLocalData(kcWikiData);
    return kcWikiData;
  }

  void setDataRefSha(String? refSha) {
    localStorage.setString("kcWikiDataRefSha", refSha ?? getDataRefSha());
  }

  String getDataRefSha() {
    return localStorage.getString("kcWikiDataRefSha") ?? "";
  }

  Future<String?> fetchDataRefSha({timeout = 5000}) async {
    final res = await http.get(Uri.parse(kcWikiDataGitHub)).timeout(
        Duration(milliseconds: timeout),
        onTimeout: () => http.Response('timeout', 408));
    if (res.statusCode == 408) return null;
    try {
      final json = jsonDecode(res.body);
      final refs = GitHubRefsEntity.fromJson(json);
      return refs.object?.sha;
    } catch (e) {
      return null;
    }
  }

  Future<List<MapData>> _fetchMapData() async {
    final res = await http.get(Uri.parse(kcWikiMapsUrl));
    final json = jsonDecode(res.body);
    List<MapData> maps = json
        .map((e) {
          if (e["name"] != null) return MapData.fromJson(e);
        })
        .whereType<MapData>()
        .toList();
    return maps;
  }

  Future<List<Ship>> _fetchShipData() async {
    final json = await http.get(Uri.parse(kcWikiShipsUrl));
    final shipsJson = jsonDecode(json.body) as List<dynamic>;
    List<Ship> ships = shipsJson.map((json) {
      return Ship.fromJson(json);
    }).toList();
    // log(ships.where((element) => element.sortNo == null).toString() + "no sort");
    // ships.removeWhere((element) => element.sortNo == null);
    // ships.removeWhere((element) => element.sortNo == 0);
    ships.sort((a, b) => a.sortNo!.compareTo(b.sortNo!));
    return ships;
  }

  Future<KcWikiData> _loadData() async {
    try {
      final file = await _localJsonFile;

      String contents = await file.readAsString();

      var json = jsonDecode(contents);

      final kcWikiData = KcWikiData.fromJson(json);

      final refSha = await fetchDataRefSha();
      if (refSha == null) {
        return kcWikiData;
      }
      if (refSha != getDataRefSha()) {
        return _fetchData();
      }

      return kcWikiData;
    } catch (e) {
      return _fetchData();
    }
  }

  Future<void> _saveLocalData(KcWikiData kcWikiData) async {
    final file = await _localJsonFile;

    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    await file.writeAsString(jsonEncode(kcWikiData.toJson()));
  }
}
