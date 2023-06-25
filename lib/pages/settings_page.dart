import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/device_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:settings_ui/settings_ui.dart';

import '../widgets/modal_sheets.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key, required this.reloadConfig});

  final Function() reloadConfig;

  @override
  ConsumerState<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends ConsumerState<SettingsPage> {
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
    final deviceManager = ref.watch(deviceManagerProvider.notifier);
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
                  initialValue: deviceManager.isCustomDeviceOrientation(),
                  description:
                      Text(S.of(context).SettingsLockDeviceOrientationTip),
                  onToggle: (value) {
                    HapticFeedback.heavyImpact();
                    if (value) {
                      Orientation orientation =
                          MediaQuery.of(context).orientation;
                      if (orientation == Orientation.landscape) {
                        setState(() {
                          deviceManager.customDeviceOrientation(CustomDeviceOrientation.landscape);
                        });
                      } else {
                        setState(() {
                          deviceManager.customDeviceOrientation(CustomDeviceOrientation.portrait);
                        });
                      }
                    } else {
                      setState(() {
                        deviceManager.customDeviceOrientation(CustomDeviceOrientation.all);
                      });
                    }
                    _loadConfig();
                    widget.reloadConfig();
                  },
                  title: Text(S.of(context).SettingsLockDeviceOrientation),
                  leading: Icon(deviceManager.isCustomDeviceOrientation()
                      ? CupertinoIcons.lock_rotation
                      : CupertinoIcons.lock_rotation_open),
                ),
                SettingsTile(
                  title: Text("Change Device Orientation"),
                  leading: Icon(CupertinoIcons.device_phone_landscape),
                  onPressed: (context) => showCupertinoModalBottomSheet(
                    expand: false,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => ModalFit(
                      children: <Widget>[
                        ListTile(
                          title: Text('Landscape Right'),
                          leading: Icon(CupertinoIcons.rotate_right),
                          onTap: () {
                            Navigator.of(context).pop();
                            deviceManager.customDeviceOrientation(CustomDeviceOrientation.landscapeRight);
                          },
                        ),
                        ListTile(
                          title: Text('Landscape Left'),
                          leading: Icon(CupertinoIcons.rotate_left),
                          onTap: () {
                            Navigator.of(context).pop();
                            deviceManager.customDeviceOrientation(CustomDeviceOrientation.landscapeLeft);
                          },
                        ),
                        ListTile(
                          title: Text('Portrait'),
                          leading: Icon(CupertinoIcons.device_phone_portrait),
                          onTap: () {
                            Navigator.of(context).pop();
                            deviceManager.customDeviceOrientation(CustomDeviceOrientation.portrait);
                          },
                        ),
                      ],
                    ),
                  ),
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
