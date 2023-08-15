import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/navigator_provider.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class Controls extends ConsumerStatefulWidget {
  Controls(CookieManager? cookieManager,
      {Key? key, required this.notifyParent, required this.orientation})
      : cookieManager = cookieManager ?? CookieManager.instance(),
        super(key: key);
  final Function() notifyParent;
  late final CookieManager cookieManager;
  final Orientation orientation;

  @override
  ConsumerState<Controls> createState() => _ControlsState();
}

class _ControlsState extends ConsumerState<Controls> {
  int _selectedIndex = 0;

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

  void _onItemTapped(int index) {
    setState(() {
      if (![2,3,4].contains(index)) {
        _selectedIndex = index;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    final cp = ref.watch(webControllerProvider);
    final flnp = ref.watch(functionLayerNavigatorProvider);

    _selectedIndex = naviItems[flnp.index];

    if (widget.orientation == Orientation.portrait) {
      return BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: ((value) async {
          HapticFeedback.mediumImpact();
          if (!cp.isInit) return;
          _onTap(value, context, cp.controller, flnp);
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
            label: S.of(context).AboutButton,
          ),
        ],
      );
    }
    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      selectedIndex: _selectedIndex,
      groupAlignment: 0,
      onDestinationSelected: (int index) async {
        HapticFeedback.mediumImpact();
        if (!cp.isInit) return;
        _onTap(index, context, cp.controller, flnp);
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
    int value,
    BuildContext context,
    InAppWebViewController controller,
    FunctionLayerNavigator navigator,
  ) {
    _onItemTapped(value);
    var func = funcMap[value];
    switch (func) {
      case ConFunc.navi2About:
        selectedIndex = 1;
        widget.notifyParent();
        navigator.changeIndex(3);
        break;
      case ConFunc.navi2Tool:
        selectedIndex = 1;
        widget.notifyParent();
        navigator.changeIndex(1);
        break;
      case ConFunc.navi2Settings:
        selectedIndex = 1;
        widget.notifyParent();
        navigator.changeIndex(2);
        break;
      case ConFunc.loadHome:
        if (selectedIndex != 0) {
          selectedIndex = 0;
          navigator.changeIndex(0);
          widget.notifyParent();
        } else {
          _onLoadHome(context, controller);
        }
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
      if (homeUrl == kLocalHomeUrl) {
        await ref.read(webControllerProvider.notifier).startLocalServer();
      }
      await controller.loadUrl(urlRequest: URLRequest(url: WebUri(homeUrl)));
    }
  }
}
