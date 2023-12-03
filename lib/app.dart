import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/pages/home.dart';
import 'package:conning_tower/providers/generatable/device_provider.dart';
import 'package:conning_tower/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ConnTowerApp extends ConsumerWidget {
  const ConnTowerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    Size size = MediaQuery.of(context).size;
    Future(() {
      ref.watch(deviceManagerProvider.notifier).setSize(size);
    });

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
        platform: TargetPlatform.iOS,
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemBlue,
        dividerColor: CupertinoColors.secondarySystemFill,
        scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
        navigationRailTheme: const NavigationRailThemeData(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          indicatorColor: CupertinoColors.lightBackgroundGray,
          selectedIconTheme: IconThemeData(color: CupertinoColors.systemBlue),
          selectedLabelTextStyle: TextStyle(color: CupertinoColors.systemBlue),
          unselectedIconTheme: IconThemeData(color: CupertinoColors.inactiveGray),
          unselectedLabelTextStyle: TextStyle(color: CupertinoColors.inactiveGray),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: CupertinoColors.inactiveGray,
          selectedItemColor: CupertinoColors.systemBlue,
          backgroundColor: Color(0xF0F9F9F9),
        ),
        dividerTheme: DividerThemeData(color: CupertinoColors.secondarySystemFill),
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        platform: TargetPlatform.iOS,
        cupertinoOverrideTheme: const CupertinoThemeData(
          barBackgroundColor: Color(0xD8000000),
          brightness: Brightness.dark,
          textTheme: CupertinoTextThemeData(),
        ),
        navigationRailTheme: const NavigationRailThemeData(
          backgroundColor: CupertinoColors.black,
          indicatorColor: CupertinoColors.darkBackgroundGray,
          selectedIconTheme: IconThemeData(color: CupertinoColors.systemBlue),
          selectedLabelTextStyle: TextStyle(color: CupertinoColors.systemBlue),
          unselectedIconTheme: IconThemeData(color: CupertinoColors.inactiveGray),
          unselectedLabelTextStyle: TextStyle(color: CupertinoColors.inactiveGray),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: CupertinoColors.inactiveGray,
          selectedItemColor: CupertinoColors.systemBlue,
          backgroundColor: Color(0xF0161616),
          // Values extracted from navigation bar. For toolbar or tabbar the dark color is 0xF0161616.
        ),
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
        scaffoldBackgroundColor: CupertinoColors.black,
        dialogBackgroundColor: CupertinoColors.black,
        dividerColor: CupertinoColors.systemFill,
        dividerTheme: DividerThemeData(color: CupertinoColors.systemFill),
      ),
      themeMode: themeMode,
      onGenerateRoute: (_) => MaterialWithModalsPageRoute(
        builder: (_) => const HomePage(),),
    );
  }
}
