import 'dart:collection';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/providers/web_info_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWebView extends ConsumerStatefulWidget {
  const AppWebView({super.key});
  @override
  AppWebViewState createState() => AppWebViewState();
}

class AppWebViewState extends ConsumerState<AppWebView> {
  // late String defaultUA;
  final GlobalKey webViewKey = GlobalKey();
  double progress = 0;

  static get defaultUA {
    if (Platform.isAndroid) {
      return kChromeUA;
    } else if (Platform.isIOS) {
      return kSafariUA;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    String customUA = settings.customUA;

    InAppWebViewSettings webViewSetting = InAppWebViewSettings(
        javaScriptEnabled: true,
        userAgent: customUA.isNotEmpty ? customUA : defaultUA,
        preferredContentMode: UserPreferredContentMode.DESKTOP,
        //Allow window.open JS
        javaScriptCanOpenWindowsAutomatically: true,
        //Android intercept kancolle API
        useShouldInterceptRequest: true,
        isElementFullscreenEnabled: false,
        mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
        supportZoom: deviceType != DeviceType.iPad,
        upgradeKnownHostsToHTTPS: false,
    );

    String homeUrl = getHomeUrl(settings.customHomeUrl, settings.enableAutoLoadHomeUrl);
    // final urlController = ref.watch(urlProvider);
    final webController = ref.watch(webControllerProvider);
    debugPrint("rebuild web");
    // final inAppWebViewControllerState = ref.watch(webViewControllerProvider);
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: LayoutBuilder(builder: (context, constraints) {
        // debugPrint("rate: ${(constraints.maxWidth / constraints.maxHeight)/(5/3)}");
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            InAppWebView(
              key: webViewKey,
              initialSettings: webViewSetting,
              initialUrlRequest: URLRequest(url: WebUri(homeUrl), httpShouldHandleCookies: true),
              initialUserScripts: UnmodifiableListView([
                if (settings.useDMMCookieModify) dmmCookieScript,
                if (settings.useKancolleListener && settings.kancolleListenerType == 0) kancolleUserScript,
                if (settings.useKancolleListener) alignUserScript,
              ]),
              onWebViewCreated: (InAppWebViewController controller) {
                webController.setController(controller);
                // ref.read(webViewControllerProvider.notifier).setController(controller);
                // urlController.setWebViewController(controller);
                webController.onWebviewCreate();
              },
              onLoadStart: (controller, uri) async {
                print('Page started loading: $uri');
                // urlController.setCurrentUrl(uri.toString());
                // urlController.resetResponseUrls();
                await webController.onLoadStart(uri!);
                // var uri = Uri.parse(uri);
              },
              onLoadStop: (controller, uri) {
                webController.onLoadStop(uri!);
              },
              onTitleChanged: (controller, title) {
                ref
                    .watch(webInfoProvider.notifier)
                    .update((state) => state.copyWith(title: title ?? ''));
              },
              // onZoomScaleChanged: (controller, oldScale, newScale) async {
              //   debugPrint("onZoomScaleChanged $oldScale, $newScale");
              // },
              onConsoleMessage: (controller, consoleMessage) {
                log(consoleMessage.message);
              },
              onNavigationResponse: (controller, response) async {
                await webController.onNavigationResponse(response);
                return NavigationResponseAction.ALLOW;
              },
              onContentSizeChanged:
                  (controller, oldContentSize, newContentSize) async {
                debugPrint(
                    "onContentSizeChanged $oldContentSize, $newContentSize");
                await webController.onContentSizeChanged();
              },
              shouldInterceptRequest: (
                controller,
                WebResourceRequest request,
              ) async {
                if (settings.kancolleListenerType == 1) {
                  return webController.onShouldInterceptRequest(request);
                }
                return null;
              },
              onProgressChanged: (controller, progress) {
                setState(() {
                  this.progress = progress / 100;
                });
                webController.onProgressChanged(progress);
              },
              onReceivedHttpError: (controller, request, response) {
                // print("error");
                // print(request);
                // print(response);
              },
              onReceivedError: (controller, request, response) {
                // print("error");
                // print(request);
                // print(response);
              },
            ),
            progress < 1.0
                ? LinearProgressIndicator(
                    value: progress,
                    color: CupertinoColors.systemBlue.resolveFrom(context),
                    backgroundColor: Colors.transparent,
                  )
                : Container(),
          ],
        );
      }),
    );
  }
}
