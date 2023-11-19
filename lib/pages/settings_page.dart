import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/theme_provider.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/providers/generatable/device_provider.dart';
import 'package:conning_tower/providers/generatable/task_provider.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends ConsumerState<SettingsPage> {
  bool enableAutoLoadHomeUrlSwitchValue = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final deviceManager = ref.watch(deviceManagerProvider.notifier);
    deviceManager.setPreferredDeviceOrientation();
    final settings = ref.watch(settingsProvider);
    enableAutoLoadHomeUrlSwitchValue = settings.enableAutoLoadHomeUrl;

    return FunctionalPage(
      title: S.current.SettingsButton,
      children: [
        CupertinoListSection.insetGrouped(
          header: CupertinoListSectionDescription(S.of(context).AppName),
          children: [
            CupertinoListTile(
              title: Text(S.of(context).SettingsHomeLoadShort),
              subtitle: Text(S.of(context).SettingsHomeLoad),
              leading: const DummyIcon(
                  color: CupertinoColors.activeBlue, icon: CupertinoIcons.home),
              trailing: CupertinoSwitch(
                value: enableAutoLoadHomeUrlSwitchValue,
                onChanged: (value) async {
                  HapticFeedback.heavyImpact();
                  setState(() {
                    enableAutoLoadHomeUrlSwitchValue = value;
                  });
                  ref.watch(settingsProvider.notifier).setBool('enableAutoLoadHomeUrl', value);
                },
              ),
            ),
            if (deviceType != DeviceType.iPad)
              CupertinoListTile(
                title: Text(S.of(context).SettingsLockDeviceOrientation),
                leading: DummyIcon(
                    color: CupertinoColors.activeGreen,
                    icon: deviceManager.isCustomDeviceOrientation()
                        ? CupertinoIcons.lock_rotation
                        : CupertinoIcons.lock_rotation_open),
                trailing: CupertinoSwitch(
                  value: deviceManager.isCustomDeviceOrientation(),
                  onChanged: (value) {
                    if (value) {
                      Orientation orientation =
                          MediaQuery.of(context).orientation;
                      if (orientation == Orientation.landscape) {
                        setState(() {
                          deviceManager.customDeviceOrientation(
                              CustomDeviceOrientation.landscape);
                        });
                      } else {
                        setState(() {
                          deviceManager.customDeviceOrientation(
                              CustomDeviceOrientation.portrait);
                        });
                      }
                    } else {
                      setState(() {
                        deviceManager.customDeviceOrientation(
                            CustomDeviceOrientation.all);
                      });
                    }
                  },
                ),
              ),
            if (deviceType != DeviceType.iPad)
              CupertinoListTile(
                title: Text(S.of(context).SettingsScreenOrientation),
                leading: DummyIcon(
                    color: CupertinoColors.activeOrange,
                    icon: CupertinoIcons.device_phone_landscape),
                trailing: const CupertinoListTileChevron(),
                onTap: () async {
                  List<String> items = [
                    S.of(context).SettingsLandscapeRight, // 0
                    S.of(context).SettingsLandscapeLeft, // 1
                    S.of(context).SettingsPortrait //2
                  ];
                  int select = deviceManager.getOrientationIndex();
                  await navigatorToCupertino(
                      context,
                      CupertinoSelectPage(
                        title: S.of(context).SettingsScreenOrientation,
                        previousPageTitle: S.of(context).SettingsButton,
                        items: items,
                        selected: select,
                        onItemSelected: (index) {
                          select = index;
                        },
                      ));
                  debugPrint(select.toString());
                  setState(() {
                    deviceManager.customDeviceOrientationByIndex(select);
                  });
                },
              ),
            CupertinoListTile(
              title: Text(S.of(context).AppLayoutSetting),
              leading: const DummyIcon(
                  color: CupertinoColors.activeGreen,
                  icon: CupertinoIcons.rectangle_3_offgrid),
              trailing: const CupertinoListTileChevron(),
              onTap: () async {
                List<AppLayout> layouts = AppLayout.values;
                int select = layouts.indexOf(settings.appLayout);
                Map<AppLayout, String> layoutName = {
                  AppLayout.pure: S.current.AppLayoutClean,
                  AppLayout.bothFABJoystick: S.current.AppLayoutJoystickAndFAB,
                  AppLayout.onlyFAB: S.current.AppLayoutOnlyFAB,
                  AppLayout.onlyJoystick: S.current.AppLayoutOnlyJoystick
                };
                List<String> items = [for (var i in layouts) layoutName[i]!];
                await navigatorToCupertino(
                    context,
                    CupertinoSelectPage(
                        title: S.of(context).AppLayoutSetting,
                        previousPageTitle: S.of(context).SettingsButton,
                        items: items,
                        selected: select,
                        onItemSelected: (index) {
                          select = index;
                          if (kReleaseChannel == ReleaseChannel.github) {
                            if (layouts[select].name.toLowerCase().contains("joystick")) {
                              Fluttertoast.showToast(msg: "Not available");
                              return;
                            }
                          }
                          ref.watch(settingsProvider.notifier).setInt('appLayout', select);
                        }));
                debugPrint(settings.appLayout.name);
              },
            ),
            CupertinoListTile(
              title: Text(S.of(context).Theme),
              leading: const DummyIcon(
                  color: CupertinoColors.systemPink,
                  icon: CupertinoIcons.circle_lefthalf_fill),
              trailing: const CupertinoListTileChevron(),
              onTap: () async {
                List<ThemeMode> modes = ThemeMode.values;
                ThemeMode themeMode = ref.watch(themeProvider);
                int select = modes.indexOf(themeMode);
                Map<ThemeMode, String> themeName = {
                  ThemeMode.system: S.of(context).SystemTheme,
                  ThemeMode.dark: S.of(context).DarkTheme,
                  ThemeMode.light: S.of(context).LightTheme,
                };
                List<String> items = [for (var i in modes) themeName[i]!];
                await navigatorToCupertino(
                    context,
                    CupertinoSelectPage(
                        title: S.of(context).AppLayoutSetting,
                        previousPageTitle: S.of(context).SettingsButton,
                        items: items,
                        selected: select,
                        onItemSelected: (index) {
                          select = index;
                          ref.read(themeProvider.notifier).update((state) => modes[select]);
                        }));
              },
            ),
            CupertinoListTile(
              title: const Text('Dashboard'),
              subtitle: Text(S.of(context).DashboardSetting),
              leading: const DummyIcon(
                  color: CupertinoColors.activeBlue,
                  icon: CupertinoIcons.slider_horizontal_below_rectangle),
              trailing: CupertinoSwitch(
                value: settings.showDashboardInHome,
                onChanged: (value) async {
                  ref.watch(settingsProvider.notifier).setBool('showDashboardInHome', value);
                },
              ),
            ),
            CupertinoListTile(
              title: Text(
                S.of(context).SettingsReset,
              ),
              leading: const DummyIcon(
                  color: CupertinoColors.destructiveRed,
                  icon: CupertinoIcons.refresh),
              onTap: () async {
                HapticFeedback.heavyImpact();
                localStorage.clear();
                ref.watch(taskUtilProvider.notifier).deleteLocalTasks();
                ref.watch(kcwikiDataStateProvider.notifier).deleteLocalFile();
                ref.watch(settingsProvider.notifier).rebuild();
              },
            ),
          ],
        ),
      ],
    );
  }
}
