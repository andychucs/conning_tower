import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ConFunc {
  adjustWindow,
  loadHome,
  httpRedirect,
  bottomUp,
  scrollUp,
  scrollDown,
  goBack,
  goForward,
  refresh,
  clearCookies,
  clearCache,
  doRequest,
  navi2About,
  navi2Tool,
  navi2Settings,
}

class Controls extends ConsumerWidget {
  Controls(CookieManager? cookieManager,
      {Key? key, required this.notifyParent, required this.orientation})
      : cookieManager = cookieManager ?? CookieManager.instance(),
        super(key: key);
  final Function() notifyParent;
  late final CookieManager cookieManager;
  final Orientation orientation;

  final Map funcMap = {
    0: ConFunc.loadHome,
    // 1: ConFunc.httpRedirect,
    1: ConFunc.navi2Tool,
    // 2: ConFunc.bottomUp,
    2: ConFunc.refresh,
    // 4: ConFunc.scrollUp,
    // 5: ConFunc.scrollDown,
    3: ConFunc.goBack,
    4: ConFunc.goForward,
    5: ConFunc.navi2Settings,
    6: ConFunc.navi2About,
    // 1: ConFunc.adjustWindow,
    // 8: ConFunc.clearCookies,
    // 9: ConFunc.clearCache
  };

  final Map naviItems = {
    0: 0, //loadHome
    1: 1, //navi2Tool
    2: 5, //navi2Settings
    3: 6, //navi2About
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cp = ref.watch(webControllerProvider);
          if (orientation == Orientation.portrait) {
            return BottomNavigationBar(
              showSelectedLabels: true,
              // showUnselectedLabels: true,
              currentIndex: naviItems[selectedIndex],
              unselectedItemColor: CupertinoColors.inactiveGray,
              selectedItemColor: Theme.of(context).primaryColor,
              onTap: ((value) async {
                HapticFeedback.mediumImpact();
                if (!cp.isInit) return;
                _onTap(value, context, cp.controller);
              }),
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(CupertinoIcons.home),
                  label: S.of(context).AppHome,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(CupertinoIcons.game_controller),
                  label: S.of(context).ToolsButton,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.refresh,
                    color: CupertinoColors.destructiveRed,
                  ),
                  label: S.of(context).AppControlsReload,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(CupertinoIcons.back),
                  label: S.of(context).AppBack,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(CupertinoIcons.forward),
                  label: S.of(context).AppForward,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.settings,
                  ),
                  label: S.of(context).SettingsButton,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.info,
                  ),
                  label: S.of(context).AboutButton.replaceAll('\n', ''),
                ),
              ],
            );
          }
          return NavigationRail(
            labelType: NavigationRailLabelType.all,
            selectedIndex: naviItems[selectedIndex],
            groupAlignment: 0,
            onDestinationSelected: (int index) async {
              HapticFeedback.mediumImpact();
              if (!cp.isInit) return;
              _onTap(index, context, cp.controller);
            },
            destinations: [
              NavigationRailDestination(
                icon: const Icon(CupertinoIcons.home),
                label: Text(
                  S.of(context).AppHome,
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(CupertinoIcons.game_controller),
                label: Text(S.of(context).ToolsButton),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  CupertinoIcons.refresh,
                  color: CupertinoColors.destructiveRed,
                ),
                label: Text(S.of(context).AppControlsReload),
              ),
              NavigationRailDestination(
                icon: const Icon(CupertinoIcons.back),
                label: Text(S.of(context).AppBack),
              ),
              NavigationRailDestination(
                icon: const Icon(CupertinoIcons.forward),
                label: Text(S.of(context).AppForward),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  CupertinoIcons.settings,
                ),
                label: Text(S.of(context).SettingsButton),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  CupertinoIcons.info,
                ),
                label: Text(
                  S.of(context).AboutButton,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
  }

  void _onTap(
      int value, BuildContext context, InAppWebViewController controller) {
    var func = funcMap[value];
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
          _onLoadHome(context, controller);
        }
        break;
      case ConFunc.adjustWindow:
        _onAdjustWindow(controller);
        break;
      case ConFunc.httpRedirect:
        _onHttpRedirect(controller);
        break;
      case ConFunc.bottomUp:
        _onBottomUp();
        break;
      case ConFunc.scrollUp:
        controller.scrollBy(x: 1, y: 0);
        break;
      case ConFunc.scrollDown:
        controller.scrollBy(x: 0, y: 1);
        break;
      case ConFunc.goBack:
        _onGoBack(controller);
        break;
      case ConFunc.goForward:
        _onGoForward(controller);
        break;
      case ConFunc.refresh:
        _onReload(context, controller);
        break;
      case ConFunc.clearCookies:
        _onClearCookies(context);
        break;
      case ConFunc.clearCache:
        _onClearCache(context, controller);
        break;
    }
  }

  Future<void> _onReload(
      BuildContext context, InAppWebViewController controller) async {
    safeNavi = false;
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppControlsReload, isNormal: true);
        });
    if (value ?? false) {
      await controller.reload();
    }
  }

  Future<void> _onGoBack(InAppWebViewController controller) async {
    safeNavi = true;
    if (await controller.canGoBack()) {
      await controller.goBack();
    }
  }

  Future<void> _onGoForward(InAppWebViewController controller) async {
    safeNavi = true;
    if (await controller.canGoForward()) {
      await controller.goForward();
    }
  }

  @Deprecated("Remove this func in Controls widget")
  void _onBottomUp() {
    if (bottomPadding) {
      bottomPadding = false;
    } else {
      bottomPadding = true;
    }
    notifyParent();
  }

  @Deprecated("Remove this func in Controls widget")
  Future<void> _onHttpRedirect(InAppWebViewController controller) async {
    if (!inKancolleWindow) {
      WebUri? currentUrl = await controller.getUrl();
      if (currentUrl!.path.startsWith(home.path)) {
        // May be HTTPS or HTTP
        await controller.injectJavascriptFileFromAsset(
            assetFilePath: httpRedirectJS);
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

  @Deprecated("Remove this func in Controls widget")
  Future<void> _onAdjustWindow(InAppWebViewController controller) async {
    if (gameLoadCompleted) {
      await autoAdjustWindowV2(controller, force: true);
    } else {
      Fluttertoast.showToast(
          msg: S.current.KCViewFuncMsgNaviGameLoadNotCompleted);
    }
  }

  Future<void> _onLoadHome(
      BuildContext context, InAppWebViewController controller) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(msg: S.current.AppHome, isNormal: true);
        });
    if (value ?? false) {
      String homeUrl = getHomeUrl();
      safeNavi = false;
      await controller.loadUrl(urlRequest: URLRequest(url: WebUri(homeUrl)));
    }
  }

  @Deprecated("Remove this func in Controls widget")
  Future<void> _onClearCookies(BuildContext context) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppClearCookie, isNormal: true);
        });
    if (value ?? false) {
      await cookieManager.deleteAllCookies();
      String message = S.current.AppControlsLogoutSuccess;
      Fluttertoast.showToast(msg: message);
    }
  }

  @Deprecated("Remove this func in Controls widget")
  Future<void> _onClearCache(
      BuildContext context, InAppWebViewController controller) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppClearCache.replaceAll('\n', ''),
              isNormal: true);
        });
    if (value ?? false) {
      await controller.clearCache();
      Fluttertoast.showToast(msg: S.current.AppControlsClearCache);
    }
  }
}
