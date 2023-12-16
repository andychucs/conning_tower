import 'dart:convert';

import 'package:conning_tower/models/data/github_api/git_hub_refs_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

main() {
  test("get latest commit", () async {
    var url = 'https://api.github.com/repos/andychucs/kcwiki-kcdata/git/refs/heads/gh-pages';
    var res = await get(Uri.parse(url));
    var json = jsonDecode(res.body);
    var refs = GitHubRefsEntity.fromJson(json);
    expect(refs.url, url);
  });
}