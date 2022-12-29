import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';

class SettingsPage extends StatelessWidget{
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(),
      home: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text(S.of(context).SettingsButton),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CupertinoButton.filled(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance(); //temporarily
                    prefs.clear(); //temporarily
                  },
                  child: Text(S.of(context).SettingsReset),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

