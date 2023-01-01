import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.reloadConfig});
  final Function() reloadConfig;


  @override
  State<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool enableAutoProcessSwitchValue = true;

  @override
  void initState() {
    super.initState();
    _loadConfig();
  }

  Future<void> _loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      enableAutoProcessSwitchValue = (prefs.getBool('enableAutoProcess') ?? true);
    });
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(S.of(context).SettingsEnableAutoProcess),
                    CupertinoSwitch(
                        value: enableAutoProcessSwitchValue,
                        onChanged: (value) async {
                          HapticFeedback.heavyImpact();
                          setState(() {
                            enableAutoProcessSwitchValue = value;
                          });
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('enableAutoProcess', value);
                          widget.reloadConfig();
                    })
                  ],
                ),
                CupertinoButton.filled(
                  onPressed: () async {
                    HapticFeedback.heavyImpact();
                    final prefs =
                        await SharedPreferences.getInstance();
                    prefs.clear();
                    _loadConfig();
                    widget.reloadConfig();
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
