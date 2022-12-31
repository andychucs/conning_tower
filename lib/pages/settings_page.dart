import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(primaryColor: CupertinoColors.systemGrey),
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
                    HapticFeedback.heavyImpact();
                    final prefs =
                        await SharedPreferences.getInstance();
                    prefs.clear();
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
