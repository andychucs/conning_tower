import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class KCWebView extends StatefulWidget {
  const KCWebView(this.webViewController, {super.key});

  final Completer<InAppWebViewController> webViewController;

  @override
  State<StatefulWidget> createState() => KCWebViewState();
}

class KCWebViewState extends State<KCWebView> {
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewSettings webViewSetting = InAppWebViewSettings(
    javaScriptEnabled: true,
    useShouldInterceptRequest: true,
    userAgent:
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36",
  );
  //InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      key: webViewKey,
      initialSettings: webViewSetting,
      initialUrlRequest: URLRequest(
          url: WebUri(
              "https://www.dmm.com/netgame/social/application/-/detail/=/app_id=854854")),
      onWebViewCreated: (InAppWebViewController controller) {
        widget.webViewController.complete(controller);
        WebMessageListener kcListener= WebMessageListener(jsObjectName: "kcMessage",
          // onPostMessage: (message, sourceOrigin, isMainFrame, replyProxy) {
          //   kancolleMessageHandle(message!);
          // }
        );
        controller.addWebMessageListener(kcListener);
      },
      onLoadStop: (controller,uri){
        if(uri.toString().contains("app_id=854854")){
          print("autoscale");
          controller.injectJavascriptFileFromAsset(assetFilePath: "assets/js/gameAutoFitAndroid.js");
        }
      },
      shouldInterceptRequest: (
          controller,
          WebResourceRequest request,
          ) async {
        // if (request.url.path.contains("/kcs2/js/main.js")) {
        //   Future<WebResourceResponse?> customResponse = interceptRequest(request);
        //   return customResponse;
        // }
        return null;
      },
    );
  }
}