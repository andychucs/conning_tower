import 'dart:async';
import 'dart:io';

import 'package:conning_tower/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';
import '../generated/l10n.dart';
import '../helper.dart';
import '../pages/home.dart';

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
    beforeRedirect = false;
    defaultUA = kSafariUA;
    if (Platform.isAndroid) {
      defaultUA = kChromeUA;
      WebView.platform = SurfaceAndroidWebView();
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
          String homeUrl = "data:text/html;base64,PGh0bWw+"; // <html>
          return AspectRatio(
            aspectRatio: 5 / 3,
            child: WebView(
              initialUrl: homeUrl,
              userAgent: customUA.isNotEmpty ? customUA : defaultUA,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                widget.controller.complete(webViewController);
              },
              gestureNavigationEnabled: true,
              backgroundColor: CupertinoColors.extraLightBackgroundGray,
              onProgress: (int progress) async {
                debugPrint('WebView is loading (progress : $progress%)');
                if (enableAutoProcess &&
                    beforeRedirect &&
                    !inKancolleWindow &&
                    progress >= 90) {
                  if (Platform.isIOS) {
                    await controller!
                        .runJavascript(
                            '''window.open("http:"+gadgetInfo.URL,'_blank');''')
                        .whenComplete(() => () {
                              Fluttertoast.showToast(
                                  msg: S.current.KCViewFuncMsgAutoGameRedirect);
                              debugPrint("HTTP Redirect success");
                              setState(() {
                                inKancolleWindow = true;
                              });
                            })
                        .onError(
                          (error, stackTrace) => () async {
                            Future.delayed(
                              const Duration(seconds: 1),
                              () async {
                                await controller
                                    .runJavascript('''window.open("http:"+gadgetInfo.URL,'_blank');''').whenComplete(
                                        () => () {
                                              Fluttertoast.showToast(
                                                  msg: S.current
                                                      .KCViewFuncMsgAutoGameRedirect);
                                              debugPrint(
                                                  "HTTP Redirect success");
                                              setState(() {
                                                inKancolleWindow = true;
                                              });
                                            });
                              },
                            );
                          },
                        );
                  }
                  if (Platform.isAndroid) {
                    Fluttertoast.showToast(
                        msg: S.current.KCViewFuncMsgNaviGameLoadCompleted);
                    setState(() {
                      gameLoadCompleted = true;
                      inKancolleWindow = true;
                    });
                    HapticFeedback.mediumImpact();
                    await autoAdjustWindowV2(controller!);
                  }
                }
              },
              javascriptChannels: <JavascriptChannel>{
                _toasterJavascriptChannel(context),
              },
              navigationDelegate: (NavigationRequest request) async {
                print('allowing navigation to $request');
                var uri = Uri.parse(request.url);

                if (!loadedDMM && uri.host.endsWith('dmm.com')) {
                  localStorage.setBool('loadedDMM', true);
                }

                if (uri.path.startsWith(
                        '/netgame/social/-/gadgets/=/app_id=854854') &&
                    !safeNavi &&
                    allowNavi) {
                  beforeRedirect = true;
                  inKancolleWindow = false;
                  autoAdjusted = false;
                }

                if (Platform.isIOS) {
                  if (uri.path.endsWith('/kcs2/index.php')) {
                    Fluttertoast.showToast(
                        msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                    setState(() {
                      gameLoadCompleted = true;
                      inKancolleWindow = true;
                    });
                    HapticFeedback.mediumImpact();
                    await autoAdjustWindowV2(controller!);
                  }
                } else if (Platform.isAndroid) {
                  //chrome can't detect /kcs2/.....
                  if (uri.host == 'osapi.dmm.com') {
                    Fluttertoast.showToast(
                        msg: S.of(context).KCViewFuncMsgNaviGameLoadCompleted);
                    setState(() {
                      gameLoadCompleted = true;
                      inKancolleWindow = true;
                    });
                    HapticFeedback.mediumImpact();
                    await autoAdjustWindowV2(controller!);
                  }
                }

                if (uri.host == 'osapi.dmm.com' ||
                    uri.path.startsWith(
                        '/netgame/social/-/gadgets/=/app_id=854854')) {
                  Fluttertoast.showToast(msg: S.current.KCViewFuncMsgGameNavi);
                  if (!allowNavi) {
                    Fluttertoast.showToast(
                        msg: S.current.KCViewFuncMsgGameNaviBlock);
                    return NavigationDecision.prevent;
                  }
                }
                return NavigationDecision.navigate;
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
                var uri = Uri.parse(url);
                // Fluttertoast.showToast(
                //     msg: S.current.KCViewFuncMsgPageStart(uri.host));
                setState(() {
                  beforeRedirect = false;
                  if (uri.path.startsWith(
                          '/netgame/social/-/gadgets/=/app_id=854854') &&
                      !safeNavi) {
                    beforeRedirect = true;
                    inKancolleWindow = false;
                    autoAdjusted = false;
                  } else if (uri.host == 'osapi.dmm.com') {
                    inKancolleWindow = true;
                    autoAdjusted = false;
                  }
                  safeNavi = false;
                });
              },
              onPageFinished: (String url) async {
                print('Page finished loading: $url');
                if (url == homeUrl) {
                  await controller!.loadFlutterAsset('assets/www/home.html');
                }
                if (url.endsWith('assets/www/home.html')) {
                  await controller!.runJavascript(
                      "input.value='$customHomeBase64Url';input.placeholder='🔍 ${S.of(context).AssetsHtmlSearchBarText}';goButton.textContent='${S.of(context).AssetsHtmlSearchBarGo}';");
                }
                // var uri = Uri.parse(url);
                // Fluttertoast.showToast(msg: S.current.KCViewFuncMsgPageFinished(uri.host));
              },
            ),
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
