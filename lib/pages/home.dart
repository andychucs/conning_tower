import 'dart:async';
import 'dart:io';

import 'package:conning_tower/pages/about_page.dart';
import 'package:conning_tower/pages/settings_page.dart';
import 'package:conning_tower/pages/tools_page.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/fade_indexed_stack.dart';
import 'package:conning_tower/widgets/kcwebview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

// #docregion platform_imports
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
// #enddocregion platform_imports

import '../constants.dart';
import '../generated/l10n.dart';
import '../helper.dart';

late bool allowNavi;
late bool autoAdjusted;
late bool bottomPadding;
late bool gameLoadCompleted;
late bool inKancolleWindow;
late bool beforeRedirect;
late double kWebviewHeight;
late double kWebviewWidth;
late int selectedIndex;

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final WebViewCookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late final WebViewController _controller;
  late double deviceWidth;
  bool _showNotify = true;
  bool _showIosNotify = true;
  bool _enableAutoProcess = true;
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
    gameLoadCompleted = false;
    inKancolleWindow = false;
    autoAdjusted = false;
    kWebviewHeight = 0.0;
    kWebviewWidth = 0.0;
    allowNavi = true;
    bottomPadding = false;
    selectedIndex = 0;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _loadConfig();
      if (_showNotify) {
        await _showMyDialog(S.current.AppNotify);
      }
      if (Platform.isIOS && _showIosNotify) {
        await _showMyDialog(S.current.MsgIOSNote);
      }
    });

    _initPackageInfo();

    _initWebviewController();
  }

  Future<void> _initWebviewController() async {
    String defaultUA;

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      defaultUA = kSafariUA;
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      defaultUA = kChromeUA;
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features
    beforeRedirect = false;

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(CupertinoColors.extraLightBackgroundGray)
      ..loadRequest(Uri.parse('http://$kGameUrl'))
      ..setUserAgent(defaultUA)
      ..enableZoom(true)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) async {
            debugPrint('WebView is loading (progress : $progress%)');
            if (_enableAutoProcess &&
                beforeRedirect &&
                !inKancolleWindow &&
                progress >= 90) {
              if (Platform.isIOS) {
                await controller
                    .runJavaScript(
                        '''window.open("http:"+gadgetInfo.URL,'_blank');''')
                    .whenComplete(() => () {
                          Fluttertoast.showToast(
                              msg: S.current.KCViewFuncMsgAutoGameRedirect);
                          debugPrint("HTTP Redirect success");
                          setState(() {
                            inKancolleWindow = true;
                          });
                        })
                    .onError(
                      (error, stackTrace) => () async {
                        await Sentry.captureMessage(
                            'Error on 1st time run redirect');
                        Future.delayed(
                          const Duration(seconds: 1),
                          () async {
                            await controller
                                .runJavaScript(
                                    '''window.open("http:"+gadgetInfo.URL,'_blank');''')
                                .whenComplete(() => () {
                                      Fluttertoast.showToast(
                                          msg: S.current
                                              .KCViewFuncMsgAutoGameRedirect);
                                      debugPrint("HTTP Redirect success");
                                      setState(() {
                                        inKancolleWindow = true;
                                      });
                                    })
                                .onError(
                                  (error, stackTrace) => () async {
                                    await Sentry.captureException(error,
                                        stackTrace: stackTrace);
                                    await Sentry.captureMessage(
                                        'Error on 2nd time run redirect');
                                  },
                                );
                          },
                        );
                      },
                    );
              }
              if (Platform.isAndroid) {
                Fluttertoast.showToast(
                    msg: S.current.KCViewFuncMsgNaviGameLoadCompleted);
                setState(() {
                  gameLoadCompleted = true;
                  inKancolleWindow = true;
                });
                HapticFeedback.mediumImpact();
                await autoAdjustWindowV2(controller);
              }
            }
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
            setState(() {
              beforeRedirect = false;
              if (url.endsWith(kGameUrl)) {
                beforeRedirect = true;
                inKancolleWindow = false;
                autoAdjusted = false;
              } else if (url.startsWith("http://osapi.dmm.com")) {
                inKancolleWindow = true;
                autoAdjusted = false;
              }
            });
          },
          onPageFinished: (String url) async {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) async {
            print('allowing navigation to $request');
            if (_enableAutoProcess) {
              if (WebViewPlatform.instance is WebKitWebViewPlatform) {
                if (request.url.contains(
                    "/kcs2/index.php?api_root=/kcsapi&voice_root=/kcs/")) {
                  Fluttertoast.showToast(
                      msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                  setState(() {
                    gameLoadCompleted = true;
                    inKancolleWindow = true;
                  });
                  HapticFeedback.mediumImpact();
                  await autoAdjustWindowV2(controller);
                }
              } else {
                //chrome can't detect /kcs2/.....
                if (request.url.startsWith("http://osapi.dmm.com")) {
                  Fluttertoast.showToast(
                      msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                  setState(() {
                    gameLoadCompleted = true;
                    inKancolleWindow = true;
                  });
                  HapticFeedback.mediumImpact();
                  await autoAdjustWindowV2(controller);
                }
              }
            }

            if (request.url.startsWith("http://osapi.dmm.com") ||
                request.url.contains(
                    "www.dmm.com/netgame/social/-/gadgets/=/app_id=854854")) {
              Fluttertoast.showToast(msg: S.current.KCViewFuncMsgGameNavi);
              if (!allowNavi) {
                Fluttertoast.showToast(
                    msg: S.current.KCViewFuncMsgGameNaviBlock);
                return NavigationDecision.prevent;
              }
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      );

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    if (controller.platform is WebKitWebViewController) {
      (controller.platform as WebKitWebViewController)
          .setAllowsBackForwardNavigationGestures(true);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Future<void> _loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _showNotify = (prefs.getBool('showNotify') ?? true);
      _showIosNotify = (prefs.getBool('showIosNotify') ?? true);
      _enableAutoProcess = (prefs.getBool('enableAutoProcess') ?? true);
    });
  }

  Future<void> _showMyDialog(String msg) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          msg: msg,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceWidth = MediaQuery.of(context).size.width;
    }

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: MediaQuery.of(context).size.width > MediaQuery.of(context).size.height ? NaviBar() : null,
      body: SafeArea(
        bottom: false,
        child: Row(
          children: <Widget>[
            if (MediaQuery.of(context).size.width < MediaQuery.of(context).size.height)
            SingleChildScrollView(
              controller: ScrollController(),
              scrollDirection: Axis.vertical,
              child: IntrinsicHeight(
                child: AppLeftSideControls(
                  _controller,
                  widget.cookieManager,
                  notifyParent: () {
                    setState(() {});
                  },
                ),
              ),
            ),
            if(MediaQuery.of(context).size.width < MediaQuery.of(context).size.height)
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
                    child: KCWebView(_controller),
                  ),
                  ToolsPage(
                    _controller,
                    widget.cookieManager,
                    notifyParent: () {
                      setState(() {});
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
    );
  }
}

class NaviBar extends StatelessWidget{
  NaviBar({super.key});
  final Map funcMap = {
    0: ConFunc.loadHome,
    // 1: ConFunc.httpRedirect,
    1: ConFunc.navi2Tool,
    2: ConFunc.bottomUp,
    3: ConFunc.refresh,
    4: ConFunc.scrollUp,
    5: ConFunc.scrollDown,
    6: ConFunc.goBack,
    7: ConFunc.navi2Settings,
    8: ConFunc.navi2About,
    // 1: ConFunc.adjustWindow,
    // 8: ConFunc.clearCookies,
    // 9: ConFunc.clearCache
  };
  final Map naviItems = {
    0: 0, //loadHome
    1: 1, //navi2Tool
    2: 7, //navi2Settings
    3: 8, //navi2About
  };
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: CupertinoColors.inactiveGray,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: ((value) async {
        HapticFeedback.heavyImpact();
        var func = funcMap[index];
        switch (func) {
          case ConFunc.navi2About:
            selectedIndex = 3;
            notifyParent();
            break;
          case ConFunc.navi2Tool:
            selectedIndex = 1;
            notifyParent();
            break;
          case ConFunc.navi2Settings:
            selectedIndex = 2;
            notifyParent();
            break;
          case ConFunc.loadHome:
            if (selectedIndex != 0) {
              selectedIndex = 0;
              notifyParent();
            } else {
              _onLoadHome(context, controller);
            }
            break;
          case ConFunc.adjustWindow:
            _onAdjustWindow(controller);
            break;
          case ConFunc.httpRedirect:
            _onHttpRedirect(controller);
            break;
          case ConFunc.bottomUp:
            _onBottomUp();
            break;
          case ConFunc.scrollUp:
            controller.scrollBy(0, -1);
            break;
          case ConFunc.scrollDown:
            controller.scrollBy(0, 1);
            break;
          case ConFunc.goBack:
            _onGoBack(controller);
            break;
          case ConFunc.refresh:
            _onRefresh(context, controller);
            break;
          case ConFunc.clearCookies:
            _onClearCookies(context);
            break;
          case ConFunc.clearCache:
            _onClearCache(context, controller);
            break;
        }
      }),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.home),
          label: S.of(context).AppHome,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.game_controller),
          label: S.of(context).ToolsButton,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.rectangle_dock),
          label: S.of(context).AppBottomSafe,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            CupertinoIcons.refresh,
            color: CupertinoColors.destructiveRed,
          ),
          label: S.of(context).AppRefresh,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.up_arrow),
          label: S.of(context).AppScrollUp,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.down_arrow),
          label: S.of(context).AppScrollDown,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.back),
          label: S.of(context).AppBack,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            CupertinoIcons.settings,
          ),
          label: S.of(context).SettingsButton,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            CupertinoIcons.info,
            color: CupertinoColors.inactiveGray,
          ),
          label: S.of(context).AboutButton,
        ),

      ],
    );

  }
}
