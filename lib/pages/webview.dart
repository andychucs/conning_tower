import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/webview_provider.dart';
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

  static get defaultUA {
    if (Platform.isAndroid) {
      return kChromeUA;
    } else if (Platform.isIOS) {
      return kSafariUA;
    }
  }

  @override
  void initState() {
    beforeRedirect = false;
    super.initState();
  }

  InAppWebViewSettings webViewSetting = InAppWebViewSettings(
    javaScriptEnabled: true,
    userAgent: customUA.isNotEmpty ? customUA : defaultUA,
    preferredContentMode: UserPreferredContentMode.DESKTOP,
    //Allow window.open JS
    javaScriptCanOpenWindowsAutomatically: true,
    //Android intercept kancolle API
    useShouldInterceptRequest: true,
    isElementFullscreenEnabled: false,
  );

  @override
  Widget build(BuildContext context) {
    String homeUrl = getHomeUrl();
    // final urlController = ref.watch(urlProvider);
    final webController = ref.watch(webControllerProvider);
    debugPrint("rebuild web");
    // final inAppWebViewControllerState = ref.watch(webViewControllerProvider);
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // debugPrint("rate: ${(constraints.maxWidth / constraints.maxHeight)/(5/3)}");
          return InAppWebView(
            key: webViewKey,
            initialSettings: webViewSetting,
            initialUrlRequest: URLRequest(url: WebUri(homeUrl)),
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
            onZoomScaleChanged: (controller, oldScale, newScale) async {
              debugPrint("onZoomScaleChanged $oldScale, $newScale");
            },
            onConsoleMessage: (controller, consoleMessage) {
              debugPrint(consoleMessage.message);
            },
            onNavigationResponse: (controller, response) async {
              await webController.onNavigationResponse(response);
              return NavigationResponseAction.ALLOW;
            },
            onContentSizeChanged: (controller, oldContentSize, newContentSize) {
              debugPrint("onContentSizeChanged $oldContentSize, $newContentSize");
              webController.onContentSizeChanged();
            },
            shouldInterceptRequest: (
              controller,
              WebResourceRequest request,
            ) async {
              return webController.onShouldInterceptRequest(request);
            },
            onReceivedHttpError: (controller , request, response) {
              print("error");
              print(request);
              print(response);
            },
            onReceivedError: (controller , request, response) {
              print("error");
              print(request);
              print(response);
            },
          );
        }
      ),
    );
  }
}
