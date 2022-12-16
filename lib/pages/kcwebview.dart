import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';
import '../generated/l10n.dart';
import '../helper.dart';
import 'home.dart';

class KCWebView extends StatefulWidget {
  const KCWebView(this.controller, {super.key});
  final Completer<WebViewController> controller;

  @override
  State<StatefulWidget> createState() => KCWebViewState();
}

class KCWebViewState extends State<KCWebView> {
  late String defaultUA;
  final CookieManager _cookieManager = CookieManager();
  @override
  void initState() {
    super.initState();
    defaultUA = kSafariUA;
    if (Platform.isAndroid) {
      defaultUA = kChromeUA;
    } else if (Platform.isIOS) {
      defaultUA = kSafariUA;
    }
  }

  Future<bool> clearCookie() {
    return _cookieManager.clearCookies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget.controller.future,
        builder:
            (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
          final WebViewController? controller = snapshot.data;
          return WebView(
            initialUrl: 'http://$kGameUrl',
            userAgent: defaultUA,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              widget.controller.complete(webViewController);
            },
            gestureNavigationEnabled: true,
            backgroundColor: CupertinoColors.extraLightBackgroundGray,
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
                      msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                  setState(() {
                    gameLoadCompleted = true;
                    inKancolleWindow = true;
                  });
                  HapticFeedback.mediumImpact();
                  await autoAdjustWindow(controller!);
                }
              } else if (Platform.isAndroid) {
                //chrome can't detect /kcs2/.....
                if (request.url.startsWith("http://osapi.dmm.com")) {
                  Fluttertoast.showToast(
                      msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                  setState(() {
                    gameLoadCompleted = true;
                    inKancolleWindow = true;
                  });
                  HapticFeedback.mediumImpact();
                  await autoAdjustWindow(controller!);
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
                await controller!.runJavascript(
                    '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                Fluttertoast.showToast(
                    msg: S.current.KCViewFuncMsgAutoGameRedirect);
                print("HTTP Redirect success");
                setState(() {
                  inKancolleWindow = true;
                });
              }
            },
          );
        });
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
