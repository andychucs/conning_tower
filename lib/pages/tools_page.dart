import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../generated/l10n.dart';
import '../helper.dart';
import '../widgets/dailog.dart';
import 'home.dart';

class ToolsPage extends StatelessWidget {
  ToolsPage(this._webViewControllerFuture, CookieManager? cookieManager,
      {Key? key, required this.notifyParent})
      : cookieManager = cookieManager ?? CookieManager(),
        super(key: key);

  final Function() notifyParent;
  final Future<WebViewController> _webViewControllerFuture;
  late final CookieManager cookieManager;

  Future<void> _onClearCache(BuildContext context, WebViewController controller) async {
    bool? value = await showDialog(context: context, builder: (context){
      return CustomAlertDialog(msg: S.current.AppClearCache.replaceAll('\n', ''),isNormal: true);
    });
    if (value ?? false) {
      allowNavi = true;
      await controller.clearCache();
      Fluttertoast.showToast(msg: S.current.AppLeftSideControlsClearCache);
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

  Future<void> _onAdjustWindow(WebViewController controller) async {
    if (gameLoadCompleted) {
      await autoAdjustWindow(controller);
    } else {
      Fluttertoast.showToast(
          msg: S.current.KCViewFuncMsgNaviGameLoadNotCompleted);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return CupertinoApp(
          theme: const CupertinoThemeData(primaryColor: CupertinoColors.systemGrey),
          home: CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                largeTitle: Text(S.of(context).ToolsButton),
              ),
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CupertinoButton.filled(
                      onPressed: () {
                        if (!webViewReady) {
                          Fluttertoast.showToast(
                              msg: S.of(context).AppLeftSideControlsNotReady);
                          return;
                        }
                        _onClearCache(context, controller!);
                      },
                      child: Text(S.of(context).AppClearCache.replaceAll('\n', '')),
                    ),
                    CupertinoButton.filled(
                      onPressed: () {
                        if (!webViewReady) {
                          Fluttertoast.showToast(
                              msg: S.of(context).AppLeftSideControlsNotReady);
                          return;
                        }
                        _onClearCookies(context);
                      },
                      child: Text(S.of(context).AppClearCookie),
                    ),
                    CupertinoButton.filled(
                      onPressed: () {
                        if (!webViewReady) {
                          Fluttertoast.showToast(
                              msg: S.of(context).AppLeftSideControlsNotReady);
                          return;
                        }
                        _onAdjustWindow(controller!);
                      },
                      child: Text(S.of(context).AppResize),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
