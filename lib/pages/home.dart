import 'dart:async';
import 'dart:io';

import 'package:circular_menu/circular_menu.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/about_page.dart';
import 'package:conning_tower/pages/settings_page.dart';
import 'package:conning_tower/pages/tools_page.dart';
import 'package:conning_tower/providers/device_provider.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/fade_indexed_stack.dart';
import 'package:conning_tower/widgets/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    home = Uri.parse(kGameUrl);

    _loadConfig();

    _initPackageInfo();
  }

  @override
  void dispose(){
    super.dispose();
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
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
    return Scaffold(
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
        right: selectedIndex == 0 ? true : false,
        bottom: false,
        child: CircularMenu(
          toggleButtonBoxShadow: [],
          alignment: fabAlignment,
          toggleButtonSize: 22,
          radius: 72,
          toggleButtonOnPressed: () {
            HapticFeedback.mediumImpact();
          },
          // showMenu: enableShowFAB,
          animationDuration: const Duration(milliseconds: 240),
          items: enableHideFAB
              ? null
              : [
                  CircularMenuItem(
                    boxShadow: const [],
                    iconSize: 20,
                    icon: CupertinoIcons.rectangle_dock,
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      setState(() {
                        bottomPadding = !bottomPadding;
                      });
                    },
                  ),
                  CircularMenuItem(
                    boxShadow: const [],
                    iconSize: 20,
                    icon: CupertinoIcons.device_phone_landscape,
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      setState(() {
                        if (deviceManager.getOrientationIndex() != 0) {
                          deviceManager.customDeviceOrientation(CustomDeviceOrientation.landscapeRight);
                        } else if (deviceManager.getOrientationIndex() != 1) {
                          deviceManager.customDeviceOrientation(CustomDeviceOrientation.landscapeLeft);
                        }
                      });
                    },
                  ),
                  CircularMenuItem(
                    iconSize: 20,
                    boxShadow: const [],
                    icon: CupertinoIcons.device_phone_portrait,
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      setState(() {
                        deviceManager.customDeviceOrientation(CustomDeviceOrientation.portrait);
                      });
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
                ],
          backgroundWidget: Row(
            children: <Widget>[
              if (orientation == Orientation.landscape)
                SingleChildScrollView(
                  controller: ScrollController(),
                  scrollDirection: Axis.vertical,
                  child: IntrinsicHeight(
                    child: showControls
                        ? Controls(
                            widget.cookieManager,
                            notifyParent: () {
                              setState(() {});
                            },
                            orientation: orientation,
                          )
                        : null,
                  ),
                ),
              if (showControls && orientation == Orientation.landscape)
                const VerticalDivider(thickness: 1, width: 1),
              // This is the main content.
              Expanded(
                child: FadeIndexedStack(
                  index: selectedIndex,
                  duration: const Duration(milliseconds: 100),
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
                    ToolsPage(
                      widget.cookieManager,
                      notifyParent: () {
                        setState(() {});
                      },
                      reloadConfig: () {
                        _loadConfig();
                      },
                    ),
                    SettingsPage(
                      reloadConfig: () {
                        _loadConfig();
                      },
                    ),
                    AboutPage(
                      packageInfo: _packageInfo,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
