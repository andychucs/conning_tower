import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../generated/l10n.dart';
import '../helper.dart';
import '../widgets/dailog.dart';
import 'home.dart';

class ToolsPage extends StatelessWidget {
  ToolsPage(this.controller, WebViewCookieManager? cookieManager,
      {Key? key, required this.notifyParent})
      : cookieManager = cookieManager ?? WebViewCookieManager(),
        super(key: key);

  final Function() notifyParent;
  final WebViewController controller;
  late final WebViewCookieManager cookieManager;

  Future<void> _onClearCache(
      BuildContext context, WebViewController controller) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppClearCache.replaceAll('\n', ''),
              isNormal: true);
        });
    if (value ?? false) {
      allowNavi = true;
      await controller.clearCache();
      Fluttertoast.showToast(msg: S.current.AppLeftSideControlsClearCache);
    }
  }

  Future<void> _onClearCookies(BuildContext context) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppClearCookie, isNormal: true);
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
      await autoAdjustWindowV2(controller);
    } else {
      Fluttertoast.showToast(
          msg: S.current.KCViewFuncMsgNaviGameLoadNotCompleted);
    }
  }

  Future<void> _onMuteGame(WebViewController controller) async {
    await controller.runJavaScript('''document.cookie=
    "kcs_options=vol_bgm%3D0%3Bvol_se%3D0%3Bvol_voice%3D0%3Bv_be_left%3D1%3Bv_duty%3D1;expires=Thu, 1-Jan-2099 00:00:00 GMT;path=/;domain=dmm.com"
	''');
    Fluttertoast.showToast(msg: S.current.MsgMuteGame);
  }

  Future<void> _onUnmuteGame(WebViewController controller) async {
    await controller.runJavaScript('''	document.cookie=
    "kcs_options=vol_bgm%3D30%3Bvol_se%3D40%3Bvol_voice%3D60%3Bv_be_left%3D1%3Bv_duty%3D1;expires=Thu, 1-Jan-2099 00:00:00 GMT;path=/;domain=dmm.com"''');
    Fluttertoast.showToast(msg: S.current.MsgUnmuteGame);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      useInheritedMediaQuery: true,
      home: CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxIsScrolled) {
            return [
              CupertinoSliverNavigationBar(
                largeTitle: Text(S.current.ToolsButton),
              ),
            ];
          },
          body: SettingsList(
            sections: [
              SettingsSection(
                title: const Text('Web'),
                tiles: [
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.delete),
                    title:
                        Text(S.of(context).AppClearCache.replaceAll('\n', '')),
                    onPressed: (context) {
                      HapticFeedback.heavyImpact();
                      _onClearCache(context, controller);
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.square_arrow_left),
                    title: Text(S.of(context).AppClearCookie),
                    onPressed: (context) {
                      HapticFeedback.heavyImpact();
                      _onClearCookies(context);
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('Game Sound'),
                tiles: [
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.volume_down),
                    title: Text(S.of(context).GameUnmute),
                    onPressed: (context) {
                      HapticFeedback.heavyImpact();
                      _onUnmuteGame(controller);
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.volume_off),
                    title: Text(S.of(context).GameMute),
                    onPressed: (context) {
                      HapticFeedback.heavyImpact();
                      _onMuteGame(controller);
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('Game Screen'),
                tiles: [
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.fullscreen),
                    title: Text(S.of(context).AppResize),
                    onPressed: (context) {
                      HapticFeedback.heavyImpact();
                      _onAdjustWindow(controller);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
