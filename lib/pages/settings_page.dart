import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';
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
  bool lockDeviceOrientation = false;

  @override
  void initState() {
    super.initState();
    _loadConfig();
  }

  Future<void> _loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      enableAutoProcessSwitchValue =
          (prefs.getBool('enableAutoProcess') ?? true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return [
          CupertinoSliverNavigationBar(
            largeTitle: Text(S.current.SettingsButton),
          ),
        ];
      },
      body: SafeArea(
        top: false,
        bottom: false,
        child: SettingsList(
          // shrinkWrap: true,
          sections: [
            SettingsSection(
              title: Text(S.of(context).AppName),
              tiles: <SettingsTile>[
                // SettingsTile.navigation(
                //   leading: const Icon(
                //     CupertinoIcons.home,
                //   ),
                //   title: Text(S.of(context).AppHome),
                //   onPressed: (context) {
                //   },
                // ),
                SettingsTile.switchTile(initialValue: lockDeviceOrientation, onToggle: (value) {
                  HapticFeedback.heavyImpact();
                  setState(() {
                    lockDeviceOrientation = value;
                  });
                  if (value) {
                    Orientation orientation = MediaQuery.of(context).orientation;
                    if (orientation == Orientation.landscape){
                      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
                    } else {
                      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                    }
                  } else {
                    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
                  }
                },
                  title: Text(S.of(context).SettingsLockDeviceOrientation),
                  leading: Icon(lockDeviceOrientation ? CupertinoIcons.lock_rotation : CupertinoIcons.lock_rotation_open),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) async {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      enableAutoProcessSwitchValue = value;
                    });
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('enableAutoProcess', value);
                    widget.reloadConfig();
                  },
                  initialValue: enableAutoProcessSwitchValue,
                  leading: const Icon(CupertinoIcons.fullscreen),
                  title: Text(S.of(context).SettingsEnableAutoProcess),
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    CupertinoIcons.refresh,
                    color: CupertinoColors.destructiveRed,
                  ),
                  title: Text(S.of(context).SettingsReset),
                  onPressed: (context) async {
                    HapticFeedback.heavyImpact();
                    final prefs = await SharedPreferences.getInstance();
                    prefs.clear();
                    _loadConfig();
                    widget.reloadConfig();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
