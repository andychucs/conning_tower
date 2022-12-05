import 'package:conning_tower/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

class ConnTowerApp extends StatelessWidget {
  const ConnTowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: CupertinoColors.lightBackgroundGray,
        dividerColor: CupertinoColors.secondarySystemFill
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: CupertinoColors.extraLightBackgroundGray,
        dividerColor: CupertinoColors.tertiarySystemFill
      ),
      themeMode: ThemeMode.system,
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: HomePage(),
        ),
      ),
    );
  }
}
