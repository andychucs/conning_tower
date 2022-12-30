import 'package:conning_tower/widgets/dailog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';
import '../generated/l10n.dart';
import '../helper.dart';
import '../pages/home.dart';

enum ConFunc {
  adjustWindow,
  loadHome,
  httpRedirect,
  bottomUp,
  scrollUp,
  scrollDown,
  goBack,
  refresh,
  clearCookies,
  clearCache,
  doRequest,
  navi2About,
  navi2Tool,
  navi2Settings,
}

class AppLeftSideControls extends StatelessWidget {
  AppLeftSideControls(
      this._webViewControllerFuture, WebViewCookieManager? cookieManager,
      {Key? key, required this.notifyParent})
      : cookieManager = cookieManager ?? WebViewCookieManager(),
        super(key: key);
  final Function() notifyParent;
  final Future<WebViewController> _webViewControllerFuture;
  late final WebViewCookieManager cookieManager;

  final Map funcMap = {
    0: ConFunc.loadHome,
    1: ConFunc.httpRedirect,
    2: ConFunc.navi2Tool,
    3: ConFunc.bottomUp,
    4: ConFunc.refresh,
    5: ConFunc.scrollUp,
    6: ConFunc.scrollDown,
    7: ConFunc.goBack,
    8: ConFunc.navi2Settings,
    9: ConFunc.navi2About,
    // 1: ConFunc.adjustWindow,
    // 8: ConFunc.clearCookies,
    // 9: ConFunc.clearCache
  };

  final Map naviItems = {
    0:0,//loadHome
    1:2,//navi2Tool
    2:8,//navi2Settings
    3:9,//navi2About
  };

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return NavigationRail(
          labelType: NavigationRailLabelType.all,
          selectedIndex: naviItems[selectedIndex],
          groupAlignment: 0,
          onDestinationSelected: (int index) async {
            HapticFeedback.heavyImpact();
            var func = funcMap[index];
            if (!webViewReady) {
              Fluttertoast.showToast(
                  msg: S.of(context).AppLeftSideControlsNotReady);
              return;
            } else if (func == ConFunc.bottomUp) {}
            switch (func) {
              case ConFunc.navi2About:
                selectedIndex = 3;
                notifyParent();
                break;
              case ConFunc.navi2Tool:
                selectedIndex = 1;
                notifyParent();
                break;
              case ConFunc.navi2Settings:
                selectedIndex = 2;
                notifyParent();
                break;
              case ConFunc.loadHome:
                if (selectedIndex != 0) {
                  selectedIndex = 0;
                  notifyParent();
                } else {
                  _onLoadHome(context, controller!);
                }
                break;
              case ConFunc.adjustWindow:
                _onAdjustWindow(controller!);
                break;
              case ConFunc.httpRedirect:
                _onHttpRedirect(controller!);
                break;
              case ConFunc.bottomUp:
                _onBottomUp();
                break;
              case ConFunc.scrollUp:
                controller!.scrollBy(0, -1);
                break;
              case ConFunc.scrollDown:
                controller!.scrollBy(0, 1);
                break;
              case ConFunc.goBack:
                _onGoBack(controller!);
                break;
              case ConFunc.refresh:
                _onRefresh(context, controller!);
                break;
              case ConFunc.clearCookies:
                _onClearCookies(context);
                break;
              case ConFunc.clearCache:
                _onClearCache(context, controller!);
                break;
            }
          },
          destinations: [
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.home),
              label: Text(
                S.of(context).AppHome,
              ),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.rectangle_expand_vertical),
              label: Text(
                S.of(context).AppRedirect,
                textAlign: TextAlign.center,
              ),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.game_controller),
              label: Text(S.of(context).ToolsButton),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.rectangle_dock),
              label: Text(S.of(context).AppBottomSafe),
            ),
            NavigationRailDestination(
              icon: const Icon(
                CupertinoIcons.refresh,
                color: CupertinoColors.destructiveRed,
              ),
              label: Text(S.of(context).AppRefresh),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.up_arrow),
              label: Text(S.of(context).AppScrollUp),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.down_arrow),
              label: Text(S.of(context).AppScrollDown),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.back),
              label: Text(S.of(context).AppBack),
            ),
            NavigationRailDestination(
              icon: const Icon(
                CupertinoIcons.settings,
                color: CupertinoColors.systemYellow,
              ),
              label: Text(S.of(context).SettingsButton),
            ),
            NavigationRailDestination(
              icon: const Icon(
                CupertinoIcons.info,
                color: CupertinoColors.systemTeal,
              ),
              label: Text(
                S.of(context).AboutButton,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _onRefresh(BuildContext context, WebViewController controller) async {
    bool? value = await showDialog(context: context, builder: (context){
      return CustomAlertDialog(msg: S.current.AppRefresh,isNormal: true);
    });
    if (value ?? false) {
      allowNavi = true;
      await controller.reload();
    }
  }

  Future<void> _onGoBack(WebViewController controller) async {
    allowNavi = true;
    if (await controller.canGoBack()) {
      await controller.goBack();
    }
  }

  void _onBottomUp() {
    if (bottomPadding) {
      bottomPadding = false;
    } else {
      bottomPadding = true;
    }
    notifyParent();
  }

  Future<void> _onHttpRedirect(WebViewController controller) async {
    if (!inKancolleWindow) {
      String? currentUrl = await controller.currentUrl();
      if (currentUrl.toString().endsWith(kGameUrl)) {
        // May be HTTPS or HTTP
        allowNavi = true;
        await controller
            .runJavaScript('''window.open("http:"+gadgetInfo.URL,'_blank');''');
        inKancolleWindow = true;
      }
      Fluttertoast.showToast(msg: S.current.KCViewFuncMsgAutoGameRedirect);
      print("HTTP Redirect success");
    } else {
      Fluttertoast.showToast(msg: S.current.KCViewFuncMsgAlreadyGameRedirect);
      print("HTTP Redirect fail");
    }
    print("inKancolleWindow: $inKancolleWindow");
  }

  Future<void> _onAdjustWindow(WebViewController controller) async {
    if (gameLoadCompleted) {
      await autoAdjustWindow(controller);
    } else {
      Fluttertoast.showToast(
          msg: S.current.KCViewFuncMsgNaviGameLoadNotCompleted);
    }
  }

  Future<void> _onLoadHome(BuildContext context, WebViewController controller) async {
    bool? value = await showDialog(context: context, builder: (context){
      return CustomAlertDialog(msg: S.current.AppHome,isNormal: true);
    });
    if (value ?? false) {
      allowNavi = true;
      await controller.loadRequest(Uri.parse("http://$kGameUrl"));
    }
  }

  Future<void> _onClearCookies(BuildContext context) async {
    bool? value = await showDialog(context: context, builder: (context){
      return CustomAlertDialog(msg: S.current.AppClearCookie,isNormal: true);
    });
    if (value ?? false) {
      final bool hadCookies = await cookieManager.clearCookies();
      String message = S.current.AppLeftSideControlsLogoutSuccess;
      if (!hadCookies) {
        message = S.current.AppLeftSideControlsLogoutFailed;
      }
      Fluttertoast.showToast(msg: message);
    }
  }

  Future<void> _onListCookies(
      WebViewController controller, BuildContext context) async {
    final String cookies =
        await controller.runJavaScriptReturningResult('document.cookie') as String;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('Cookies:'),
          _getCookieList(cookies),
        ],
      ),
    ));
  }

  Widget _getCookieList(String cookies) {
    if (cookies == null || cookies == '""') {
      return Container();
    }
    final List<String> cookieList = cookies.split(';');
    final Iterable<Text> cookieWidgets =
        cookieList.map((String cookie) => Text(cookie));
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: cookieWidgets.toList(),
    );
  }

  Future<void> _onListCache(
      WebViewController controller, BuildContext context) async {
    await controller.runJavaScript('caches.keys()'
        // ignore: missing_whitespace_between_adjacent_strings
        '.then((cacheKeys) => JSON.stringify({"cacheKeys" : cacheKeys, "localStorage" : localStorage}))'
        '.then((caches) => Toaster.postMessage(caches))');
  }

  Future<void> _onClearCache(BuildContext context, WebViewController controller) async {
    bool? value = await showDialog(context: context, builder: (context){
      return CustomAlertDialog(msg: S.current.AppClearCache.replaceAll('\n', ''),isNormal: true);
    });
    if (value ?? false) {
      allowNavi = true;
      await controller.clearCache();
      final prefs = await SharedPreferences.getInstance(); //temporarily
      prefs.clear(); //temporarily
      Fluttertoast.showToast(msg: S.current.AppLeftSideControlsClearCache);
    }
  }
}
