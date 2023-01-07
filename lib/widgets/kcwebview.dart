import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class KCWebView extends StatefulWidget {
  const KCWebView(this.webViewController, {super.key});

  final InAppWebViewController webViewController;

  @override
  State<StatefulWidget> createState() => KCWebViewState();
}

class KCWebViewState extends State<KCWebView> {
  @override
  void initState() {
    super.initState();
  }
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewSettings webViewSetting = InAppWebViewSettings(
    javaScriptEnabled: true,
    useShouldInterceptRequest: true,
    userAgent:
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36",
  );
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child:  InAppWebView(
        key: webViewKey,
        initialSettings: webViewSetting,
        initialUrlRequest: URLRequest(
            url: WebUri(
                "https://www.dmm.com/netgame/social/application/-/detail/=/app_id=854854")),
        onWebViewCreated: (InAppWebViewController controller) {
          controller = widget.webViewController;
        },
        onLoadStop: (controller,uri){
          print(uri);
          if(uri.toString().contains("app_id=854854")){
            controller.injectJavascriptFileFromAsset(assetFilePath: "assets/js/gameAutoFitAndroid.js");
          }
        },
        onConsoleMessage: (controll,message){
          //Only print Kancolle data
          if(message.message.contains("api_result")){
            print("console:$message");
          }
        },
        shouldInterceptRequest: (
            controller,
            WebResourceRequest request,
            ) async {
          // if (request.url.path.contains("/kcs2/js/main.js")) {
          //   print('androidShouldInterceptRequest: $request');
          //   // Future<WebResourceResponse?> customResponse = interceptRequest(request);
          //   return customResponse;
          // }
          return null;
        },
      ),
    );
  }
}
