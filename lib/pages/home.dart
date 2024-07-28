import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:circular_menu/circular_menu.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcwiki/kcwiki_data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/data.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:conning_tower/pages/dashboard.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/pages/webview.dart';
import 'package:conning_tower/providers/alert_provider.dart';
import 'package:conning_tower/providers/generatable/device_provider.dart';
import 'package:conning_tower/providers/generatable/kancolle_localization_provider.dart';
import 'package:conning_tower/providers/generatable/kcwiki_data_provider.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/providers/raw_data_provider.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/dialog.dart';
import 'package:conning_tower/widgets/indexed_stack.dart';
import 'package:conning_tower/widgets/modal_sheets.dart';
import 'package:conning_tower/widgets/sidebar.dart';
import 'package:conning_tower/widgets/texts.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shake/shake.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  late Alignment fabAlignment;
  bool showNewVersion = false;
  bool setUp = true;
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


    _initPackageInfo();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 1));
      await showNewVersionInfo();
    });

    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          showControls = true;
        });
      },
      minimumShakeCount: 2,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );
    detector.startListening();
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
    if (showNewVersion && kReleaseChannel == ReleaseChannel.store) {
      showAdaptiveDialog(
          context: context,
          barrierDismissible: true,
          builder: (builder) {
            return AlertDialog.adaptive(
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
                adaptiveAction(
                  context: context,
                  child: Text(S.of(context).TextYes),
                  onPressed: () {
                    var version = _packageInfo.version;
                    localStorage.setString("preVersion", version);
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
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

  void enableListener(WidgetRef ref, BuildContext context) {
    // listen the provider to make it not disposed
    ref.listen(kcWikiDataStateProvider,
        (previous, AsyncValue<KcWikiData> next) {
      log("kcwiki rebuild");
    });

    ref.listen(rawDataProvider, (previous, RawData next) {
      debugPrint('listen.rawDataProvider');
      log(next.source);
      log(next.data);
      ref
          .watch(kancolleDataProvider.notifier)
          .update((state) => state.parseWith(next));
    });

    ref.listen(kancolleDataProvider,
        (KancolleData? previous, KancolleData next) {
      log("listen kancolleDataProvider");
    });

    ref.listen(alertStateProvider, (previous, Map<String, String> next) {
      log(next.toString());
      if (next.isNotEmpty) {
        if (next['title'] == null) {
          FirebaseCrashlytics.instance.log(next.toString());
          FirebaseCrashlytics.instance.recordError("alert no title", null);
        }
        HapticFeedback.heavyImpact();
        if (Platform.isAndroid) {
          showAdaptiveDialog(
              context: context,
              barrierDismissible: false,
              builder: (builder) {
                return AlertDialog.adaptive(
                  title: Text(next["title"] ?? "empty error title"),
                  content: SelectableText(next["content"] ?? "empty error content"),
                  actions: [
                    adaptiveAction(
                      context: context,
                      child: Text(
                        S.of(context).TextYes,
                        style: const TextStyle(
                            color: CupertinoColors.destructiveRed),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                );
              });
        } else {
          navigatorToCupertino(
            context,
            Scaffold(
              body: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text(next["title"]!),
                  backgroundColor: CupertinoColors.systemGroupedBackground,
                ),
                child: SafeArea(
                  bottom: false,
                  child: ListView(
                    children: [
                      CupertinoListSection.insetGrouped(
                        footer: SelectableText(next["content"]!),
                        children: [
                          CupertinoListTile(
                            title: Text(
                              S.of(context).AppControlsReload,
                              style: const TextStyle(color: CupertinoColors.activeBlue),
                            ),
                            trailing: const Icon(CupertinoIcons.refresh, color: CupertinoColors.activeBlue,),
                            onTap: () =>
                                ref.read(webControllerProvider.notifier).reload(),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }
      next.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final webController = ref.watch(webControllerProvider.notifier);
    final deviceManager = ref.watch(deviceManagerProvider.notifier);
    deviceManager.setPreferredDeviceOrientation();
    Size size = MediaQuery.of(context).size;
    bool useStack = size.width <= 1024;
    final settings = ref.watch(settingsProvider);

    if (setUp) {
      setUp = false;
    }

    if (settings.useKancolleListener) {
      enableListener(ref, context);
    }

    final Map<FunctionName, Function> functionMap = {
      FunctionName.naviDashboard: () {
        navigatorToCupertino(context,
            Scaffold(body: DashboardPage(notifyParent: () => setState(() {}))));
      },
      FunctionName.showTaskPage: () async {
        showCupertinoModalBottomSheet(
          expand: true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => const TasksSheet(),
        );
      },
      FunctionName.bottomPadding: () {
        ref.watch(settingsProvider.notifier).setBool('bottomPadding', !settings.bottomPadding);
      },
      FunctionName.hideControls: () {
        setState(() {
          showControls = false;
        });
      },
      FunctionName.screenShot: () {
        ref.read(webControllerProvider.notifier).saveScreenShot();
      },
      FunctionName.toolBox: () {
        List<Widget> items = [
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
              ref.watch(settingsProvider.notifier).setBool('bottomPadding', !settings.bottomPadding);
            },
            trailing:
              settings.bottomPadding ? const Icon(CupertinoIcons.checkmark_alt) : null,
          ),
        ];
        if (deviceType != DeviceType.iPad) {
          items.addAll([
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
                deviceManager
                    .customDeviceOrientation(CustomDeviceOrientation.portrait);
              },
              trailing: deviceManager.getOrientationIndex() == 2
                  ? const Icon(CupertinoIcons.checkmark_alt)
                  : null,
            ),
          ]);
        }
        showCupertinoModalBottomSheet(
          expand: false,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => ModalFit(
            children: items,
          ),
        );
      },
      FunctionName.none: () {
        debugPrint("null function");
      }
    };

    return OrientationBuilder(builder: (context, orientation) {
      bool enableBottomPadding = settings.bottomPadding;
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
      return Scaffold(
          resizeToAvoidBottomInset: orientation == Orientation.portrait,
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
              showMenu: settings.appLayout == AppLayout.bothFABJoystick ||
                  settings.appLayout == AppLayout.onlyFAB,
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
                      functionMap[FunctionName.toolBox]!();
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
                    }),
                CircularMenuItem(
                    iconSize: 20,
                    boxShadow: const [],
                    icon: CupertinoIcons.slider_horizontal_below_rectangle,
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      functionMap[FunctionName.naviDashboard]!();
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
                      double aspectRatio = 5 / 3; // The aspect ratio is 5:3
                      double parentAspectRatio = box.maxWidth / box.maxHeight;
                      double childWidth = box.maxWidth;
                      double childHeight = box.maxHeight;
                      if (enableBottomPadding) {
                        parentAspectRatio = box.maxWidth /
                            (box.maxHeight - bottomPaddingHeight);
                        childHeight = box.maxHeight - bottomPaddingHeight;
                      }
                      if (parentAspectRatio > aspectRatio) {
                        // If the aspect ratio of the parent element is greater than the aspect ratio of the child element, the width is calculated from the height
                        childWidth = childHeight * aspectRatio;
                      } else {
                        // If the aspect ratio of the parent element is less than or equal to the aspect ratio of the child element, the height is calculated by width
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
                        !settings.showDashboardInHome) {
                      enableBottomPadding = false;
                    }

                    double bottomPaddingHeightValue = bottomPaddingHeight;
                    if ((orientation == Orientation.portrait) && bottomPaddingHeightValue == 0.0) {
                      bottomPaddingHeightValue = 32;
                      // Padding can be added at the bottom of the vertical screen for non-All-Screen devices
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
                              if (enableDashboard && settings.showDashboardInHome)
                                Expanded(
                                    child: settings.useKancolleListener
                                        ? Dashboard.kancolle(notifyParent: () => setState(() {}))
                                        : Dashboard.general(notifyParent: () => setState(() {}))),
                              Padding(
                                padding: EdgeInsets.only(bottom: enableBottomPadding ? bottomPaddingHeightValue : 0),
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
                          ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
