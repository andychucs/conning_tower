import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/kancolle_listen_settings.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:validators/validators.dart';

class ToolsPage extends ConsumerStatefulWidget {
  ToolsPage(CookieManager? cookieManager,
      {Key? key,
      required this.notifyParent,
      required this.reloadConfig,
      this.isWideStyle = false})
      : cookieManager = cookieManager ?? CookieManager.instance(),
        super(key: key);

  final Function() notifyParent;
  late final CookieManager cookieManager;
  final Function() reloadConfig;
  final bool isWideStyle;

  @override
  ConsumerState<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends ConsumerState<ToolsPage> {
  late TextEditingController _uaTextController;
  late TextEditingController _urlTextController;
  late InAppWebViewController controller;

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
      if (currentUrl!.path.startsWith(Uri.parse(kGameUrl).path)) {
        // May be HTTPS or HTTP
        if (Platform.isIOS) {
          await controller.injectJavascriptFileFromAsset(
              assetFilePath: httpRedirectJS);
        }
        inKancolleWindow = true;
      }
      Fluttertoast.showToast(msg: S.current.KCViewFuncMsgAutoGameRedirect);
      log("HTTP Redirect success");
    } else {
      Fluttertoast.showToast(msg: S.current.KCViewFuncMsgAlreadyGameRedirect);
      log("HTTP Redirect fail");
    }
    log("inKancolleWindow: $inKancolleWindow");
  }

  Future<void> _onClearCache(
      BuildContext context, InAppWebViewController controller) async {
    bool? value = await showDialog(
        context: context,
        builder: (context) {
          return AdaptiveDialogWithBool(
            msg: S.current.AppClearCache,
          );
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
          return AdaptiveDialogWithBool(msg: S.current.AppClearCookie);
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

  @override
  Widget build(BuildContext context) {
    bool isInit =
        ref.watch(webControllerProvider.select((value) => value.isInit));
    if (isInit) {
      controller =
          ref.watch(webControllerProvider.select((value) => value.controller));
    }

    return FunctionalPage(
      title: S.current.ToolsButton,
      children: [
        CupertinoListSection.insetGrouped(
          header: CupertinoListSectionDescription(S.of(context).ToolTitleWeb),
          children: [
            CupertinoListTile(
              title: Text(S.of(context).ToolUASetting),
              leading: const DummyIcon(
                  color: CupertinoColors.activeBlue,
                  icon: FontAwesomeIcons.safari),
              onTap: () async {
                _resetTextController();
                await navigatorToCupertino(
                    context,
                    CupertinoListInputPage(
                      textController: _uaTextController,
                      title: S.of(context).ToolUASetting,
                      onSubmit: (content) {
                        customUA = content;
                        localStorage.setString("customUA", customUA);
                      },
                      previousPageTitle: S.current.ToolsButton,
                      description: S.current.ToolUATip,
                    ));
              },
              trailing: const CupertinoListTileChevron(),
            ),
            CupertinoListTile(
              title: Text(S.of(context).ToolSearchBarURLSetting),
              leading: const DummyIcon(
                  color: CupertinoColors.activeGreen,
                  icon: CupertinoIcons.home),
              onTap: () async {
                _resetTextController();
                await navigatorToCupertino(
                    context,
                    CupertinoListInputPage(
                      title: S.of(context).ToolSearchBarURLSetting,
                      textController: _urlTextController,
                      onSubmit: (content) {
                        if (isURL(content)) {
                          customHomeUrl = content;
                          localStorage.setString(
                              "customHomeUrl", customHomeUrl);
                        }
                      },
                      previousPageTitle: S.current.ToolsButton,
                    ));
              },
              trailing: const CupertinoListTileChevron(),
            ),
            CupertinoListTile(
              title: Text(S.of(context).SettingsHomeSaveShort),
              subtitle: Text(S.of(context).SettingsHomeSave),
              leading: DummyIcon(
                  color: CupertinoColors.activeOrange,
                  icon: customHomeUrl.isEmpty
                      ? CupertinoIcons.star
                      : CupertinoIcons.star_fill),
              onTap: () async {
                HapticFeedback.heavyImpact();
                if (!isInit) return;
                _onHomeSave(controller);
              },
            ),
            if (kIsOpenSource)
              CupertinoListTile(
                title: Text(S.of(context).AppRedirect),
                leading: const DummyIcon(
                    color: CupertinoColors.activeBlue,
                    icon: CupertinoIcons.rectangle_expand_vertical),
                onTap: () async {
                  HapticFeedback.heavyImpact();
                  if (!isInit) return;
                  _onHttpRedirect(controller);
                },
              ),
            CupertinoListTile(
              title: Text(S.of(context).AppClearCache),
              leading: const DummyIcon(
                  color: CupertinoColors.destructiveRed,
                  icon: CupertinoIcons.delete),
              onTap: () async {
                HapticFeedback.heavyImpact();
                if (!isInit) return;
                _onClearCache(context, controller);
              },
            ),
            CupertinoListTile(
              title: Text(S.of(context).AppClearCookie),
              leading: const DummyIcon(
                  color: CupertinoColors.destructiveRed,
                  icon: CupertinoIcons.square_arrow_left),
              onTap: () async {
                HapticFeedback.heavyImpact();
                _onClearCookies(context);
              },
            ),
          ],
        ),
        if (kIsOpenSource)
          CupertinoListSection.insetGrouped(
              header: CupertinoListSectionDescription(
                  S.of(context).ToolTitleGameSound),
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).GameUnmute),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeBlue,
                      icon: CupertinoIcons.volume_down),
                  onTap: () async {
                    HapticFeedback.heavyImpact();
                    if (!isInit) return;
                    _onUnmuteGame(controller);
                  },
                ),
                CupertinoListTile(
                  title: Text(S.of(context).GameMute),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeOrange,
                      icon: CupertinoIcons.volume_off),
                  onTap: () async {
                    HapticFeedback.heavyImpact();
                    if (!isInit) return;
                    _onMuteGame(controller);
                  },
                ),
              ]),
        CupertinoListSection.insetGrouped(
            header: CupertinoListSectionDescription(
                S.of(context).ToolTitleGameScreen),
            children: [
              if (kIsOpenSource)
                CupertinoListTile(
                  title: Text(S.of(context).AppResize),
                  leading: const DummyIcon(
                      color: CupertinoColors.activeBlue,
                      icon: CupertinoIcons.fullscreen),
                  onTap: () async {
                    HapticFeedback.heavyImpact();
                    if (!isInit) return;
                    _onAdjustWindow(controller);
                  },
                ),
              CupertinoListTile(
                title: Text(S.of(context).AppBottomSafe),
                leading: const DummyIcon(
                    color: CupertinoColors.activeOrange,
                    icon: CupertinoIcons.rectangle_dock),
                trailing: CupertinoSwitch(
                    value: bottomPadding,
                    onChanged: (value) async {
                      HapticFeedback.heavyImpact();
                      setState(() {
                        bottomPadding = value;
                      });
                      localStorage.setBool('bottomPadding', value);
                      widget.reloadConfig();
                      widget.notifyParent();
                    }),
              ),
            ]),
        CupertinoListSection.insetGrouped(
          header:
              CupertinoListSectionDescription(S.of(context).ToolTitleUtilities),
          children: [
            CupertinoListTile(
              title: Text(S.of(context).TaskReminders),
              leading: const DummyIcon(
                  color: CupertinoColors.activeBlue,
                  icon: CupertinoIcons.square_list),
              onTap: () async {
                showCupertinoModalBottomSheet(
                  useRootNavigator: widget.isWideStyle ? false : true,
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const TasksSheet(),
                );
              },
              trailing: const CupertinoListTileChevron(),
            ),
            CupertinoListTile(
              title: Text(S.of(context).AppNotificationManagement),
              leading: const DummyIcon(
                  color: CupertinoColors.activeGreen,
                  icon: CupertinoIcons.app_badge),
              onTap: () async {
                flutterLocalNotificationsPlugin
                    .pendingNotificationRequests()
                    .then((value) {
                  navigatorToCupertino(
                      context,
                      NotificationManagement(
                        list: value,
                        previousPageTitle: S.current.ToolsButton,
                      ));
                });
              },
              trailing: const CupertinoListTileChevron(),
            ),
            CupertinoListTile(
              title: Text(S.of(context).AdvancedGameSupport),
              leading: const DummyIcon(
                  color: CupertinoColors.activeOrange,
                  icon: CupertinoIcons.game_controller),
              onTap: () {
                navigatorToCupertino(
                    context,
                    CupertinoActionPage(
                        title: S.of(context).AdvancedGameSupport,
                        previousPageTitle: S.of(context).ToolsButton,
                        child: ListView(
                          children: [
                            CupertinoListSection.insetGrouped(
                              footer: CupertinoListSectionDescription(
                                  S.of(context).AdvancedGameSupportDescription),
                              children: [
                                CupertinoListTile(
                                    title: Text(
                                        S.of(context).Game)),
                                if (loadedDMM || kIsOpenSource)
                                  CupertinoListTile(
                                    title: Text("KC"),
                                    leading: const DummyIcon(
                                        color: CupertinoColors.activeBlue,
                                        icon: Icons.anchor),
                                    trailing: const CupertinoListTileChevron(),
                                    onTap: () async {
                                      await navigatorToCupertino(context,
                                          const KancollelistenSettings());
                                    },
                                  ),
                              ],
                            )
                          ],
                        )));
              },
              trailing: const CupertinoListTileChevron(),
            ),
          ],
        ),
      ],
    );
  }
}

class NotificationManagement extends StatelessWidget {
  const NotificationManagement({
    super.key,
    required this.list,
    required this.previousPageTitle,
  });

  final List<PendingNotificationRequest> list;
  final String previousPageTitle;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionPage(
        title: S.of(context).AppNotificationManagement,
        previousPageTitle: previousPageTitle,
        child: ListView(children: [
          CupertinoListSection.insetGrouped(
            children: [
              CupertinoListTile(
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeGreen,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    CupertinoIcons.app_badge,
                    color: CupertinoColors.white,
                  ),
                ),
                title: Text(S.of(context).PendingNotificationCount),
                additionalInfo: Text('${list.length}'),
              ),
              CupertinoListTile(
                title: Text(
                  S.of(context).ClearAllPendingNotifications,
                  style: const TextStyle(color: CupertinoColors.activeBlue),
                ),
                onTap: () {
                  notification.cancelAllNotifications();
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
          CupertinoListSection.insetGrouped(
            header: list.isNotEmpty
                ? CupertinoListSectionDescription(
                    S.of(context).PendingNotifications)
                : Container(),
            children: list.isNotEmpty
                ? List.generate(list.length, (index) {
                    return CupertinoListTile(
                      title:
                          Text(list[index].title ?? list[index].id.toString()),
                    );
                  })
                : [],
          ),
        ]));
  }
}
