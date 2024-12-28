import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/web_info_provider.dart';
import 'package:conning_tower/style/app_color.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/components/expandable_text.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/generatable/settings_provider.dart';
import '../../providers/generatable/webview_provider.dart';
import '../../widgets/icons.dart';
import '../../widgets/input_pages.dart';

class WebInfoPage extends ConsumerStatefulWidget {
  const WebInfoPage({
    super.key,
  });

  @override
  ConsumerState<WebInfoPage> createState() => _WebInfoState();
}

class _WebInfoState extends ConsumerState<WebInfoPage> {
  @override
  Widget build(BuildContext context) {
    final webInfo = ref.watch(webInfoProvider);
    final settings = ref.watch(settingsProvider);

    List<Widget> webInfos = [
      CupertinoListTile(
        title: Text(Uri.parse(webInfo.url).host),
      ),
      CupertinoListTile(
        title: Text(S.of(context).StatusCode),
        additionalInfo: Text('${webInfo.statusCode}'),
        trailing: Icon(CupertinoIcons.wifi,
            color: webInfo.statusCode < 400
                ? webInfo.statusCode < 300
                    ? webInfo.statusCode < 200
                        ? CupertinoColors.activeOrange
                        : CupertinoColors.activeGreen
                    : CupertinoColors.systemYellow
                : CupertinoColors.destructiveRed),
      ),
    ];

    List.generate(webInfo.cookies.length, (index) {
      webInfos.add(
        CupertinoListTile(title: Text(webInfo.cookies[index].toString())),
      );
    });
    return Padding(
      padding: tabContentMargin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CupertinoPageScaffold(
          child: SafeArea(
            bottom: false,
            child: ScrollViewWithCupertinoScrollbar(
              children: [
                CupertinoListSection.insetGrouped(
                    header: CupertinoListSectionDescription(
                        S.of(context).ToolTitleGameScreen),
                    children: [
                      CupertinoListTile(
                        title: Text(S.of(context).TextResetZoom),
                        leading: const DummyIcon(
                            color: AppColor.cerulean,
                            icon:
                                CupertinoIcons.arrow_down_right_arrow_up_left),
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await ref.read(webControllerProvider).resetZoom();
                        },
                      ),
                      CupertinoListTile(
                        title: Text(S.of(context).AppControlsScrollUp),
                        leading: const DummyIcon(
                            color: AppColor.tiffanyBlue,
                            icon: CupertinoIcons.up_arrow),
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await ref
                              .read(webControllerProvider)
                              .scrollUp();
                        },
                      ),
                      CupertinoListTile(
                        title: Text(S.of(context).AppControlsScrollDown),
                        leading: const DummyIcon(
                            color: AppColor.dun,
                            icon: CupertinoIcons.down_arrow),
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await ref
                              .read(webControllerProvider)
                              .scrollDown();
                        },
                      ),
                      CupertinoListTile(
                        title: Text(S.of(context).TextBackToTop),
                        leading: const DummyIcon(
                            color: AppColor.desertSand,
                            icon: CupertinoIcons.arrow_up_to_line),
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await ref.read(webControllerProvider).scrollToTop();
                        },
                      ),
                    ]),
                if (ref.watch(webControllerProvider).inKancolle)
                  CupertinoListSection.insetGrouped(
                      children: [
                        CupertinoListTile(
                          title: Text(S.of(context).KancolleUseHTTP),
                          subtitle: Text(S.of(context).ToolUATip),
                          leading: const DummyIcon(
                              color: CupertinoColors.activeOrange,
                              icon: CupertinoIcons.lock_open),
                          trailing: CupertinoSwitch(
                            value: settings.useHttpForKancolle,
                            onChanged: (value) async {
                              HapticFeedback.mediumImpact();
                              ref.watch(settingsProvider.notifier).setBool('useHttpForKancolle', value);
                            },
                          ),
                        ),
                        CupertinoListTile(
                          title: Text(S.of(context).KancolleSpacingTopHide),
                          subtitle: Text(S.of(context).KancolleSpacingTopHideDesc),
                          leading: const DummyIcon(
                              color: CupertinoColors.activeGreen,
                              icon: CupertinoIcons.rectangle_expand_vertical),
                          trailing: CupertinoSwitch(
                            value: settings.kancolleAutoScrollDownOnLoad,
                            onChanged: (value) async {
                              HapticFeedback.mediumImpact();
                              ref.watch(settingsProvider.notifier).setBool('kancolleAutoScrollDownOnLoad', value);
                              if (value) {
                                await ref.read(webControllerProvider).tryHideSpacingTop();
                              }
                            },
                          ),
                        ),
                        CupertinoListTile(
                          title: Text(S.of(context).AppResize),
                          leading: const DummyIcon(
                              color: CupertinoColors.activeBlue,
                              icon: CupertinoIcons.fullscreen),
                          onTap: () async {
                            HapticFeedback.mediumImpact();
                            await ref
                                .read(webControllerProvider)
                                .adjustWindow();
                          },
                        ),
                        CupertinoListTile(
                          title: Text(S.of(context).AppRedirect),
                          leading: const DummyIcon(
                              color: CupertinoColors.activeOrange,
                              icon: CupertinoIcons.rectangle_expand_vertical),
                          onTap: () async {
                            HapticFeedback.mediumImpact();
                            await ref
                                .read(webControllerProvider)
                                .httpRedirect();
                          },
                        ),
                      ]),
                CupertinoListSection.insetGrouped(
                  footer: ExpandableText(webInfo.url),
                  children: webInfos,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
