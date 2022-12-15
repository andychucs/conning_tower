import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:conning_tower/pages/kcwebview.dart';
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
bool bottomPadding = false;

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late double deviceWidth;

  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
      WebView.platform = SurfaceAndroidWebView();
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceWidth = MediaQuery.of(context).size.width;
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Row(
      children: <Widget>[
        SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: IntrinsicHeight(
            child: AppLeftSideControls(
              _controller.future,
              notifyParent: () {
                setState(() {});
              },
            ),
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              bottom: bottomPadding ? deviceWidth / 10 : 0.0,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: deviceWidth,
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: KCWebView(_controller),
            ),
          ),
        ),
      ],
    );
  }
}

class AppLeftSideControls extends StatelessWidget {
  const AppLeftSideControls(this._webViewControllerFuture,
      {Key? key, required this.notifyParent})
      : super(key: key);
  final Function() notifyParent;
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
                if (!gameLoadCompleted) {
                  Fluttertoast.showToast(msg: "Game not load complete yet");
                  return;
                } else {
                  await autoAdjustWindow(controller!);
                }
                break;
              case 2:
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
              case 3:
                if (bottomPadding) {
                  bottomPadding = false;
                } else {
                  bottomPadding = true;
                }
                notifyParent();
                break;
              case 4:
                controller!.scrollBy(0, -1);
                break;
              case 5:
                controller!.scrollBy(0, 1);
                break;
              case 6:
                allowNavi = true;
                if (await controller!.canGoBack()) {
                  await controller.goBack();
                }
                break;
              case 7:
                allowNavi = true;
                controller!.reload();
                break;
            }
          },
          destinations: [
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.home),
              label: Text(
                S.of(context).AppHome,
              ),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.fullscreen),
              label: Text(S.of(context).AppResize),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.arrow_up_down_square),
              label: Text(
                S.of(context).AppRedirect,
                textAlign: TextAlign.center,
              ),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.square_arrow_up_fill),
              label: Text(S.of(context).AppBottomSafe),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.up_arrow),
              label: Text(S.of(context).AppScrollUp),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.down_arrow),
              label: Text(S.of(context).AppScrollDown),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.back),
              label: Text(S.of(context).AppBack),
            ),
            NavigationRailDestination(
              icon: const Icon(
                CupertinoIcons.refresh,
                color: CupertinoColors.destructiveRed,
              ),
              label: Text(S.of(context).AppRefresh),
            ),
          ],
        );
      },
    );
  }
}

Future<bool> autoAdjustWindow(
  WebViewController controller,
) async {
  //Adjust Kancolle window
  if (inKancolleWindow && !autoAdjusted) {
    int getWebviewSizeCount = 0;
    do {
      controller.runJavascriptReturningResult('''window.innerHeight;''').then(
          (value) => kWebviewHeight = double.parse(value));
      controller.runJavascriptReturningResult('''window.innerWidth;''').then(
          (value) => kWebviewWidth = double.parse(value));
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
    await controller.runJavascript(
        '''document.getElementById("spacing_top").style.display = "none";''');
    await controller.runJavascript(
        '''document.getElementById("sectionWrap").style.display = "none";''');
    await controller.runJavascript(
        '''document.getElementById("flashWrap").style.backgroundColor = "black";''');
    await controller
        .runJavascript('''document.body.style.backgroundColor = "black";''');

    if (Platform.isIOS) {
      await controller.runJavascript(
          //Scale to correct size(ios webkit)
          '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
    } else if (Platform.isAndroid) {
      await controller.runJavascript(//Scale to correct size(android chrome)
          '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
    }
    Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
    print("Auto adjust success");
    allowNavi = false;
    return true;
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
