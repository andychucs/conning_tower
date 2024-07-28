import 'dart:convert';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

main() {
  test("map parse", () async {
    var res = await get(Uri.parse(kcWikiMapsUrl));
    List json = jsonDecode(res.body);

    List<MapData> maps = json
        .map((e) {
          if (e["name"] != null) return MapData.fromJson(e);
        })
        .whereType<MapData>()
        .toList();

    print("Maps: ${maps.length}");

    expect(maps[0].name, '鎮守府正面海域');
    expect(maps[0].id, 11);
  });

  test("kcwikizh map parse, make sure this case pass when sync kcwiki-kcdata repo.", () async {
    var url = 'https://kcwikizh.github.io/kcdata/map/all.json';
    var res = await get(Uri.parse(url));
    List json = jsonDecode(res.body);

    List<MapData> maps = json
        .map((e) {
      if (e["name"] != null) return MapData.fromJson(e);
    })
        .whereType<MapData>()
        .toList();

    print("Maps: ${maps.length}");

    expect(maps[0].name, '鎮守府正面海域');
    expect(maps[0].id, 11);
  });
}
