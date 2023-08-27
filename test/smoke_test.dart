// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart' as app_main;
import 'package:conning_tower/pages/tools_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {});

  group("smoke test", () {
    testWidgets("ToolsPage smoke", (tester) async {
      SharedPreferences.setMockInitialValues({});
      await app_main.init();
      final CookieManager cookieManager = CookieManager.instance();
      await tester.pumpWidget(ProviderScope(child: MaterialApp(
          locale: const Locale.fromSubtags(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: ToolsPage(cookieManager, notifyParent: () { }, reloadConfig: () {  },))));

      await tester.tap(find.text(S.current.ToolUASetting));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(CupertinoTextField), "test");
      await tester.testTextInput.receiveAction(TextInputAction.done);
      expect(app_main.customUA, "test");
      await tester.pumpAndSettle();

      await tester.tap(find.text(S.current.ToolUASetting));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(CupertinoTextField), "not submit");
      await tester.pageBack();
      expect(app_main.customUA, "not submit");
      await tester.pumpAndSettle();

      await tester.tap(find.text(S.current.ToolSearchBarURLSetting));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(CupertinoTextField), kGameUrl);
      await tester.testTextInput.receiveAction(TextInputAction.done);
      expect(app_main.customHomeUrl, kGameUrl);
      await tester.pumpAndSettle();

      await tester.tap(find.text(S.current.ToolSearchBarURLSetting));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(CupertinoTextField), "not submit");
      await tester.pageBack();
      expect(app_main.customHomeUrl, kGameUrl);
      await tester.pumpAndSettle();

      if (!kIsOpenSource) {
        expect(find.byIcon(CupertinoIcons.rectangle_expand_vertical), findsNothing);
        expect(find.text(S.current.ToolTitleGameSound), findsNothing);
      }


      final gesture = await tester.startGesture(Offset(0, 300)); //Position of the scrollview
      await gesture.moveBy(Offset(0, -300)); //How much to scroll by
      await tester.pump();
      expect(find.byIcon(CupertinoIcons.square_list), findsOneWidget);

    });
  });
}
