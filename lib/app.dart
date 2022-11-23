import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'generated/l10n.dart';

//const String gameUrl = 'google.com/'; // For Debug
const String gameUrl = 'www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/';

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

  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
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
  @override
  Widget build(BuildContext context) {
    var webviewHeigth;
    var webviewWidth;
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
          scale = sqrt(scale);
        }
        return scale;
      }
    }

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        backgroundColor: Colors.white, // For Debug
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
                    backgroundColor: Colors.white, // For Debug
                    selectedIndex: 0,
                    groupAlignment: 0,
                    onDestinationSelected: (int index) async {
                      HapticFeedback.heavyImpact();
                      if (index == 0) {
                        __controller.loadUrl('https://$gameUrl');
                      } else if (index == 1) {
                        __controller.scrollBy(0, -1);
                      } else if (index == 2) {
                        __controller.scrollBy(0, 1);
                      } else if (index == 3) {
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
                            print(
                                '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
                            __controller.runJavascript(
                                //Scale to correct size(ios webkit)
                                '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
                            //FIXME: get "scale(0.4208333333333333,0.4208333333333333)" on iPad Air 3, make screen small, scale(1) is ok
                          } else {
                            __controller.runJavascript(//Scale to correct size
                                '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
                          }
                        }

                        print("autoAdjusted: " + "$autoAdjusted");
                      } else if (index == 4) {
                        if (!inKancolleWindow) {
                          String? currentUrl = await __controller.currentUrl();
                          //print(currentUrl);
                          if (currentUrl ==
                              "http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/") {
                            inKancolleWindow = true;

                            __controller.runJavascript(
                                '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                          }
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
                        label: Text(S.of(context).AppHome),
                      ),
                      NavigationRailDestination(
                          icon: const Icon(CupertinoIcons.up_arrow),
                          label: Text(S.of(context).AppScrollUp)),
                      NavigationRailDestination(
                          icon: const Icon(CupertinoIcons.down_arrow),
                          label: Text(S.of(context).AppScrollDown)),
                      NavigationRailDestination(
                          icon: const Icon(CupertinoIcons.fullscreen),
                          label: Text(S.of(context).AppResize)),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.arrow_up_down_square,
                            color: Colors.black),
                        label: Text(S.of(context).AppRedirect),
                      ),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.back,
                            color: Colors.black),
                        label: Text(S.of(context).AppBack),
                      ),
                      NavigationRailDestination(
                        icon: const Icon(CupertinoIcons.refresh,
                            color: Colors.red),
                        label: Text(S.of(context).AppRefresh),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(thickness: 1, width: 1),
              // This is the main content.
              Expanded(
                child: WebView(
                  zoomEnabled: true,
                  initialUrl: 'http://$gameUrl',
                  userAgent:
                      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15',
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
                    return NavigationDecision.navigate;
                  },
                  onPageStarted: (String url) {
                    print('Page started loading: $url');
                  },
                  onPageFinished: (String url) {
                    print('Page finished loading: $url');
                    setState(() {
                      if (url.endsWith(gameUrl) && needAutoRedirect) {
                        print('is game origin url');
                        HapticFeedback.lightImpact();
                        __controller.runJavascript(
                            '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                      }
                    });
                  },
                  gestureNavigationEnabled: true,
                  backgroundColor: CupertinoColors.extraLightBackgroundGray,
                ),
              ),
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
