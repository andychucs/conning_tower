import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'webview_provider.g.dart';
part 'webview_provider.freezed.dart';

@freezed
class WebControllerState with _$WebControllerState{
  factory WebControllerState({
    required InAppWebViewController? controller,
    required bool isInit,
    required WebUri currUrl,
    required List<WebUri> currPageUrls,
    required bool isScreenResize
}) = _WebControllerState;
}

// controller provider by riverpod code generation, develop with run 'flutter pub run build_runner watch'
@riverpod
class WebController extends _$WebController {
  late InAppWebViewController controller;
  bool isInit = false;
  WebUri currUrl = WebUri('');
  List<WebUri> currPageUrls = [];
  bool isScreenResize = false;
  String kancolleData = '';

  @override
  WebController build() {
    return this;
  }

  void setController(InAppWebViewController _) {
    state.controller = _;
    state.isInit = true;
  }

  void setCurrUrl(WebUri _) {
    state.currUrl = _;
  }

  void setCurrUrlWithUri(Uri _) {
    state.currUrl = WebUri.uri(_);
  }

  void updateCurrPageUrls(WebUri _) {
    state.currPageUrls.add(_);
    navigateToResponseUrlIfNeeded();
  }

  void updateCurrPageUrlsWithUri(Uri _) {
    state.currPageUrls.add(WebUri.uri(_));
    navigateToResponseUrlIfNeeded();
  }

  void clearCurrPageUrls() {
    state.currPageUrls.clear();
  }

  Future<void> onNavigationResponse(NavigationResponse response) async {
    WebUri? currentUrl = await state.controller.getUrl();
    state.setCurrUrl(currentUrl!);
    final url = response.response?.url;
    if (url != null) {
      state.updateCurrPageUrls(url);
    }
    debugPrint(currentUrl.toString());
    debugPrint(response.response.toString());
  }

  Future<void> startLocalServer() async {
    if (!localhostServer.isRunning()) {
      await localhostServer.start();
    }
  }

  Future<void> closeLocalServer() async {
    if (localhostServer.isRunning()) {
      await localhostServer.close();
    }
  }

  Future<void> onLoadStart(WebUri uri) async {
    state.setCurrUrl(uri);
    state.clearCurrPageUrls();
    if (uri.rawValue.startsWith("http://localhost:8080")) {
      await startLocalServer();
    } else {
      await closeLocalServer();
    }

    beforeRedirect = false;
    inKancolleWindow = false;
    if (uri.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854')) {
      beforeRedirect = true;
      autoAdjusted = false;
    } else if (uri.host == 'osapi.dmm.com') {
      inKancolleWindow = true;
      autoAdjusted = false;
    }
  }

  Future<void> onLoadStop(WebUri uri) async {
    if (safeNavi) {
      safeNavi = false;
    }
    if (uri.rawValue.startsWith("http://localhost:8080")) {
      await controller.evaluateJavascript(
        source:
            "input.value='$customHomeUrl';input.placeholder='🔍 ${S.current.AssetsHtmlSearchBarText}';goButton.textContent='${S.current.AssetsHtmlSearchBarGo}';",
      );
    }
    if ((uri.path.startsWith('/netgame/social/-/gadgets/=/app_id=854854') &&
            Platform.isAndroid) ||
        (uri.host.startsWith("osapi.dmm.com") && Platform.isIOS)) {
      inKancolleWindow = true;
      gameLoadCompleted = true;
      Fluttertoast.showToast(msg: S.current.KCViewFuncMsgNaviGameLoadCompleted);
      HapticFeedback.mediumImpact();
      await screenResize();
    }
  }

  Future<void> navigateToResponseUrlIfNeeded() async {
    debugPrint("UrlController change: ");
    debugPrint("currentUrl: ${state.currUrl}");
    debugPrint("responseUrls: ${state.currPageUrls}");
    if (Platform.isAndroid) return;
    if (!(currUrl.path.startsWith(home.path) ||
        currUrl.host.startsWith("osapi.dmm.com"))) {
      debugPrint("currUrl.path: ${currUrl.path} home.path: ${home.path}");
      return;
    }
    debugPrint(
        "safeNavi:$safeNavi enableAutoProcess:$enableAutoProcess state.currPageUrls.isNotEmpty:${state.currPageUrls.isNotEmpty}");
    if (!safeNavi && enableAutoProcess && state.currPageUrls.isNotEmpty) {
      debugPrint("latest responseUrl: ${state.currPageUrls.last}");
      for (final url in currPageUrls.reversed) {
        if (url.host == "osapi.dmm.com" && currUrl.path.startsWith(home.path)) {
          await Future.delayed(const Duration(seconds: 1));
          // Delay to allow time for Webview to load previous page
          if (url.scheme == 'https') {
            debugPrint("replace scheme ${url.replace(scheme: 'http')}");
            state.controller.loadUrl(
                urlRequest:
                    URLRequest(url: WebUri.uri(url.replace(scheme: 'http'))));
            Fluttertoast.showToast(
                msg: S.current.KCViewFuncMsgAutoGameRedirect);
          } else {
            state.controller.loadUrl(urlRequest: URLRequest(url: url));
            Fluttertoast.showToast(
                msg: S.current.KCViewFuncMsgAutoGameRedirect);
          }
        }
      }
    }
  }

  Future<void> onContentSizeChanged() async {
    if (state.currUrl.host == 'osapi.dmm.com' && Platform.isIOS) {
      await screenResize();
    }
  }

  Future<void> screenResize() async {
    if (!state.isScreenResize) {
      await Future.delayed(const Duration(seconds: 1));
      state.isScreenResize = true;
      await autoAdjustWindowV2(controller);
      state.isScreenResize = false;
    }
  }

  void saveScreenShot() async {
    Uint8List? imageBytes = await state.controller.takeScreenshot();
    if (imageBytes != null) {
      final result =
          await ImageGallerySaver.saveImage(imageBytes, quality: 100);
      if (result['isSuccess']) {
        Fluttertoast.showToast(msg: "📸️");
      } else {
        Fluttertoast.showToast(msg: S.current.ScreenshotFailDialog);
      }
      debugPrint('Image saved to gallery: $result');
    }
  }

  void _kancolleMessageHandle(String message) {
    if (true) {
      const start = "conning_tower_responseURL:";
      const end = "conning_tower_readyState:";
      final startIndex = message.indexOf(start);
      final endIndex = message.indexOf(end, startIndex + start.length);
      String responseURL =
          message.substring(startIndex + start.length, endIndex);
      print("responseURL:");
      print(responseURL);
    }
    if (true) {
      const start = "conning_tower_readyState:";
      const end = "conning_tower_responseText:";
      final startIndex = message.indexOf(start);
      final endIndex = message.indexOf(end, startIndex + start.length);
      String readyState =
          message.substring(startIndex + start.length, endIndex);
      print("readyState:");
      print(readyState);
    }
    if (true) {
      const start = "conning_tower_responseText:";
      const end = "conning_tower_END";
      final startIndex = message.indexOf(start);
      final endIndex = message.indexOf(end, startIndex + start.length);
      String responseText =
          message.substring(startIndex + start.length, endIndex);
      String result = responseText.replaceAll('svdata=', '');
      kancolleData = jsonDecode(result).toString();
      print("KC JSON:");
      print(jsonDecode(result));
    }
  }

  void onWebviewCreate() {
    if (Platform.isAndroid) {
      //Listen Kancolle API
      WebMessageListener kcListener = WebMessageListener(
          jsObjectName: "kcMessage",
          onPostMessage: (message, sourceOrigin, isMainFrame, replyProxy) {
            _kancolleMessageHandle(message!);
          });
      controller.addWebMessageListener(kcListener);
    }
  }

  Future<WebResourceResponse?>? onShouldInterceptRequest(
      WebResourceRequest request) {
    if (request.url.path.contains("/kcs2/js/main.js")) {
      Future<WebResourceResponse?> customResponse = _interceptRequest(request);
      return customResponse;
    }
    return null;
  }

  Future<WebResourceResponse?> _interceptRequest(
      WebResourceRequest orgRequest) async {
    var kcResponse =
        await http.get(orgRequest.url, headers: orgRequest.headers);
    return WebResourceResponse(
        contentEncoding: 'gzip',
        contentType: 'application/javascript',
        data: convertStringToUint8List(kcResponse.body + kInterceptJS),
        headers: kcResponse.headers,
        reasonPhrase: kcResponse.reasonPhrase,
        statusCode: kcResponse.statusCode);
  }
}

@Deprecated("""
controller provider by ChangeNotifier, suggest use riverpod code generation [WebController]
""")
final urlProvider =
    ChangeNotifierProvider.autoDispose((ref) => UrlController());

@Deprecated("""
controller provider by ChangeNotifier, suggest use riverpod code generation [WebController]
""")
class UrlController with ChangeNotifier {
  String currentUrl = '';
  List<String> responseUrls = [];
  InAppWebViewController? _webViewController;

  void setWebViewController(InAppWebViewController controller) {
    _webViewController = controller;
  }

  Future<void> navigateToResponseUrlIfNeeded() async {
    debugPrint("UrlController change: ");
    debugPrint("currentUrl: $currentUrl");
    if (!safeNavi && responseUrls.isNotEmpty) {
      debugPrint("latest responseUrl: $responseUrls");
      if (currentUrl == "http://localhost:8080/") {
        final urlToLoad = "https://www.google.com";
        notifyListeners();
        await Future.delayed(Duration(
            seconds:
                1)); // Delay to allow time for Webview to load previous page
        _webViewController?.loadUrl(
            urlRequest: URLRequest(url: WebUri(urlToLoad)));
      }
    }
  }

  void setCurrentUrl(String url) {
    currentUrl = url;
    notifyListeners();
    navigateToResponseUrlIfNeeded();
  }

  void resetResponseUrls() {
    responseUrls.clear();
    notifyListeners();
  }

  void addResponseUrl(String url) {
    responseUrls.add(url);
    notifyListeners();
    navigateToResponseUrlIfNeeded();
  }
}

@Deprecated("""
controller provider by StateNotifierProvider, suggest use riverpod code generation [WebController]
""")
final webViewControllerProvider =
    StateNotifierProvider((ref) => InAppWebViewControllerNotifier());

@Deprecated("""
controller provider by StateNotifierProvider, suggest use riverpod code generation [WebController]
""")
class InAppWebViewControllerNotifier
    extends StateNotifier<InAppWebViewControllerState> {
  InAppWebViewControllerNotifier() : super(InAppWebViewControllerState());

  void setController(InAppWebViewController controller) {
    state.controller = controller;
  }

  void saveScreenShot() async {
    Uint8List? imageBytes = await state.controller?.takeScreenshot();
    if (imageBytes != null) {
      final result = await ImageGallerySaver.saveImage(imageBytes);
      debugPrint('Image saved to gallery: $result');
    }
  }
}

class InAppWebViewControllerState {
  InAppWebViewController? controller;
}
