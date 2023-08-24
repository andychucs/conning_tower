import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:circular_menu/circular_menu.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/task.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/providers/raw_data_provider.dart';
import 'package:conning_tower/providers/tasks_provider.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/providers/generatable/device_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/pages/dashboard.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/indexed_stack.dart';
import 'package:conning_tower/widgets/modal_sheets.dart';
import 'package:conning_tower/widgets/sidebar.dart';
import 'package:conning_tower/widgets/texts.dart';
import 'package:conning_tower/pages/webview.dart';
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
      await showAdaptiveDialog(context,
          title: Text(S.current.VersionUpdateTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(S.current.VersionUpdateContent),
              textLink(S.of(context).DocsNewUrl,
                  S.of(context).VersionUpdateLinkText),
            ],
          ),
          actions: [
            AdaptiveDialogAction(
              child: Text(S.of(context).TextYes),
              onPressed: () {
                var version = _packageInfo.version;
                localStorage.setString("preVersion", version);
                Navigator.of(context).pop();
              },
            )
          ]);
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
          AppLayout.values.indexOf(AppLayout.onlyFAB)];
      showDashboardInHome =
          localStorage.getBool('showDashboardInHome') ?? false;
    });
  }

  final Map<FunctionName, String> _functionName = {
    FunctionName.portrait: S.current.SettingsPortrait,
    FunctionName.landscapeLeft: S.current.SettingsLandscapeLeft,
    FunctionName.landscapeRight: S.current.SettingsLandscapeRight,
    FunctionName.bottomPadding: S.current.AppBottomSafe,
    FunctionName.hideControls: S.current.AppControlsHide,
    FunctionName.screenShot: S.current.TakeScreenshot,
    FunctionName.showTaskPage: S.current.TaskReminders
  };

  final Map<FunctionName, IconData> _functionIcon = {
    FunctionName.portrait: CupertinoIcons.device_phone_portrait,
    FunctionName.landscapeLeft: CupertinoIcons.device_phone_landscape,
    FunctionName.landscapeRight: CupertinoIcons.device_phone_landscape,
    FunctionName.bottomPadding: CupertinoIcons.rectangle_dock,
    FunctionName.hideControls: CupertinoIcons.arrow_left_right_square,
    FunctionName.screenShot: CupertinoIcons.camera_viewfinder,
    FunctionName.showTaskPage: CupertinoIcons.square_list
  };

  Future<File> get _localJsonFile async {
    final path = await localPath;
    return File('$path/providers/task/tasks.json');
  }

  Future<void> loadLocalTasks() async {
    try {
      final file = await _localJsonFile;

      String contents = await file.readAsString();

      // debugPrint(contents);

      Tasks latestTasks = Tasks.fromJson(jsonDecode(contents));

      ref.watch(tasksStateProvider.notifier).update((state) => latestTasks);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    // final webController = ref.watch(webControllerProvider.notifier);
    final deviceManager = ref.watch(deviceManagerProvider.notifier);
    deviceManager.setPreferredDeviceOrientation();
    Size size = MediaQuery.of(context).size;
    bool useStack = size.width <= 1024;

    loadLocalTasks();

    ref.listen(rawDataProvider, (previous, RawData next) {
      debugPrint('listen.rawDataProvider');
      log(next.source);
      log(next.data);
      ref.watch(kancolleDataProvider.notifier).update((state) => state.parseWith(next.source, next.data));
    });

    // ref.listen(kancolleDataProvider, (KancolleData? previous, KancolleData next) {
    //   print("listen kancolleDataProvider");
    //   if (next.operationCancel != 999) {
    //     notification
    //         .cancelTaskNotification(missionIdToCode[next.operationCancel]);
    //     next.operationCancel = 999;
    //   }
    //   print(previous?.queue);
    //   print(next.queue);
    //
    //   if (previous?.queue.map[2]?.endTime != next.queue.map[2]?.endTime) {
    //       print("listen change");
    //       print(previous?.queue.map[2]?.endTime);
    //   }
    //
    // });

    final Map<FunctionName, Function> functionMap = {
      FunctionName.showTaskPage: () async {
        showCupertinoModalBottomSheet(
          expand: true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => const TasksSheet(),
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
        ref.read(webControllerProvider.notifier).saveScreenShot();
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
                      ref.read(webControllerProvider.notifier).saveScreenShot();
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
                  onTap: () {
                    Navigator.of(context).pop();
                    ref.read(webControllerProvider.notifier).saveScreenShot();
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

    return OrientationBuilder(builder: (context, orientation) {
      bool enableBottomPadding = bottomPadding;
      double bottomPaddingHeight = MediaQuery.of(context).padding.bottom;
      if (orientation == Orientation.landscape) {
        fabAlignment = const Alignment(1.0, 0.3);
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
        if (!useStack) selectedIndex = 0;
      } else {
        fabAlignment = const Alignment(1.0, 0.7);
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
      }
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
                  functionMap: functionMap,
                )
              : null,
          body: SafeArea(
            top: false,
            bottom: false,
            child: CircularMenu(
              toggleButtonBoxShadow: const [],
              alignment: fabAlignment,
              toggleButtonSize: 22,
              radius: 72,
              toggleButtonOnPressed: () {
                HapticFeedback.mediumImpact();
              },
              showMenu: appLayout == AppLayout.bothFABJoystick ||
                  appLayout == AppLayout.onlyFAB,
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
                    ref.read(webControllerProvider.notifier).saveScreenShot();
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
              backgroundWidget: Row(
                children: <Widget>[
                  if (showControls && orientation == Orientation.landscape)
                    Sidebar(
                      notifyParent: () => setState(() {}),
                      cookieManager: widget.cookieManager,
                      functionMap: functionMap,
                    ),
                  if (showControls && orientation == Orientation.landscape)
                    const VerticalDivider(thickness: 1, width: 1),
                  // This is the main content.
                  Expanded(
                    child: LayoutBuilder(builder: (context, box) {
                      double aspectRatio = 5 / 3; // 长宽比为 5:3
                      double parentAspectRatio = box.maxWidth / box.maxHeight;
                      double childWidth = box.maxWidth;
                      double childHeight = box.maxHeight;
                      if (enableBottomPadding) {
                        parentAspectRatio = box.maxWidth /
                            (box.maxHeight - bottomPaddingHeight);
                        childHeight = box.maxHeight - bottomPaddingHeight;
                      }
                      if (parentAspectRatio > aspectRatio) {
                        // 如果父元素的长宽比大于子元素的长宽比，则通过高度计算宽度
                        childWidth = childHeight * aspectRatio;
                      } else {
                        // 如果父元素的长宽比小于等于子元素的长宽比，则通过宽度计算高度
                        childHeight = childWidth / aspectRatio;
                      }
                      double dashboardHeight = box.maxHeight - childHeight;
                      if (enableBottomPadding) {
                        dashboardHeight =
                            box.maxHeight - bottomPaddingHeight - childHeight;
                      }

                      debugPrint("dashboardHeight $dashboardHeight");
                      bool enableDashboard = dashboardHeight >= 146;
                      //  10.5 inch iPad Air (3rd): 201
                      //  10.5 inch iPad Pro && 11 inch iPad Pro : 151
                      //  12.9 inch iPad Pro: 2XX
                      //  10.9 inch iPad Air (5th): 146.2

                      if (parentAspectRatio < aspectRatio &&
                          !showDashboardInHome) {
                        enableBottomPadding = false;
                      }
                      return IndexedStackWithCupertinoPageTransition(
                        index: useStack ? selectedIndex : 0,
                        duration: const Duration(milliseconds: 300),
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (enableDashboard && showDashboardInHome)
                                  Expanded(
                                      child: Dashboard(
                                          isWebInfo: false,
                                          notifyParent: () => setState(() {}))),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: enableBottomPadding
                                          ? bottomPaddingHeight
                                          : 0),
                                  child: SizedBox(
                                    height: childHeight,
                                    width: childWidth,
                                    child: const AppWebView(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (useStack)
                            FunctionalLayer(
                              cookieManager: widget.cookieManager,
                              notifyParent: () => setState(() {}),
                              reloadConfig: () => _loadConfig(),
                            ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
