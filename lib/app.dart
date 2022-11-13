
import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String gameUrl =
    'http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854';

class ConnTowerApp extends StatefulWidget {
  const ConnTowerApp({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => ConnTowerHomePage();
}

class ConnTowerHomePage extends State<ConnTowerApp> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  late WebViewController __controller;
  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      theme: const CupertinoThemeData(),
      home: Scaffold(
        body: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Conning Tower'),
            leading: Icon(CupertinoIcons.plus),
            trailing: Icon(CupertinoIcons.fullscreen),
          ),
          child: CupertinoPageScaffold(
                child: SafeArea(
                  left: false,
                    bottom: false,
                    right: false,
                    child: WebView(
                  initialUrl: "http://www.baidu.com",
                  userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15',
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
                    if (request.url.startsWith('https://www.youtube.com/')) {
                      print('blocking navigation to $request}');
                      return NavigationDecision.prevent;
                    }
                    print('allowing navigation to $request');
                    return NavigationDecision.navigate;
                  },
                  onPageStarted: (String url) {
                    print('Page started loading: $url');
                  },
                  onPageFinished: (String url) {
                    print('Page finished loading: $url');
                    setState(() {
                      if(url.startsWith('https://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/')) {
                        print('is game origin url');
                        __controller.runJavascript('''window.open("http:"+gadgetInfo.URL,'_blank');''');
                      }
                    });

                  },
                  gestureNavigationEnabled: true,
                  backgroundColor: CupertinoColors.extraLightBackgroundGray,
                ))),
        ),
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