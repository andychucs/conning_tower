import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'generated/l10n.dart';

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

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(S.of(context).AppName),
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () async {
                    HapticFeedback.heavyImpact();
                    if (await __controller.canGoBack()) {
                      await __controller.goBack();
                    }
                  },
                  icon: const Icon(CupertinoIcons.back)),
              IconButton(
                  onPressed: () {
                    HapticFeedback.heavyImpact();
                    __controller.reload();
                  },
                  icon: const Icon(
                    CupertinoIcons.refresh,
                    size: 26.0,
                  )),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () async {
                    HapticFeedback.heavyImpact();
                    __controller.loadUrl(gameUrl);
                  },
                  icon: const Icon(
                    CupertinoIcons.home,
                    size: 30.0,
                  )),
              IconButton(
                  onPressed: () {
                    HapticFeedback.heavyImpact();
                    __controller.runJavascript(
                        '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                  },
                  icon: const Icon(CupertinoIcons.arrow_up_down_square))
            ],
          ),
        ),
        child: CupertinoPageScaffold(
            child: SafeArea(
                // left: false,
                bottom: false,
                // right: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          screenSize.width / screenSize.height > 5.0 / 3.0
                              ? screenSize.width / 9.8
                              : 0),
                  child: WebView(
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
                ))),
      ),
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
