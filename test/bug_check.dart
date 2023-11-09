import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

main() {
  test("BugCheck", () {
    String data = "{}";

    var json = jsonDecode(data);
  });
}
