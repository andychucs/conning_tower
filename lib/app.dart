import 'package:conning_tower/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

class ConnTowerApp extends StatelessWidget {
  const ConnTowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      onGenerateTitle: (context) => S.of(context).AppName,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: const CupertinoThemeData(),
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: CupertinoColors.black,
        body: SafeArea(
          bottom: false,
          child: HomePage(),
        ),
      ),
    );
  }
}
