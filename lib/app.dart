import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'generated/l10n.dart';

//const String gameUrl = 'screenresolutiontest.com/'; // For Debug
const String gameUrl = 'www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/';
const String safariUA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15";
const String chromeUA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36";

class ConnTowerApp extends StatefulWidget {
  const ConnTowerApp({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => ConnTowerHomePage();
}

class ConnTowerHomePage extends State<ConnTowerApp> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late WebViewController __controller;
  late bool needAutoRedirect = false;
  late String defaultUA;

  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      defaultUA = chromeUA;
      WebView.platform = SurfaceAndroidWebView();
    }
    if (Platform.isIOS) {
      defaultUA = safariUA;
    }
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    if (Platform.isIOS) {
      var iosInfo = await DeviceInfoPlugin().iosInfo;
      var version = double.tryParse(iosInfo.systemVersion ?? "14.0");
      if (version! >= 15.0) {
        needAutoRedirect = true;
      }
    }
  }

  bool inKancolleWindow = false;
  bool autoAdjusted = false;
  bool loadCompleted = false;
  @override
  Widget build(BuildContext context) {
    var webviewHeigth;
    var webviewWidth;
    var deviceHeigth;
    var deviceWidth;

    if (Platform.isIOS) {
      deviceHeigth = MediaQuery.of(context).size.width;
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceHeigth = MediaQuery.of(context).size.height;
      deviceWidth = MediaQuery.of(context).size.width;
    }

    const kancolleHeigth = 720;
    const kancolleWidth = 1200;
    const kancollePixel = kancolleHeigth * kancolleWidth;
    getResizeScale(double heigth, double width) {
      var scale = (heigth * width) / kancollePixel;
      if (scale < 0.5) {
        scale = 1 - scale;
        return sqrt(scale);
      } else {
        while (kancolleWidth * scale > webviewWidth ||
            kancolleHeigth * scale > webviewHeigth) {
          scale = scale - 0.05;
        }
        return scale;
      }
    }

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        backgroundColor: Colors.black, // For Debug
        body: SafeArea(
          bottom: false,
          child: Row(
            children: <Widget>[
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                child: IntrinsicHeight(
                  child: NavigationRail(
                    labelType: NavigationRailLabelType.all,
                    backgroundColor: Colors.black, // For Debug
                    selectedIndex: 0,
                    groupAlignment: 0,
                    onDestinationSelected: (int index) async {
                      HapticFeedback.heavyImpact();
                      if (index == 0) {
                        __controller.loadUrl('http://$gameUrl');
                      } else if (index == 1) {
                        __controller.scrollBy(0, -1);
                      } else if (index == 2) {
                        __controller.scrollBy(0, 1);
                      } else if (index == 3) {
                        if (!loadCompleted) {
                          Fluttertoast.showToast(
                              msg: "Game not load complete yet");
                          return;
                        }
                        if (inKancolleWindow && !autoAdjusted) {
                          __controller.runJavascript(
                              '''document.getElementById("spacing_top").style.display = "none";''');
                          __controller.runJavascript(
                              '''document.getElementById("sectionWrap").style.display = "none";''');
                          __controller.runJavascript(
                              '''document.getElementById("flashWrap").style.backgroundColor = "black";''');
                          __controller.runJavascript(
                              '''document.body.style.backgroundColor = "black";''');
                          __controller
                              .runJavascriptReturningResult('''window.innerHeight;''').then(
                                  (value) =>
                                      webviewHeigth = double.parse(value));
                          __controller
                              .runJavascriptReturningResult('''window.innerWidth;''').then(
                                  (value) =>
                                      webviewWidth = double.parse(value));
                          var resizeScale = 1.0;
                          if (webviewHeigth != null && webviewWidth != null) {
                            resizeScale =
                                getResizeScale(webviewHeigth, webviewWidth);
                            autoAdjusted = true;
                          }
                          print(webviewHeigth);
                          print(webviewWidth);
                          print(resizeScale);
                          if (Platform.isIOS) {
                            __controller.runJavascript(
                                //Scale to correct size(ios webkit)
                                '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
                          } else {
                            __controller.runJavascript(//Scale to correct size
                                '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
                          }
                        }
                        if (autoAdjusted) {
                          Fluttertoast.showToast(msg: "Already auto adjusted!");
                        }

                        print("autoAdjusted: " + "$autoAdjusted");
                      } else if (index == 4) {
                        if (!inKancolleWindow) {
                          String? currentUrl = await __controller.currentUrl();
                          //print(currentUrl);
                          if ((currentUrl ?? "").endsWith(gameUrl)) {
                            // May be HTTPS or HTTP
                            inKancolleWindow = true;

                            __controller.runJavascript(
                                '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                          }
                        }
                        if (inKancolleWindow) {
                          Fluttertoast.showToast(
                              msg: "Already in game window!");
                        }

                        print("inKancolleWindow: " + "$inKancolleWindow");
                      } else if (index == 5) {
                        __controller.goBack();
                      } else if (index == 6) {
                        __controller.reload();
                      }
                    },
                    destinations: <NavigationRailDestination>[
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.home),
                        selectedIcon:
                            const Icon(CupertinoIcons.home, color: Colors.blue),
                        label: Text(S.of(context).AppHome,
                            style: TextStyle(color: Colors.white)),
                      ),
                      NavigationRailDestination(
                          icon: const Icon(
                            CupertinoIcons.up_arrow,
                            color: Colors.white,
                          ),
                          label: Text(S.of(context).AppScrollUp,
                              style: TextStyle(color: Colors.white))),
                      NavigationRailDestination(
                          icon: const Icon(CupertinoIcons.down_arrow,
                              color: Colors.white),
                          label: Text(S.of(context).AppScrollDown,
                              style: TextStyle(color: Colors.white))),
                      NavigationRailDestination(
                          icon: const Icon(CupertinoIcons.fullscreen,
                              color: Colors.white),
                          label: Text(S.of(context).AppResize,
                              style: TextStyle(color: Colors.white))),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.arrow_up_down_square,
                            color: Colors.white),
                        label: Text(S.of(context).AppRedirect,
                            style: TextStyle(color: Colors.white)),
                      ),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.back,
                            color: Colors.white),
                        label: Text(S.of(context).AppBack,
                            style: TextStyle(color: Colors.white)),
                      ),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.refresh,
                            color: Colors.red),
                        label: Text(S.of(context).AppRefresh,
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(thickness: 1, width: 1),
              // This is the main content.
              Expanded(
                  child: Container(
                color: Colors.black,
                alignment: Alignment.center,
                width: double.infinity,
                height: deviceWidth,
                child: AspectRatio(
                  aspectRatio: 5 / 3,
                  child: WebView(
                    zoomEnabled: false,
                    initialUrl: 'http://$gameUrl',
                    userAgent: defaultUA,
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController webViewController) {
                      _controller.complete(__controller = webViewController);
                    },
                    onProgress: (int progress) {
                      print('WebView is loading (progress : $progress%)');
                    },
                    javascriptChannels: <JavascriptChannel>{
                      _toasterJavascriptChannel(context),
                    },
                    navigationDelegate: (NavigationRequest request) {
                      print('allowing navigation to $request');
                      setState(() {
                        if (request.url.contains(
                            "/kcs2/index.php?api_root=/kcsapi&voice_root=/kcs/")) {
                          Fluttertoast.showToast(msg: "Game load completed");
                          loadCompleted = true;
                          HapticFeedback.mediumImpact();

                          if (!autoAdjusted) {
                            __controller.runJavascript(
                                '''document.getElementById("spacing_top").style.display = "none";''');
                            __controller.runJavascript(
                                '''document.getElementById("sectionWrap").style.display = "none";''');
                            __controller.runJavascript(
                                '''document.getElementById("flashWrap").style.backgroundColor = "black";''');
                            __controller.runJavascript(
                                '''document.body.style.backgroundColor = "black";''');
                            __controller
                                .runJavascriptReturningResult('''window.innerHeight;''').then(
                                    (value) =>
                                        webviewHeigth = double.parse(value));
                            __controller
                                .runJavascriptReturningResult('''window.innerWidth;''').then(
                                    (value) =>
                                        webviewWidth = double.parse(value));
                            var resizeScale = 1.0;
                            if (webviewHeigth != null && webviewWidth != null) {
                              resizeScale =
                                  getResizeScale(webviewHeigth, webviewWidth);
                              autoAdjusted = true;
                            }
                            if (Platform.isIOS) {
                              __controller.runJavascript(
                                  //Scale to correct size(ios webkit)
                                  '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
                            } else {
                              __controller.runJavascript(//Scale to correct size
                                  '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
                            }
                            Fluttertoast.showToast(msg: "Auto adjusted!");
                          }
                        }
                      });
                      return NavigationDecision.navigate;
                    },
                    onPageStarted: (String url) {
                      print('Page started loading: $url');
                      setState(() {
                        if (url.endsWith(gameUrl)) {
                          inKancolleWindow = false;
                          autoAdjusted = false;
                        } else if (url.startsWith("http://osapi.dmm.com")) {
                          inKancolleWindow = true;
                          autoAdjusted = false;
                        }
                      });
                    },
                    onPageFinished: (String url) {
                      print('Page finished loading: $url');
                      setState(() {
                        if (url.endsWith(gameUrl)) {
                          print('is game origin url');
                          HapticFeedback.lightImpact();
                          __controller.runJavascript(
                              '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                          Fluttertoast.showToast(msg: "Loaded in game window!");
                          inKancolleWindow = true;
                        }
                      });
                    },
                    gestureNavigationEnabled: true,
                    backgroundColor: CupertinoColors.extraLightBackgroundGray,
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}

JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      });
}
