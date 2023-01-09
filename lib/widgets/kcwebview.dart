import 'dart:async';
import 'dart:io';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../generated/l10n.dart';

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
    userAgent: kSafariUA,
    preferredContentMode: UserPreferredContentMode.DESKTOP,
    //Allow window.open JS
    javaScriptCanOpenWindowsAutomatically: true,
    //Android intercept kancolle API
    useShouldInterceptRequest: true,
    isElementFullscreenEnabled: false
  );

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 5/3,child: InAppWebView(
      key: webViewKey,
      initialSettings: webViewSetting,
      initialUrlRequest: URLRequest(
          url: WebUri.uri(home)),
      onWebViewCreated: (InAppWebViewController controller) {
        widget.webViewController.complete(controller);

        if(Platform.isAndroid){ //Listen Kancolle API
          WebMessageListener kcListener= WebMessageListener(jsObjectName: "kcMessage",
              onPostMessage: (message, sourceOrigin, isMainFrame, replyProxy) {
                // kancolleMessageHandle(message!);
              }
          );
          controller.addWebMessageListener(kcListener);
        }

      },
      onLoadStart: (controller,uri){
        inKancolleWindow = false;
        autoAdjusted = false;
        gameLoadCompleted = false;
      },
      onLoadStop: (controller,uri){
        if(Platform.isIOS){
          if(uri!.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854')){
            controller.evaluateJavascript(source: '''window.open("http:"+gadgetInfo.URL,'_blank');''');
          }else if(uri.host == 'osapi.dmm.com'){
            Fluttertoast.showToast(
                msg: S.current.KCViewFuncMsgAutoGameRedirect);
            inKancolleWindow = true;
            gameLoadCompleted = true;
            Fluttertoast.showToast(
                msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
            HapticFeedback.mediumImpact();
            if(enableAutoScale){
              autoAdjustWindow(controller);
            }
          }
        }else{
          if(uri!.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854')){
            inKancolleWindow = true;
            gameLoadCompleted = true;
            Fluttertoast.showToast(
                msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
            HapticFeedback.mediumImpact();
            if(enableAutoScale){
              autoAdjustWindowV2(controller);
            }
          }
        }
      },
      onZoomScaleChanged: (controller,oldScale,newScale) async {
        var ScrollY = await controller.getScrollY();
        debugPrint("ScrollY:$ScrollY");
        await controller.evaluateJavascript(
            source: '''document.getElementById("spacing_top").style.display = "none";''');
        await controller.evaluateJavascript(
            source: '''document.getElementById("sectionWrap").style.display = "none";''');
        controller.scrollBy(x: 0, y: 0 - ScrollY!);
      },
      onCreateWindow: (controller,uri){
        return true as Future<bool>;
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
    ),);
  }
}