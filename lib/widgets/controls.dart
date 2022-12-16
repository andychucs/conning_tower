import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';
import '../generated/l10n.dart';
import '../helper.dart';
import '../pages/home.dart';
import 'kcwebview.dart';

class AppLeftSideControls extends StatelessWidget {
  AppLeftSideControls(
      this._webViewControllerFuture, CookieManager? cookieManager,
      {Key? key, required this.notifyParent})
      : cookieManager = cookieManager ?? CookieManager(),
        super(key: key);
  final Function() notifyParent;
  final Future<WebViewController> _webViewControllerFuture;
  late final CookieManager cookieManager;

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
          selectedIndex: 0,
          groupAlignment: 0,
          onDestinationSelected: (int index) async {
            HapticFeedback.heavyImpact();
            if (!webViewReady) {
              return;
            }
            switch (index) {
              case 0:
                allowNavi = true;
                controller!.loadUrl("http://$kGameUrl");
                break;
              case 1:
                if (!gameLoadCompleted) {
                  Fluttertoast.showToast(msg: "Game not load complete yet");
                  return;
                } else {
                  await autoAdjustWindow(controller!);
                }
                break;
              case 2:
                if (!inKancolleWindow) {
                  String? currentUrl = await controller!.currentUrl();
                  if (currentUrl.toString().endsWith(kGameUrl)) {
                    // May be HTTPS or HTTP
                    allowNavi = true;
                    await controller.runJavascript(
                        '''window.open("http:"+gadgetInfo.URL,'_blank');''');
                    inKancolleWindow = true;
                  }
                  Fluttertoast.showToast(
                      msg: S.current.KCViewFuncMsgAutoGameRedirect);
                  print("HTTP Redirect success");
                } else {
                  Fluttertoast.showToast(msg: "Already in game window!");
                  print("HTTP Redirect fail");
                }
                print("inKancolleWindow: $inKancolleWindow");
                break;
              case 3:
                if (bottomPadding) {
                  bottomPadding = false;
                } else {
                  bottomPadding = true;
                }
                notifyParent();
                break;
              case 4:
                controller!.scrollBy(0, -1);
                break;
              case 5:
                controller!.scrollBy(0, 1);
                break;
              case 6:
                allowNavi = true;
                if (await controller!.canGoBack()) {
                  await controller.goBack();
                }
                break;
              case 7:
                allowNavi = true;
                controller!.reload();
                break;
              case 8:
                if (await KCWebViewState().clearCookie()) {
                  Fluttertoast.showToast(msg: "Clear cookie");
                }
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
              icon: const Icon(CupertinoIcons.fullscreen),
              label: Text(S.of(context).AppResize),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.arrow_up_down_square),
              label: Text(
                S.of(context).AppRedirect,
                textAlign: TextAlign.center,
              ),
            ),
            NavigationRailDestination(
              icon: const Icon(CupertinoIcons.square_arrow_up_fill),
              label: Text(S.of(context).AppBottomSafe),
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
                CupertinoIcons.refresh,
                color: CupertinoColors.destructiveRed,
              ),
              label: Text(S.of(context).AppRefresh),
            ),
            NavigationRailDestination(
              icon: const Icon(
                CupertinoIcons.delete_solid,
                color: CupertinoColors.destructiveRed,
              ),
              label: Text("Clear Cookie"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _onClearCookies(BuildContext context) async {
    final bool hadCookies = await cookieManager.clearCookies();
    String message = 'There were cookies. Now, they are gone!';
    if (!hadCookies) {
      message = 'There are no cookies.';
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  Future<void> _onListCookies(
      WebViewController controller, BuildContext context) async {
    final String cookies =
        await controller.runJavascriptReturningResult('document.cookie');
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
    await controller.runJavascript('caches.keys()'
        // ignore: missing_whitespace_between_adjacent_strings
        '.then((cacheKeys) => JSON.stringify({"cacheKeys" : cacheKeys, "localStorage" : localStorage}))'
        '.then((caches) => Toaster.postMessage(caches))');
  }

  Future<void> _onClearCache(
      WebViewController controller, BuildContext context) async {
    await controller.clearCache();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Cache cleared.'),
    ));
  }
}
