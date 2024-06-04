import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/web_info_provider.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/components/expandable_text.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return SafeArea(
      child: Padding(
        padding: tabContentMargin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: CupertinoPageScaffold(
            child: ScrollViewWithCupertinoScrollbar(
              children: [
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
