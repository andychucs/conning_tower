// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:conning_tower/app.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test("home url assert", () {
    expect("www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/", kGameUrl);
  });
}
