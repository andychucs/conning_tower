import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app.dart';
import 'generated/l10n.dart';

void main() {
  return runApp(CupertinoApp(
      onGenerateTitle: (context) => S.of(context).AppName,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: const CupertinoThemeData(),
      home: const ConnTowerApp()));
}
