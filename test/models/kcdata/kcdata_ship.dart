import 'dart:convert';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

main() {
  test("ship parse", () async {
    var res = await get(Uri.parse(kcWikiShipsUrl));
    List json = jsonDecode(res.body);

    List<Ship> maps = json
        .map((e) {
      if (e["name"] != null) return Ship.fromJson(e);
    })
        .whereType<Ship>()
        .toList();

    expect(maps[0].name, '睦月');
  });

  test("kcwikizh ship parse, make sure this case pass when sync kcwiki-kcdata repo.", () async {
    var url = 'https://kcwikizh.github.io/kcdata/ship/ship.json';
    var res = await get(Uri.parse(url));
    List json = jsonDecode(res.body);

    List<Ship> maps = json
        .map((e) {
      if (e["name"] != null) return Ship.fromJson(e);
    })
        .whereType<Ship>()
        .toList();

    expect(maps[0].name, '睦月');
  });
}
