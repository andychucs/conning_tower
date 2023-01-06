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
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.light,
        cupertinoOverrideTheme: const CupertinoThemeData(
            barBackgroundColor: Color(0xF0F9F9F9),
            brightness: Brightness.light,
            textTheme:
                CupertinoTextThemeData(primaryColor: CupertinoColors.label)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: CupertinoColors.activeBlue,
          surface: const Color(0xF0F9F9F9),
          onSurface: CupertinoColors.label,
          onBackground: CupertinoColors.label,
          background: const Color(0xF0F9F9F9),
          brightness: Brightness.light,
        ),
        dividerColor: CupertinoColors.secondarySystemFill,
      ),
      darkTheme: ThemeData(
        cupertinoOverrideTheme: const CupertinoThemeData(
            barBackgroundColor: Color(0xFF1b1b1b),
            brightness: Brightness.dark,
            textTheme: CupertinoTextThemeData(primaryColor: Colors.white)),
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBackground,
        // colorSchemeSeed: CupertinoColors.extraLightBackgroundGray,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CupertinoColors.activeOrange,
          surface: CupertinoColors.black,
          onSurface: CupertinoColors.white,
          onBackground: CupertinoColors.white,
          background: CupertinoColors.black,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: CupertinoColors.black,
        dialogBackgroundColor: CupertinoColors.black,
        dividerColor: CupertinoColors.systemFill,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
