import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class KancolleItemViewer extends ConsumerStatefulWidget {
  const KancolleItemViewer({super.key});

  @override
  ConsumerState createState() => _KancolleItemViewerState();
}

class _KancolleItemViewerState extends ConsumerState<KancolleItemViewer> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('KancolleItemViewer'),
      ),
      child: SafeArea(
        child: ScrollViewWithCupertinoScrollbar(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text('1'),
                  onTap: () {
                    showCupertinoModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(),
                    );
                  },
                ),
                CupertinoListTile(
                  title: Text('2'),
                ),
                CupertinoListTile(
                  title: Text('3'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
