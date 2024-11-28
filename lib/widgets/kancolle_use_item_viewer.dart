import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../generated/l10n.dart';
import '../models/data/kcsapi/kcsapi.dart';
import '../providers/kancolle_data_provider.dart';

const _useItemOrder = [68, 96, 61];

class KancolleUseItemQuickLook extends StatelessWidget {
  const KancolleUseItemQuickLook({
    super.key,
    required this.useItem,
    required this.itemInfo,
  });

  final Map<int, int>? useItem;
  final Map<int, GetDataApiDataApiMstUseitemEntity>? itemInfo;

  @override
  Widget build(BuildContext context) {
    if (useItem == null || itemInfo == null) {
      return Container();
    }
    String? text;

    for (int id in _useItemOrder) {
      if (useItem!.keys.contains(id)) {
        text = "${itemInfo![id]!.apiName} ${useItem![id]}";
        break;
      }
    }

    if (text != null) {
      return AutoSizeText(
        text,
        maxFontSize: 30,
        minFontSize: 18,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    }

    return Container();
  }
}

class KancolleUseItemViewer extends ConsumerStatefulWidget {
  const KancolleUseItemViewer({super.key});

  @override
  ConsumerState createState() => _KancolleUseItemViewerState();
}

class _KancolleUseItemViewerState extends ConsumerState<KancolleUseItemViewer> {
  @override
  Widget build(BuildContext context) {
    var data = ref.watch(kancolleDataProvider);

    List<UseItemMessage> messages = [];

    data.seaForceBase.useItem?.forEach((key, value) {
      messages.add(UseItemMessage(
        name: data.dataInfo.itemInfo![key]!.apiName,
        desc: data.dataInfo.itemInfo![key]!.apiDescription.first
            .replaceAll("<br>", ""),
        id: key,
        stock: value,
      ));
    });

    // make id in [_useItemOrder] move to top, if not found, add to the end
    for (int id in _useItemOrder.reversed) {
      if (messages.any((e) => e.id == id)) {
        final message = messages.firstWhere((e) => e.id == id);
        messages.remove(message);
        messages.insert(0, message);
      }
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).TextItem),
      ),
      child: SafeArea(
        child: ScrollViewWithCupertinoScrollbar(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                for (UseItemMessage message in messages)
                  CupertinoListTile(
                    title: Text(message.name),
                    subtitle: Text(message.desc),
                    additionalInfo: Text("${message.stock}"),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UseItemMessage {
  late final String name;
  late final String desc;
  late final int id;
  late final int stock;

  UseItemMessage(
      {required this.name,
      required this.desc,
      required this.id,
      required this.stock});
}
