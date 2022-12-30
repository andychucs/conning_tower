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
      // debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: CupertinoColors.extraLightBackgroundGray,
        dividerColor: CupertinoColors.secondarySystemFill,
        appBarTheme: const AppBarTheme(backgroundColor: Color(0x00000000),)
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBackground,
        // colorSchemeSeed: CupertinoColors.extraLightBackgroundGray,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CupertinoColors.extraLightBackgroundGray,
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
