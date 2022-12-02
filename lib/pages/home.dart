import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants.dart';
import '../generated/l10n.dart';

late bool inKancolleWindow;
late bool autoAdjusted;
late bool gameLoadCompleted;
double kWebviewHeight = 0.0;
double kWebviewWidth = 0.0;
bool allowNavi = true;

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late String defaultUA;
  late double deviceWidth;

  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    defaultUA = kSafariUA;
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
      defaultUA = kChromeUA;
      WebView.platform = SurfaceAndroidWebView();
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
      defaultUA = kSafariUA;
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Row(
      children: <Widget>[
        SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: IntrinsicHeight(
            child: AppRightSideControls(_controller.future),
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
                zoomEnabled: true,
                initialUrl: 'http://$kGameUrl',
                userAgent: defaultUA,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onProgress: (int progress) {
                  print('WebView is loading (progress : $progress%)');
                },
                javascriptChannels: <JavascriptChannel>{
                  _toasterJavascriptChannel(context),
                },
                navigationDelegate: (NavigationRequest request) async {
                  print('allowing navigation to $request');
                  if (Platform.isIOS) {
                    if (request.url.contains(
                        "/kcs2/index.php?api_root=/kcsapi&voice_root=/kcs/")) {
                      Fluttertoast.showToast(
                          msg:
                              S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                      setState(() {
                        gameLoadCompleted = true;
                        inKancolleWindow = true;
                      });
                      HapticFeedback.mediumImpact();
                      autoAdjustWindow(_controller.future);
                    }
                  } else if (Platform.isAndroid) {
                    //chrome can't detect /kcs2/.....
                    if (request.url.startsWith("http://osapi.dmm.com")) {
                      Fluttertoast.showToast(
                          msg:
                              S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                      setState(() {
                        gameLoadCompleted = true;
                        inKancolleWindow = true;
                      });
                      HapticFeedback.mediumImpact();
                      autoAdjustWindow(_controller.future);
                    }
                  }

                  if (request.url.startsWith("http://osapi.dmm.com") ||
                      request.url.contains(
                          "www.dmm.com/netgame/social/-/gadgets/=/app_id=854854")) {
                    Fluttertoast.showToast(msg: "navigation to game page");
                    if (!allowNavi) {
                      Fluttertoast.showToast(msg: "navigation is block");
                      return NavigationDecision.prevent;
                    }
                  }
                  return NavigationDecision.navigate;
                },
                onPageStarted: (String url) {
                  print('Page started loading: $url');
                  setState(() {
                    if (url.endsWith(kGameUrl)) {
                      inKancolleWindow = false;
                      autoAdjusted = false;
                    } else if (url.startsWith("http://osapi.dmm.com")) {
                      inKancolleWindow = true;
                      autoAdjusted = false;
                    }
                  });
                },
                onPageFinished: (String url) async {
                  print('Page finished loading: $url');
                  if (url.endsWith(kGameUrl)) {
                    print('is game origin url');
                    HapticFeedback.lightImpact();
                    _controller.future
                        .then((controller) async => await controller.runJavascript(
                            '''window.open("http:"+gadgetInfo.URL,'_blank');'''))
                        .whenComplete(() => () {
                              Fluttertoast.showToast(
                                  msg: S.current.KCViewFuncMsgAutoGameRedirect);
                              print("HTTP Redirect success");
                              setState(() {
                                inKancolleWindow = true;
                              });
                            });
                  }
                },
                gestureNavigationEnabled: true,
                backgroundColor: CupertinoColors.extraLightBackgroundGray,
              ),
            ),
          ),
        ),
      ],
    );
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

class AppRightSideControls extends StatelessWidget {
  const AppRightSideControls(this._webViewControllerFuture, {Key? key})
      : super(key: key);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return NavigationRail(
          labelType: NavigationRailLabelType.all,
          backgroundColor: Colors.black, // For Debug
          selectedIndex: 0,
          groupAlignment: 0,
          onDestinationSelected: (int index) async {
            HapticFeedback.heavyImpact();
            if (!webViewReady) {
              return;
            }
            switch (index) {
              case 0:
                allowNavi = true;
                controller!.loadUrl("http://$kGameUrl");
                break;
              case 1:
                controller!.scrollBy(0, -1);
                break;
              case 2:
                controller!.scrollBy(0, 1);
                break;
              case 3:
                if (!gameLoadCompleted) {
                  Fluttertoast.showToast(msg: "Game not load complete yet");
                  return;
                } else {
                  await autoAdjustWindow(_webViewControllerFuture);
                }
                break;
              case 4:
                if (!inKancolleWindow) {
                  String? currentUrl = await controller!.currentUrl();
                  if (currentUrl.toString().endsWith(kGameUrl)) {
                    // May be HTTPS or HTTP
                    allowNavi = true;
                    await controller.runJavascript(
                        '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                    inKancolleWindow = true;
                  }
                  Fluttertoast.showToast(
                      msg: S.current.KCViewFuncMsgAutoGameRedirect);
                  print("HTTP Redirect success");
                } else {
                  Fluttertoast.showToast(msg: "Already in game window!");
                  print("HTTP Redirect fail");
                }
                print("inKancolleWindow: $inKancolleWindow");
                break;
              case 5:
                allowNavi = true;
                if (await controller!.canGoBack()) {
                  await controller.goBack();
                }
                break;
              case 6:
                allowNavi = true;
                controller!.reload();
                break;
            }
          },
          destinations: [
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.home),
              selectedIcon: const Icon(CupertinoIcons.home, color: Colors.blue),
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
                icon:
                    const Icon(CupertinoIcons.down_arrow, color: Colors.white),
                label: Text(S.of(context).AppScrollDown,
                    style: TextStyle(color: Colors.white))),
            NavigationRailDestination(
                icon:
                    const Icon(CupertinoIcons.fullscreen, color: Colors.white),
                label: Text(S.of(context).AppResize,
                    style: TextStyle(color: Colors.white))),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.arrow_up_down_square,
                  color: Colors.white),
              label: Text(S.of(context).AppRedirect,
                  style: TextStyle(color: Colors.white)),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.back, color: Colors.white),
              label: Text(S.of(context).AppBack,
                  style: TextStyle(color: Colors.white)),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.refresh, color: Colors.red),
              label: Text(S.of(context).AppRefresh,
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
}

Future<bool> autoAdjustWindow(
  Future<WebViewController> webViewControllerFuture,
) async {
  //Adjust Kancolle window
  if (inKancolleWindow && !autoAdjusted) {
    int getWebviewSizeCount = 0;
    do {
      await webViewControllerFuture.then((controller) => () {
            controller
                .runJavascriptReturningResult('''window.innerHeight;''').then(
                    (value) => kWebviewHeight = double.parse(value));
            controller
                .runJavascriptReturningResult('''window.innerWidth;''').then(
                    (value) => kWebviewWidth = double.parse(value));
          });

      if (kWebviewHeight == 0.0 || kWebviewWidth == 0.0) {
        await Future.delayed(const Duration(seconds: 2));
      } else {
        getWebviewSizeCount = 99;
      }
      print("obtaining webview size");
      getWebviewSizeCount++;
    } while (getWebviewSizeCount < 5);
    var resizeScale = 1.0;
    if (kWebviewHeight != null && kWebviewWidth != null) {
      resizeScale = getResizeScale(kWebviewHeight, kWebviewWidth);
      autoAdjusted = true;
    } else {
      print("autoAdjustWindow fail");
      return false;
    }
    await webViewControllerFuture
        .then((controller) => () async {
              await controller.runJavascript(
                  '''document.getElementById("spacing_top").style.display = "none";''');
              await controller.runJavascript(
                  '''document.getElementById("sectionWrap").style.display = "none";''');
              await controller.runJavascript(
                  '''document.getElementById("flashWrap").style.backgroundColor = "black";''');
              await controller.runJavascript(
                  '''document.body.style.backgroundColor = "black";''');

              if (Platform.isIOS) {
                await controller.runJavascript(
                    //Scale to correct size(ios webkit)
                    '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
              } else if (Platform.isAndroid) {
                await controller.runJavascript(
                    //Scale to correct size(android chrome)
                    '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
              }
            })
        .whenComplete(() => () {
              Fluttertoast.showToast(
                  msg: S.current.FutureAutoAdjustWindowSuccess);
              print("Auto adjust success");
              allowNavi = false;
              return true;
            });
  }
  print("autoAdjustWindow fail");
  return false;
}

getResizeScale(double height, double width) {
  //Get Kancolle iframe resize scale
  var scale = (height * width) / kKancollePixel;
  if (scale < 0.5) {
    scale = 1 - scale;
    return sqrt(scale);
  } else {
    while (kKancolleWidth * scale > kWebviewWidth ||
        kKancolleHeight * scale > kWebviewHeight) {
      scale = scale - 0.05;
    }
    return scale;
  }
}
