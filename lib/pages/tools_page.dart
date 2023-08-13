import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/modal_sheets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:validators/validators.dart';

class ToolsPage extends ConsumerStatefulWidget {
  ToolsPage(CookieManager? cookieManager,
      {Key? key, required this.notifyParent, required this.reloadConfig})
      : cookieManager = cookieManager ?? CookieManager.instance(),
        super(key: key);

  final Function() notifyParent;
  late final CookieManager cookieManager;
  final Function() reloadConfig;

  @override
  ConsumerState<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends ConsumerState<ToolsPage> {
  late TextEditingController _uaTextController;
  late TextEditingController _urlTextController;

  @override
  void initState() {
    _uaTextController =
        TextEditingController(text: customUA.isNotEmpty ? customUA : kSafariUA);
    _urlTextController = TextEditingController(
        text: customHomeUrl.isNotEmpty ? customHomeUrl : '');
    super.initState();
  }

  void _resetTextController() {
    setState(() {
      _uaTextController = TextEditingController(
          text: customUA.isNotEmpty ? customUA : kSafariUA);
      _urlTextController = TextEditingController(
          text: customHomeUrl.isNotEmpty ? customHomeUrl : '');
    });
  }

  Future<void> _onHttpRedirect(InAppWebViewController controller) async {
    if (!inKancolleWindow) {
      WebUri? currentUrl = await controller.getUrl();
      if (currentUrl!.path.startsWith(home.path)) {
        // May be HTTPS or HTTP
        if (Platform.isIOS) {
          await controller.injectJavascriptFileFromAsset(
              assetFilePath: httpRedirectJS);
        }
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

  Future<void> _onClearCookies(BuildContext context) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
              msg: S.current.AppClearCookie, isNormal: true);
        });
    if (value ?? false) {
      await widget.cookieManager.deleteAllCookies();
      String message = S.current.AppControlsLogoutSuccess;
      Fluttertoast.showToast(msg: message);
    }
  }

  Future<void> _onAdjustWindow(InAppWebViewController controller) async {
    if (gameLoadCompleted) {
      bool flag = await autoAdjustWindowV2(controller, force: true);
      if (flag) {
        Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
      } else {
        Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowFail);
      }
    } else {
      Fluttertoast.showToast(
          msg: S.current.KCViewFuncMsgNaviGameLoadNotCompleted);
    }
  }

  Future<void> _onMuteGame(InAppWebViewController controller) async {
    await controller.injectJavascriptFileFromAsset(
        assetFilePath: muteKancolleJS);
    Fluttertoast.showToast(msg: S.current.MsgMuteGame);
  }

  Future<void> _onUnmuteGame(InAppWebViewController controller) async {
    await controller.injectJavascriptFileFromAsset(
        assetFilePath: unMuteKancolleJS);
    Fluttertoast.showToast(msg: S.current.MsgUnmuteGame);
  }

  Future<void> _onHomeSave(InAppWebViewController controller) async {
    WebUri? currentUrl = await controller.getUrl();
    if (isURL(currentUrl.toString())) {
      setState(() {
        if (currentUrl.toString() == customHomeUrl) {
          customHomeUrl = '';
          localStorage.setString('customHomeUrl', '');
          Fluttertoast.showToast(msg: S.current.ToolSaveHomeCancel);
        } else {
          customHomeUrl = currentUrl.toString();
          localStorage.setString('customHomeUrl', currentUrl.toString());
          Fluttertoast.showToast(msg: S.current.ToolSaveHomeSuccess);
        }
      });
      _resetTextController();
    } else {
      Fluttertoast.showToast(msg: S.current.ToolSaveHomeFail);
    }
  }

  Future _showDialogWithInput(
      String title, TextEditingController controller) async {
    return showCupertinoDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: CupertinoTextField(
            controller: controller,
          ),
          actions: [
            CupertinoDialogAction(
              child: Text(S.current.TextCancel),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            CupertinoDialogAction(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cp = ref.watch(webControllerProvider);
    return NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxIsScrolled) {
            return [
              CupertinoSliverNavigationBar(
                transitionBetweenRoutes: false,
                largeTitle: Text(S.current.ToolsButton),
              ),
            ];
          },
          body: SafeArea(
            top: false,
            bottom: false,
            child: SettingsList(
              sections: [
                SettingsSection(
                  title: Text(S.of(context).ToolTitleWeb),
                  tiles: [
                    SettingsTile.navigation(
                      title: Text(S.of(context).ToolUASetting),
                      leading: const Icon(FontAwesomeIcons.safari),
                      onPressed: (context) async {
                        _resetTextController();
                        var value = _uaTextController.value;
                        bool flag = await _showDialogWithInput(
                            S.current.ToolUATip, _uaTextController);
                        if (!flag) {
                          _uaTextController.value = value;
                        } else {
                          customUA = _uaTextController.value.text;
                          localStorage.setString("customUA", customUA);
                        }
                      },
                    ),
                    SettingsTile.navigation(
                      title: Text(S.of(context).ToolSearchBarURLSetting),
                      leading: const Icon(CupertinoIcons.home),
                      onPressed: (context) async {
                        _resetTextController();
                        var value = _urlTextController.value;
                        bool flag =
                            await _showDialogWithInput('', _urlTextController);
                        if (!flag) {
                          _urlTextController.value = value;
                        } else {
                          setState(() {
                            customHomeUrl = _urlTextController.value.text;
                          });
                          localStorage.setString(
                              "customHomeUrl", customHomeUrl);
                        }
                      },
                    ),
                    SettingsTile.navigation(
                      // trailing: Icon(customHomeUrl.isEmpty ? CupertinoIcons.star : CupertinoIcons.star_fill),
                      title: Text(S.of(context).SettingsHomeSave),
                      leading: Icon(customHomeUrl.isEmpty
                          ? CupertinoIcons.star
                          : CupertinoIcons.star_fill),
                      onPressed: (context) {
                        HapticFeedback.heavyImpact();
                        if (!cp.isInit) return;
                        _onHomeSave(cp.controller);
                      },
                    ),
                    SettingsTile.navigation(
                        leading: const Icon(
                            CupertinoIcons.rectangle_expand_vertical),
                        title: Text(S.of(context).AppRedirect),
                        onPressed: (context) {
                          HapticFeedback.heavyImpact();
                          if (!cp.isInit) return;
                          _onHttpRedirect(cp.controller);
                        },
                      ),
                    SettingsTile.navigation(
                      leading: const Icon(CupertinoIcons.delete),
                      title: Text(S.of(context).AppClearCache),
                      onPressed: (context) {
                        HapticFeedback.heavyImpact();
                        if (!cp.isInit) return;
                        _onClearCache(context, cp.controller);
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
                    title: Text(S.of(context).ToolTitleGameSound),
                    tiles: [
                      SettingsTile.navigation(
                        leading: const Icon(CupertinoIcons.volume_down),
                        title: Text(S.of(context).GameUnmute),
                        onPressed: (context) {
                          HapticFeedback.heavyImpact();
                          if (!cp.isInit) return;
                          _onUnmuteGame(cp.controller);
                        },
                      ),
                      SettingsTile.navigation(
                        leading: const Icon(CupertinoIcons.volume_off),
                        title: Text(S.of(context).GameMute),
                        onPressed: (context) {
                          HapticFeedback.heavyImpact();
                          if (!cp.isInit) return;
                          _onMuteGame(cp.controller);
                        },
                      ),
                    ],
                  ),
                SettingsSection(
                  title: Text(S.of(context).ToolTitleGameScreen),
                  tiles: [
                    SettingsTile.navigation(
                        leading: const Icon(CupertinoIcons.fullscreen),
                        title: Text(S.of(context).AppResize),
                        onPressed: (context) {
                          HapticFeedback.heavyImpact();
                          if (!cp.isInit) return;
                          _onAdjustWindow(cp.controller);
                        },
                      ),
                    SettingsTile.switchTile(
                      initialValue: bottomPadding,
                      leading: const Icon(CupertinoIcons.rectangle_dock),
                      title: Text(S.of(context).AppBottomSafe),
                      onToggle: (value) async {
                        HapticFeedback.heavyImpact();
                        setState(() {
                          bottomPadding = value;
                        });
                        localStorage.setBool('bottomPadding', value);
                        widget.reloadConfig();
                        widget.notifyParent();
                      },
                    ),
                  ],
                ),
                if(kIsOpenSource) SettingsSection(
                  title: Text(S.of(context).ToolTitleUtilities),
                  tiles: [
                    SettingsTile.navigation(
                        leading: const Icon(CupertinoIcons.square_list),
                        title: const Text("Task Notification(Not available)"),
                        onPressed: (context) {
                          showCupertinoModalBottomSheet(
                            expand: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => ComplexModal(),
                          );
                        }),
                    SettingsTile.navigation(
                        leading: const Icon(CupertinoIcons.square_list),
                        title: const Text("Kancolle(Demo)"),
                        onPressed: (context) {
                          showCupertinoModalBottomSheet(
                            expand: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => KancolleDataModal(),
                          );
                        }),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}
