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
late Uri home;

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
    home = Uri.parse(kGameUrl);
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
      ..loadRequest(home)
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
            var uri = Uri.parse(url);
            setState(() {
              beforeRedirect = false;
              if (uri.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854')) {
                beforeRedirect = true;
                inKancolleWindow = false;
                autoAdjusted = false;
              } else if (uri.host == 'osapi.dmm.com') {
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
            var uri = Uri.parse(request.url);
            if (_enableAutoProcess) {
              if (WebViewPlatform.instance is WebKitWebViewPlatform) {
                if (uri.path.endsWith('/kcs2/index.php')) {
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
                if (uri.host == 'osapi.dmm.com') {
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

            if (uri.host == 'osapi.dmm.com' ||
                uri.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854')) {
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
      // home = Uri.parse(prefs.getString('homeUrl') ?? kGameUrl);
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
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: orientation == Orientation.portrait
          ? Controls(
                _controller,
                widget.cookieManager,
                notifyParent: () {
                  setState(() {});
                },
                orientation: orientation,
              )
          : null,
      body: SafeArea(
        top: false,
        right: false,
        bottom: false,
        child: Row(
          children: <Widget>[
            if (orientation == Orientation.landscape)
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                child: IntrinsicHeight(
                  child: Controls(
                    _controller,
                    widget.cookieManager,
                    notifyParent: () {
                      setState(() {});
                    },
                    orientation: orientation,
                  ),
                ),
              ),
            if (orientation == Orientation.landscape)
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
                    alignment: Alignment.centerLeft,
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
