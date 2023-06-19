import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.reloadConfig});

  final Function() reloadConfig;

  @override
  State<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool enableAutoProcessSwitchValue = true;
  bool enableAutoLoadHomeUrlSwitchValue = false;

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
      enableAutoLoadHomeUrlSwitchValue =
          (prefs.getBool('enableAutoLoadHomeUrl') ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return [
          CupertinoSliverNavigationBar(
            transitionBetweenRoutes: false,
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
                  initialValue: enableAutoLoadHomeUrlSwitchValue,
                  leading: const Icon(
                    CupertinoIcons.home,
                  ),
                  title: Text(S.of(context).SettingsHomeLoad),
                  onToggle: (value) async {
                    HapticFeedback.heavyImpact();
                    setState(() {
                      enableAutoLoadHomeUrlSwitchValue = value;
                    });
                    localStorage.setBool('enableAutoLoadHomeUrl', value);
                    widget.reloadConfig();
                  },
                ),
                SettingsTile.switchTile(
                  initialValue: lockDeviceOrientation ?? false,
                  description:
                      Text(S.of(context).SettingsLockDeviceOrientationTip),
                  onToggle: (value) {
                    HapticFeedback.heavyImpact();
                    lockDeviceOrientation = value;
                    localStorage.setBool('lockDeviceOrientation', value);
                    if (value) {
                      Orientation orientation =
                          MediaQuery.of(context).orientation;
                      if (orientation == Orientation.landscape) {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeLeft,
                          DeviceOrientation.landscapeRight
                        ]);
                        setState(() {
                          customDeviceOrientationIndex = 3;
                        });
                        localStorage.setInt('customDeviceOrientation', 3);
                      } else {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                          DeviceOrientation.portraitDown
                        ]);
                        setState(() {
                          customDeviceOrientationIndex = 2;
                        });
                        localStorage.setInt('customDeviceOrientation', 2);
                      }
                    } else {
                      localStorage.setInt('customDeviceOrientation', -1);
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
                      enableAutoProcess = value;
                      localStorage.setBool('enableAutoProcess', value);
                      debugPrint("enableAutoProcess:$enableAutoProcess");
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
                  leading: Icon(enableHideFAB
                      ? CupertinoIcons.pin_slash
                      : CupertinoIcons.pin),
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
