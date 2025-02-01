import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/kancolle/raw_data.dart';
import 'package:conning_tower/models/feature/web_message_data.dart';
import 'package:conning_tower/pages/webview.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/raw_data_provider.dart';
import 'package:conning_tower/providers/web_info_provider.dart';
import 'package:conning_tower/utils/toast.dart';
import 'package:conning_tower/widgets/webview_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utils/asset_loader.dart';

part 'webview_provider.freezed.dart';
part 'webview_provider.g.dart';

final gameUrlPath = Uri.parse(kGameUrl).path;
final gameAppUrlPath = Uri.parse(kGameUrlApp).path;

UserScript get kancolleUserScript => UserScript(
    source: AssetLoader.kcInjectJS,
    injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
    forMainFrameOnly: false,
    groupName: "KC");

UserScript get alignUserScript => UserScript(
    source: AssetLoader.kcAlignJS, injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START);

UserScript get screenshotUserScript => UserScript(
    source: AssetLoader.kcScreenshotJS, injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START);

UserScript get dmmCookieScript => UserScript(
    source: getDMMCookieString(),
    injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
    forMainFrameOnly: false,
    groupName: "DMM");

String getDMMCookieString() {
  var now = DateTime.now();
  var nextYearDate = now.add(Duration(days: 365));
  // Convert to JavaScript Date.toUTCString()
  String expires = "${DateFormat('E, dd MMM yyyy HH:mm:ss').format(nextYearDate)} GMT";
  String script = '''
document.cookie='cklg=welcome;expires=$expires;domain=.dmm.com;path=/'
document.cookie='cklg=welcome;expires=$expires;domain=.dmm.com;path=/netgame/'
document.cookie='cklg=welcome;expires=$expires;domain=.dmm.com;path=/netgame_s/'
document.cookie='ckcy=1;expires=$expires;domain=osapi.dmm.com;path=/'
document.cookie='ckcy=1;expires=$expires;domain=203.104.209.7;path=/'
document.cookie='ckcy=1;expires=$expires;domain=www.dmm.com;path=/netgame/'
document.cookie='ckcy=1;expires=$expires;domain=log-netgame.dmm.com;path=/'
document.cookie='ckcy=1;expires=$expires;domain=.dmm.com;path=/'
document.cookie='ckcy=1;expires=$expires;domain=.dmm.com;path=/netgame/'
document.cookie='ckcy=1;expires=$expires;domain=.dmm.com;path=/netgame_s/'
''';
  return script;
}
@freezed
class WebControllerState with _$WebControllerState {
  factory WebControllerState(
      {required InAppWebViewController? controller,
      required bool isInit,
      required WebUri currUrl,
      required List<WebUri> currPageUrls,
      required bool isScreenResize}) = _WebControllerState;
}

// controller provider by riverpod code generation, develop with run 'flutter pub run build_runner watch'
@riverpod
class WebController extends _$WebController {
  late InAppWebViewController controller;
  bool newLoad = false;
  bool isInit = false;
  WebUri currUrl = WebUri('');
  List<WebUri> currPageUrls = [];
  bool isScreenResize = false;
  CookieManager cookieManager = CookieManager.instance();

  bool inKancolleWindow = false;

  bool inKancolleOsapiWindow = false;

  bool autoAdjusted = false;

  bool needScale = false;

  bool dmmCookieModified = false;

  get customHomeUrl => ref.watch(settingsProvider).customHomeUrl;

  get enableAutoProcess => ref.watch(settingsProvider).enableAutoProcess;

  bool get loadedDMM => ref.watch(settingsProvider).loadedDMM;

  bool get useKancolleListener =>
      ref.watch(settingsProvider).useKancolleListener;

  /// disable dmm cookie modify, need more test
  bool get useDMMCookieModify => false;

  bool get kancolleAutoScrollDownOnLoad => ref.watch(settingsProvider).kancolleAutoScrollDownOnLoad;

  bool get inKancolle => inKancolleWindow || inKancolleOsapiWindow;

  @override
  WebController build() {
    return this;
  }

  void setController(InAppWebViewController _) {
    state.controller = _;
    state.isInit = true;
  }

  void setNeedScale(bool needScale) {
    log('LargeScreen:$needScale');
    state.needScale = needScale;
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
    ref.read(webInfoProvider.notifier).update((state) => state.copyWith(
        url: currentUrl.rawValue,
        statusCode: response.response?.statusCode ?? 100));
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

  Future<void> onLoadStart(WebUri uri, {bool useHttpForKancolle = false}) async {
    newLoad = true;
    state.setCurrUrl(uri);
    state.clearCurrPageUrls();
    if (uri.rawValue.startsWith(kLocalHomeUrl)) {
      await startLocalServer();
    } else {
      await closeLocalServer();
    }
    if (useDMMCookieModify && uri.path.contains("/foreign/") && uri.host.endsWith(kDMMDomain)) {
      state.controller.loadUrl(urlRequest: URLRequest(url: WebUri(kGameUrlApp)));
    }

    if (!loadedDMM && uri.host.endsWith(kDMMDomain)) {
      ref.watch(settingsProvider.notifier).setBool('loadedDMM', true);
    }
    inKancolleWindow = false;
    autoAdjusted = false;
    if (uri.path.startsWith(gameUrlPath) || uri.path.startsWith(gameAppUrlPath)) {
      log("game load start");
      ref.watch(settingsProvider.notifier).setBool('loadedKancolle', true);
    } else if (uri.host == kDMMOSAPIDomain) {
      inKancolleOsapiWindow = true;
    }

    // make kancolle url always use http
    if (uri.path.startsWith(gameUrlPath) || uri.path.startsWith(gameAppUrlPath)) {
      log("useHttpForKancolle:$useHttpForKancolle");
      if (uri.scheme == 'https' && useHttpForKancolle) {
        var httpUri = uri.replace(scheme: 'http');
        state.controller.loadUrl(urlRequest: URLRequest(url: WebUri.uri(httpUri)));
      }
    }

  }

  Future<void> manageUserScriptOnDMM(bool enable) async {
    if (useDMMCookieModify && enable && !dmmCookieModified) {
      await controller.addUserScript(userScript: dmmCookieScript);
      dmmCookieModified = true;
    }
    if (!enable) {
      await controller.removeUserScriptsByGroupName(groupName: "DMM");
      dmmCookieModified = false;
    }
  }

  Future<void> onLoadStop(WebUri uri) async {
    // var cookies = await cookieManager.getCookies(url: uri);
    // ref
    //     .read(webInfoProvider.notifier)
    //     .update((state) => state.copyWith(url: uri.rawValue, cookies: cookies));
    if (safeNavi) {
      safeNavi = false;
    }
    if (uri.rawValue.startsWith(kLocalHomeUrl)) {
      await controller.evaluateJavascript(
        source:
            "input.value='$customHomeUrl';input.placeholder='🔍 ${S.current.AssetsHtmlSearchBarText}';goButton.textContent='${S.current.AssetsHtmlSearchBarGo}';",
      );
    }

  }

  Future<void> onProgressChanged(int progress) async {
    log("onProgressChanged: $progress");
    if (!newLoad) {
      return;
    }
    if (progress >= 80) {
      newLoad = false;
      final uri = await state.controller.getUrl();

      final favicons = await controller.getFavicons();
      if (favicons.isNotEmpty) {
        for (final favicon in favicons) {
          if (favicon.width != null) {
            ref.watch(webInfoProvider.notifier).update((state) => state.copyWith(url: uri!.rawValue, favicon: favicon));
          }
        }
      }
      if (uri!.path.startsWith(gameUrlPath) || uri.path.startsWith(gameAppUrlPath)) {
        // available align on url is app_id=854854 (Android) or  osapi.dmm.com (Android & iOS)
        inKancolleWindow = true;
        Toast.showSuccess(title: S.current.KCViewFuncMsgNaviGameLoadCompleted);
        HapticFeedback.mediumImpact();
        if(enableAutoProcess) await adjustWindow();
      }
    }
  }

  Future<void> navigateToResponseUrlIfNeeded() async {
    debugPrint("UrlController change: ");
    debugPrint("currentUrl: ${state.currUrl}");
    debugPrint("responseUrls: ${state.currPageUrls}");
    if (Platform.isAndroid) return;
    if (!(currUrl.path.startsWith(Uri.parse(kGameUrl).path) ||
        currUrl.host.startsWith(kDMMOSAPIDomain))) {
      debugPrint(
          "currUrl.path: ${currUrl.path} home.path: ${Uri.parse(kGameUrl).path}");
      return;
    }
    debugPrint(
        "safeNavi:$safeNavi enableAutoProcess:$enableAutoProcess state.currPageUrls.isNotEmpty:${state.currPageUrls.isNotEmpty}");
    // if (!safeNavi && enableAutoProcess && state.currPageUrls.isNotEmpty) {
    //   debugPrint("latest responseUrl: ${state.currPageUrls.last}");
    //   var url = state.currPageUrls.last;
    //   if (url.host == kDMMOSAPIDomain &&
    //       currUrl.path.startsWith(Uri.parse(kGameUrl).path)) {
    //     await Future.delayed(const Duration(seconds: 1));
    //     // Delay to allow time for Webview to load previous page
    //     if (url.scheme == 'https') {
    //       debugPrint("replace scheme ${url.replace(scheme: 'http')}");
    //       state.controller.loadUrl(
    //           urlRequest:
    //               URLRequest(url: WebUri.uri(url.replace(scheme: 'http'))));
    //     } else {
    //       state.controller.loadUrl(urlRequest: URLRequest(url: url));
    //     }
    //     Toast.show(title: S.current.KCViewFuncMsgAutoGameRedirect);
    //   }
    // }
  }

  Future<void> onContentSizeChanged() async {
    log('onContentSizeChanged');
    await onScreenResize();
    if (inKancolleWindow || inKancolleOsapiWindow) {
      await controller.zoomBy(zoomFactor: 0.1, animated: true);
    }

    if (inKancolleWindow && kancolleAutoScrollDownOnLoad) {
      await tryHideSpacingTop();
    }
  }

  Future<void> onScreenResize() async {
    if ((inKancolleWindow || inKancolleOsapiWindow) && needScale && autoAdjusted) {
      await controller.evaluateJavascript(source: "window.resizeOnLargeScreen()");
    }
  }

  Future<void> windowAlign({bool needToast = false}) async {
    await controller.evaluateJavascript(source: "window.align()");
    log("windowAlign");
    if (needToast) {
      Toast.showSuccess(title: S.current.FutureAutoAdjustWindowSuccess);
    }
  }

  Future<void> windowUnAlign() async {
    log("windowUnAlign");
    await controller.evaluateJavascript(source: "window.unAlign()");
  }

  Future<void> saveScreenShot() async {
    if (!state.isInit) return;
    Uint8List? imageBytes = await state.controller.takeScreenshot();
    if (imageBytes != null) {
      final result =
          await ImageGallerySaver.saveImage(imageBytes, quality: 100);
      if (result['isSuccess']) {
        Toast.showSuccess(title: S.current.ScreenshotSuccessDialog);
      } else {
        Toast.showError(title: S.current.ScreenshotFailDialogTitle, description: S.current.ScreenshotFailDialogDesc);
      }
      debugPrint('Image saved to gallery: $result');
    }
  }

  void reload() {
    state.controller.reload();
  }

  Future<void> httpRedirect() async {
    await controller.injectJavascriptFileFromAsset(assetFilePath: httpRedirectJS);
    inKancolleOsapiWindow = true;
    Toast.show(title: S.current.KCViewFuncMsgAutoGameRedirect);
    log("HTTP Redirect success");
  }

  Future<void> adjustWindow() async {
    if (!autoAdjusted) {
      await windowAlign(needToast: true);
      autoAdjusted = true;
      await onScreenResize();
      if (inKancolleWindow && kancolleAutoScrollDownOnLoad) {
        await tryHideSpacingTop();
      }
    } else {
      await windowUnAlign();
      autoAdjusted = false;
    }
  }

  Future<void> resetZoom() async {
    await controller.zoomBy(zoomFactor: 0.1, animated: true);
  }

  // zoomIn is not implemented on iOS
  Future<void> zoomIn() async {
    await controller.zoomIn();
  }

  // zoomOut is not implemented on iOS
  Future<void> zoomOut() async {
    await controller.zoomOut();
  }

  Future<void> scrollToTop() async {
    await controller.scrollTo(x: 0, y: 0, animated: true);
  }

  Future<void> scrollUp() async {
    await controller.scrollBy(x: 0, y: -1, animated: true);
  }

  Future<void> scrollDown() async {
    await controller.scrollBy(x: 0, y: 1, animated: true);
  }

  Future<void> scrollByY(int y) async {
    await controller.scrollBy(x: 0, y: y, animated: true);
  }

  Future<void> tryHideSpacingTop() async {
    final gameFrameTop = await controller.evaluateJavascript(source: "document.getElementById('game_frame').getBoundingClientRect().top");
    if (gameFrameTop is num && gameFrameTop == 0) {
      await controller.evaluateJavascript(source: "window.scrollTo(0, 16)");
    }
  }

  Future<void> muteGame() async {
    await controller.injectJavascriptFileFromAsset(
        assetFilePath: muteKancolleJS);
    Toast.show(title: S.current.MsgMuteGame);
  }

  Future<void> unmuteGame() async {
    await controller.injectJavascriptFileFromAsset(
        assetFilePath: unMuteKancolleJS);
    Toast.show(title: S.current.MsgUnmuteGame);
  }

  void _kancolleMessageHandle(WebMessage message) {
    var json = jsonDecode(message.data);
    var messageData = WebMessageData.fromJson(json);

    // log("type: ${messageData.type}");
    // log("request: ${messageData.requestUrl}");
    // log("body: ${messageData.request}");
    // log("response: ${messageData.responseUrl}");
    // log("response_type: ${messageData.responseType}");
    // log("data: ${messageData.response}");

    if (messageData.responseUrl.contains("/kcsapi/") && messageData.type == "load") {
      final result = messageData.response?.replaceAll('svdata=', '');
      Map<String, dynamic> params = {};
      // make sure request body is a valid HTTP parameter string foo=bar&lorem=ipsum
      if (messageData.request != null && messageData.request!.contains('=')) {
        // load parameters as parameters
        params = parseRequestBody(messageData.request!);
      }
      ref.watch(rawDataProvider.notifier).update((state) => RawData.response(
          source: messageData.responseUrl, data: result ?? "", params: params, status: messageData.status ?? 200));
    }

    if (messageData.type == "error") {
      log("XHR Error: $messageData");
    }
  }

  Future<void> onWebviewCreate() async {
    if (useKancolleListener) {
      //Listen Kancolle API
      WebMessageListener kcListener = WebMessageListener(
        jsObjectName: "kcMessage",
        onPostMessage: (message, sourceOrigin, isMainFrame, replyProxy) {
          _kancolleMessageHandle(message!);
        },
      );
      // WebMessageListener kcCaptureListener = WebMessageListener(
      //   jsObjectName: "kcCapture",
      //   onPostMessage: (message, sourceOrigin, isMainFrame, replyProxy) {
      //     log("kcCapture: $message");
      //   },
      // );
      await controller.addWebMessageListener(kcListener);
      // await controller.addWebMessageListener(kcCaptureListener);
    }
  }

  Future<void> addKCUserScript() async {
    await controller.addUserScript(userScript: kancolleUserScript);
    await controller.addUserScript(userScript: alignUserScript);
  }

  Future<void> removeKCUserScript() async {
    await controller.removeUserScriptsByGroupName(groupName: "KC");
  }

  Future<void> manageKCUserScript(bool _) async {
    if (_) {
      await addKCUserScript();
    } else {
      await removeKCUserScript();
    }
    log("isUseUserScript:${controller.hasUserScript(userScript: kancolleUserScript)}");
  }

  Future<void> kancolleCookieModify() async {
    String script = getDMMCookieString();
    await controller.evaluateJavascript(source: script);
  }

  @Deprecated("use UserScript to Intercept")
  Future<WebResourceResponse?>? onShouldInterceptRequest(
      WebResourceRequest request) {
    if (useKancolleListener && request.url.path.contains("/kcs2/js/main.js")) {
      Future<WebResourceResponse?> customResponse = _interceptRequest(request);
      return customResponse;
    }
    return null;
  }

  @Deprecated("use UserScript to Intercept")
  Future<WebResourceResponse?> _interceptRequest(
      WebResourceRequest orgRequest) async {
    var kcResponse =
        await http.get(orgRequest.url, headers: orgRequest.headers);
    return WebResourceResponse(
        contentEncoding: 'gzip',
        contentType: 'application/javascript',
        data: convertStringToUint8List(kcResponse.body + AssetLoader.kcInjectJS),
        headers: kcResponse.headers,
        reasonPhrase: kcResponse.reasonPhrase,
        statusCode: kcResponse.statusCode);
  }
}

@freezed
class WebViewsState with _$WebViewsState {
  const factory WebViewsState({
    required Widget mainWebView,
    required List<WebViewTab> tabs,
  }) = _WebViewsState;
}

@riverpod
class WebViews extends _$WebViews {
  @override
  WebViewsState build() {
    return WebViewsState(mainWebView: AppWebView(key: GlobalKey()), tabs: []);
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
      if (currentUrl == kLocalHomeUrl) {
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
