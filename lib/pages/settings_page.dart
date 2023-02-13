import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/home.dart';
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
  // bool lockDeviceOrientationSwitchValue = customDeviceOrientationIndex == -1 ? false : true;
  bool enableAutLoadKCSwitchValue = false;

  @override
  void initState() {
    super.initState();
    _loadConfig();
  }

  void _loadConfig() {
    final prefs = localStorage;
    setState(() {
      enableAutoProcessSwitchValue =
          (prefs.getBool('enableAutoProcess') ?? true);
      lockDeviceOrientation = (prefs.getBool('lockDeviceOrientation') ?? false);
      enableAutLoadKCSwitchValue = (prefs.getBool('enableAutLoadKC') ?? false);
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
                SettingsTile.switchTile(
                  initialValue: enableAutLoadKCSwitchValue,
                  leading: const Icon(
                    CupertinoIcons.home,
                  ),
                  title: Text(S.of(context).SettingsHomeLoad),
                  onToggle: (value) async {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      enableAutLoadKCSwitchValue = value;
                    });
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('enableAutLoadKC', value);
                    widget.reloadConfig();
                  },
                ),
                SettingsTile.switchTile(
                  initialValue: lockDeviceOrientation ?? false,
                  onToggle: (value) {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      lockDeviceOrientation = value;
                    });
                    localStorage.setBool('lockDeviceOrientation', value);

                    if (value) {

                      if (customDeviceOrientations == DeviceOrientation.values || customDeviceOrientations == null) {
                        Orientation orientation =
                            MediaQuery.of(context).orientation;
                        if (orientation == Orientation.landscape) {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.landscapeLeft,
                            DeviceOrientation.landscapeRight
                          ]);
                        } else {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.portraitUp,
                            DeviceOrientation.portraitDown
                          ]);
                        }
                      } else {
                        SystemChrome.setPreferredOrientations(
                            customDeviceOrientations ??
                                DeviceOrientation.values);
                      }
                    } else {
                      localStorage.setInt('customDeviceOrientation', -1);
                      localStorage.setBool('lockDeviceOrientation', false);
                      setState(() {
                        customDeviceOrientationIndex = -1;
                      });
                      SystemChrome.setPreferredOrientations(
                          DeviceOrientation.values);
                    }
                    _loadConfig();
                    widget.reloadConfig();
                  },
                  title: Text(S.of(context).SettingsLockDeviceOrientation),
                  leading: Icon(lockDeviceOrientation ?? false
                      ? CupertinoIcons.lock_rotation
                      : CupertinoIcons.lock_rotation_open),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) async {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      enableAutoProcessSwitchValue = value;
                    });
                    localStorage.setBool('enableAutoProcess', value);
                    widget.reloadConfig();
                  },
                  initialValue: enableAutoProcessSwitchValue,
                  leading: const Icon(CupertinoIcons.fullscreen),
                  title: Text(S.of(context).SettingsEnableAutoProcess),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) async {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      enableHideFAB = value;
                    });
                    localStorage.setBool('enableHideFAB', value);
                    widget.reloadConfig();
                  },
                  initialValue: enableHideFAB,
                  leading: Icon(enableHideFAB ? CupertinoIcons.pin_slash : CupertinoIcons.pin),
                  title: Text(S.of(context).SettingsHideFAB),
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    CupertinoIcons.refresh,
                    color: CupertinoColors.destructiveRed,
                  ),
                  title: Text(S.of(context).SettingsReset),
                  onPressed: (context) {
                    HapticFeedback.heavyImpact();
                    localStorage.clear();
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
