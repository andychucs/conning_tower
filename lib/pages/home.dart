import 'dart:async';
import 'dart:io';

import 'package:circular_menu/circular_menu.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/functional_layer.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/providers/device_provider.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/indexed_stack.dart';
import 'package:conning_tower/widgets/modal_sheets.dart';
import 'package:conning_tower/widgets/sidebar.dart';
import 'package:conning_tower/widgets/texts.dart';
import 'package:conning_tower/widgets/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  late double deviceWidth;
  late Alignment fabAlignment;
  bool showNewVersion = false;
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  @override
  void initState() {
    super.initState();

    _loadConfig();

    _initPackageInfo();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 1));
      await showNewVersionInfo();
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
    var preVersion = localStorage.getString("preVersion");
    var version = info.version;
    if (preVersion != null) {
      if (version != preVersion) {
        showNewVersion = true;
      }
    } else {
      showNewVersion = true;
    }
  }

  Future<void> showNewVersionInfo() async {
    if (showNewVersion) {
      await showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text(S.current.VersionUpdateTitle),
              content: Column(
                children: [
                  Text(S.current.VersionUpdateContent),
                  textLink(S.of(context).DocsNewUrl,
                      S.of(context).VersionUpdateLinkText),
                ],
              ),
              actions: [
                CupertinoDialogAction(
                  child: Text(S.of(context).TextYes),
                  onPressed: () {
                    var version = _packageInfo.version;
                    localStorage.setString("preVersion", version);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    }
  }

  void _loadConfig() {
    final prefs = localStorage;
    setState(() {
      enableAutoProcess = (prefs.getBool('enableAutoProcess') ?? true);
      bottomPadding = (prefs.getBool('bottomPadding') ?? false);
      enableAutoLoadHomeUrl = (prefs.getBool('enableAutoLoadHomeUrl') ?? true);
      customHomeUrl = (prefs.getString('customHomeUrl') ?? kGameUrl);
      enableHideFAB = (prefs.getBool('enableHideFAB') ?? false);
      customUA = (prefs.getString('customUA') ?? '');
      appLayout = AppLayout.values[localStorage.getInt('appLayout') ??
          AppLayout.values.indexOf(AppLayout.bothFABJoystick)];
    });
  }

  @override
  Widget build(BuildContext context) {
    // final inAppWebViewControllerState = ref.watch(webViewControllerProvider);
    final webController = ref.watch(webControllerProvider);
    final deviceManager = ref.watch(deviceManagerProvider.notifier);
    deviceManager.watchDeviceOrientation();
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceWidth = MediaQuery.of(context).size.width;
    }
    // SystemChrome.setPreferredOrientations(
    //     getDeviceOrientation(customDeviceOrientationIndex));
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      fabAlignment = const Alignment(1.0, 0.3);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    } else {
      fabAlignment = const Alignment(1.0, 0.7);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }

    Map<FunctionName, String> functionName = {
      FunctionName.portrait: S.current.SettingsPortrait,
      FunctionName.landscapeLeft: S.current.SettingsLandscapeLeft,
      FunctionName.landscapeRight: S.current.SettingsLandscapeRight,
      FunctionName.bottomPadding: S.current.AppBottomSafe,
      FunctionName.hideControls: S.current.AppControlsHide,
      FunctionName.screenShot: S.current.TakeScreenshot,
      FunctionName.showTaskPage: S.current.TaskReminders
    };

    Map<FunctionName, IconData> functionIcon = {
      FunctionName.portrait: CupertinoIcons.device_phone_portrait,
      FunctionName.landscapeLeft: CupertinoIcons.device_phone_landscape,
      FunctionName.landscapeRight: CupertinoIcons.device_phone_landscape,
      FunctionName.bottomPadding: CupertinoIcons.rectangle_dock,
      FunctionName.hideControls: CupertinoIcons.arrow_left_right_square,
      FunctionName.screenShot: CupertinoIcons.camera_viewfinder,
      FunctionName.showTaskPage: CupertinoIcons.square_list
    };

    final Map<FunctionName, Function> functionMap = {
      FunctionName.showTaskPage: () async {
        showCupertinoModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => const KancolleDataModal(),
        );
      },
      FunctionName.bottomPadding: () {
        setState(() {
          bottomPadding = !bottomPadding;
        });
      },
      FunctionName.hideControls: () {
        setState(() {
          showControls = false;
        });
      },
      FunctionName.screenShot: () {
        webController.saveScreenShot();
      },
      FunctionName.screenManger: () {
        if (deviceType == DeviceType.iPad) {
          setState(() {
            showCupertinoModalBottomSheet(
              expand: false,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => ModalFit(
                children: <Widget>[
                  ListTile(
                    title: Text(S.of(context).TakeScreenshot),
                    leading: const Icon(CupertinoIcons.camera_viewfinder),
                    onTap: () {
                      Navigator.of(context).pop();
                      // await Future.delayed(const Duration(milliseconds: 500));
                      webController.saveScreenShot();
                    },
                    trailing: const CupertinoListTileChevron(),
                  ),
                  ListTile(
                    title: Text(S.of(context).AppBottomSafe),
                    leading: const Icon(CupertinoIcons.rectangle_dock),
                    onTap: () {
                      Navigator.of(context).pop();
                      setState(() {
                        bottomPadding = !bottomPadding;
                      });
                    },
                    trailing: bottomPadding
                        ? const Icon(CupertinoIcons.checkmark_alt)
                        : null,
                  ),
                ],
              ),
            );
          });
        } else {
          showCupertinoModalBottomSheet(
            expand: false,
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => ModalFit(
              children: <Widget>[
                ListTile(
                  title: Text(S.of(context).TakeScreenshot),
                  leading: const Icon(CupertinoIcons.camera_viewfinder),
                  onTap: () async {
                    Navigator.of(context).pop();
                    await Future.delayed(const Duration(milliseconds: 500));
                    webController.saveScreenShot();
                  },
                  trailing: const CupertinoListTileChevron(),
                ),
                ListTile(
                  title: Text(S.of(context).AppBottomSafe),
                  leading: const Icon(CupertinoIcons.rectangle_dock),
                  onTap: () {
                    Navigator.of(context).pop();
                    setState(() {
                      bottomPadding = !bottomPadding;
                    });
                  },
                  trailing: bottomPadding
                      ? const Icon(CupertinoIcons.checkmark_alt)
                      : null,
                ),
                ListTile(
                  title: Text(S.of(context).SettingsLandscapeRight),
                  leading: const Icon(CupertinoIcons.device_phone_landscape),
                  onTap: () {
                    Navigator.of(context).pop();
                    deviceManager.customDeviceOrientation(
                        CustomDeviceOrientation.landscapeRight);
                  },
                  trailing: deviceManager.getOrientationIndex() == 0
                      ? const Icon(CupertinoIcons.checkmark_alt)
                      : null,
                ),
                ListTile(
                  title: Text(S.of(context).SettingsLandscapeLeft),
                  leading: Transform.flip(
                    flipX: true,
                    child: const Icon(CupertinoIcons.device_phone_landscape),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    deviceManager.customDeviceOrientation(
                        CustomDeviceOrientation.landscapeLeft);
                  },
                  trailing: deviceManager.getOrientationIndex() == 1
                      ? const Icon(CupertinoIcons.checkmark_alt)
                      : null,
                ),
                ListTile(
                  title: Text(S.of(context).SettingsPortrait),
                  leading: const Icon(CupertinoIcons.device_phone_portrait),
                  onTap: () {
                    Navigator.of(context).pop();
                    deviceManager.customDeviceOrientation(
                        CustomDeviceOrientation.portrait);
                  },
                  trailing: deviceManager.getOrientationIndex() == 2
                      ? const Icon(CupertinoIcons.checkmark_alt)
                      : null,
                ),
              ],
            ),
          );
        }
      },
      FunctionName.none: () {
        debugPrint("null function");
      }
    };

    final mainPage = Row(
      children: <Widget>[
        if (showControls && orientation == Orientation.landscape)
          Sidebar(
            orientation: orientation,
            deviceWidth: deviceWidth,
            notifyParent: () => setState(() {}),
            cookieManager: widget.cookieManager,
            functionMap: functionMap,
          ),
        if (showControls && orientation == Orientation.landscape)
          const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: IndexedStackWithCupertinoPageTransition(
            index: selectedIndex,
            duration: const Duration(milliseconds: 300),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  bottom: bottomPadding ? deviceWidth / 18 : 0.0,
                ),
                alignment: Alignment.center,
                width: double.infinity,
                height: deviceWidth,
                child: const AppWebView(),
              ),
              FunctionalLayer(
                cookieManager: widget.cookieManager,
                notifyParent: () => setState(() {}),
                reloadConfig: () => _loadConfig(),
              ),
            ],
          ),
        ),
      ],
    );

    return GestureDetector(
      onLongPress: () {
        setState(() {
          showControls = true;
        });
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: orientation == Orientation.portrait
            ? Controls(
                widget.cookieManager,
                notifyParent: () {
                  setState(() {});
                },
                orientation: orientation,
              )
            : null,
        body: SafeArea(
          top: false,
          bottom: false,
          child: (appLayout == AppLayout.onlyJoystick ||
                  appLayout == AppLayout.pure)
              ? mainPage
              : CircularMenu(
                  toggleButtonBoxShadow: const [],
                  alignment: fabAlignment,
                  toggleButtonSize: 22,
                  radius: 72,
                  toggleButtonOnPressed: () {
                    HapticFeedback.mediumImpact();
                  },
                  // showMenu: enableShowFAB,
                  animationDuration: const Duration(milliseconds: 240),
                  items: [
                    CircularMenuItem(
                      boxShadow: const [],
                      iconSize: 20,
                      icon: deviceType == DeviceType.iPad
                          ? CupertinoIcons.rectangle_dock
                          : CupertinoIcons.rectangle_stack,
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        if (deviceType == DeviceType.iPad) {
                          functionMap[FunctionName.bottomPadding]!();
                        } else {
                          functionMap[FunctionName.screenManger]!();
                        }
                      },
                    ),
                    CircularMenuItem(
                      iconSize: 20,
                      boxShadow: const [],
                      icon: CupertinoIcons.camera_viewfinder,
                      onTap: () async {
                        HapticFeedback.mediumImpact();
                        webController.saveScreenShot();
                      },
                    ),
                    CircularMenuItem(
                      iconSize: 20,
                      boxShadow: const [],
                      icon: CupertinoIcons.arrow_left_right_square,
                      onTap: () async {
                        HapticFeedback.mediumImpact();
                        setState(() {
                          if (showControls) {
                            showControls = false;
                          } else {
                            showControls = true;
                          }
                        });
                      },
                    ),
                    CircularMenuItem(
                        iconSize: 20,
                        boxShadow: const [],
                        icon: CupertinoIcons.square_list,
                        onTap: () {
                          HapticFeedback.mediumImpact();
                          functionMap[FunctionName.showTaskPage]!();
                        })
                  ],
                  backgroundWidget: mainPage,
                ),
        ),
      ),
    );
  }
}
