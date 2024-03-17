import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/generatable/webview_provider.dart';
import 'package:conning_tower/providers/web_info_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WebInfoList extends ConsumerStatefulWidget {
  const WebInfoList({
    super.key,
  });

  @override
  ConsumerState<WebInfoList> createState() => _WebInfoState();
}

class _WebInfoState extends ConsumerState<WebInfoList> {
  @override
  Widget build(BuildContext context) {
    final webInfo = ref.watch(webInfoProvider);
    final webController = ref.watch(webControllerProvider);

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
      CupertinoListTile(
          title: const Text("Modify Cookie"),
          onTap: () async {
            await webController.kancolleCookieModify();
          }),
    ];

    List.generate(webInfo.cookies.length, (index) {
      webInfos.add(
        CupertinoListTile(title: Text(webInfo.cookies[index].toString())),
      );
    });
    return SingleChildScrollView(
      child: CupertinoListSection.insetGrouped(
        children: webInfos,
        footer: Text(webInfo.url),
      ),
    );
  }
}
