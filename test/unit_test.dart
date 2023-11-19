// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test("home url assert", () {
    expect(kGameUrl,
        "http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854");
  });

  group("helper function test", () {
    group("home url test", () {
      test("home url when default", () {
        var enableAutoLoadHomeUrl = false;
        var customHomeUrl = '';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        if (kReleaseChannel == ReleaseChannel.github) {
          expect(url, kGameUrl);
        } else {
          expect(url, kLocalHomeUrl);
        }
      });

      test("home url when auto load enabled", () {
        var enableAutoLoadHomeUrl = true;
        var customHomeUrl = '';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        if (kReleaseChannel == ReleaseChannel.github) {
          expect(url, kGameUrl);
        } else {
          expect(url, kLocalHomeUrl);
        }
      });

      test("home url when custom url provided", () {
        var enableAutoLoadHomeUrl = true;
        var customHomeUrl = 'example.com';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        expect(url, "https://example.com");
      });

      test("home url when custom url is set with http prefix", () {
        var enableAutoLoadHomeUrl = true;
        var customHomeUrl = 'http://example.com';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        expect(url, 'http://example.com');
      });

      test("home url when custom url is set with https prefix", () {
        var enableAutoLoadHomeUrl = true;
        var customHomeUrl = 'https://example.com';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        expect(url, "https://example.com");
      });

      test("home url when custom url provided auto load disabled", () {
        var enableAutoLoadHomeUrl = false;
        var customHomeUrl = 'example.com';
        var url = getHomeUrl(customHomeUrl, enableAutoLoadHomeUrl);
        if (kReleaseChannel == ReleaseChannel.github) {
          expect(url, kGameUrl);
        } else {
          expect(url, kLocalHomeUrl);
        }
      });
    });

    group('isYaml()', () {
      test('Correct syntax YAML string will be valid yaml', () {
        bool isValidYaml = isYaml('''
        - name: John
          age: 30
          city: New York
      ''');
        expect(isValidYaml, isTrue);
      });

      test('Incorrect syntax YAML string will be invalid yaml', () {
        bool isValidYaml = isYaml('''
        name: John
        age: 30
        city: New York
        invalid
      ''');
        expect(isValidYaml, isFalse);
      });

      test('Empty string is a valid yaml input', () {
        bool isValidYaml = isYaml('');
        expect(isValidYaml, isTrue);
      });
    });
  });
}
