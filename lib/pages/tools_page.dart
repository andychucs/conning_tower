import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/pages/kancolle_listen_settings.dart';
import 'package:conning_tower/pages/tasks_sheet.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/widgets/dialog.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:validators/validators.dart';

import '../utils/toast.dart';

class ToolsPage extends ConsumerStatefulWidget {
  ToolsPage(CookieManager? cookieManager,
      {Key? key,
      this.isWideStyle = false})
      : cookieManager = cookieManager ?? CookieManager.instance(),
        super(key: key);

  late final CookieManager cookieManager;
  final bool isWideStyle;

  @override
  ConsumerState<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends ConsumerState<ToolsPage> {
  late TextEditingController _uaTextController;
  late TextEditingController _urlTextController;
  late InAppWebViewController controller;
  late String customUA;
  late String customHomeUrl;

  @override
  void initState() {
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
      Toast.showSuccess(title: S.current.AppControlsClearCache);
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
      Toast.showSuccess(title: message);
    }
  }

  Future<void> _onHomeSave(InAppWebViewController controller) async {
    WebUri? currentUrl = await controller.getUrl();
    if (isURL(currentUrl.toString())) {
      setState(() {
        if (currentUrl.toString() == customHomeUrl) {
          customHomeUrl = '';
          ref.watch(settingsProvider.notifier).setString('customHomeUrl', '');
          Toast.show(title: S.current.ToolSaveHomeCancel);
        } else {
          customHomeUrl = currentUrl.toString();
          ref.watch(settingsProvider.notifier).setString('customHomeUrl', currentUrl.toString());
          Toast.showSuccess(title: S.current.ToolSaveHomeSuccess);
        }
      });
      _resetTextController();
    } else {
      Toast.showError(title: S.current.ToolSaveHomeFail);
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
    customUA = ref.watch(settingsProvider.select((value) => value.customUA));
    customHomeUrl = ref.watch(settingsProvider.select((value) => value.customHomeUrl));
    _uaTextController =
        TextEditingController(text: customUA.isNotEmpty ? customUA : kSafariUA);
    _urlTextController = TextEditingController(
        text: customHomeUrl.isNotEmpty ? customHomeUrl : '');

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
                        ref.watch(settingsProvider.notifier).setString("customUA", customUA);
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
                          ref.watch(settingsProvider.notifier).setString(
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
        CupertinoListSection.insetGrouped(
            header: CupertinoListSectionDescription(
                S.of(context).ToolTitleGameScreen),
            children: [
              CupertinoListTile(
                title: Text(S.of(context).AppBottomSafe),
                leading: const DummyIcon(
                    color: CupertinoColors.activeOrange,
                    icon: CupertinoIcons.rectangle_dock),
                trailing: CupertinoSwitch(
                    value: ref.watch(settingsProvider).bottomPadding,
                    onChanged: (value) async {
                      HapticFeedback.heavyImpact();
                      ref.watch(settingsProvider.notifier).setBool("bottomPadding", value);
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
            if (kReleaseChannel == ReleaseChannel.github)
              CupertinoListTile(
                title: Text("KC"),
                leading: const DummyIcon(
                    color: CupertinoColors.activeBlue, icon: Icons.anchor),
                trailing: const CupertinoListTileChevron(),
                onTap: () async {
                  await navigatorToCupertino(
                      context, const KancolleListenSettings());
                },
              ),
            if (kReleaseChannel == ReleaseChannel.store)
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
                                footer: CupertinoListSectionDescription(S
                                    .of(context)
                                    .AdvancedGameSupportDescription),
                                children: [
                                  CupertinoListTile(
                                      title: Text(S.of(context).Game)),
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
