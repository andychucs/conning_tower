import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../generated/l10n.dart';
import 'input_pages.dart';
import 'scroll_view.dart';

class KancollePortSettingsPage extends ConsumerStatefulWidget {
  const KancollePortSettingsPage({super.key});

  @override
  ConsumerState createState() => _KancollePortSettingsPageState();
}

class _KancollePortSettingsPageState
    extends ConsumerState<KancollePortSettingsPage> {
  int _layoutIndex = 0;
  final List<String> _layoutList = [
    S.current.TextNormal,
    S.current.TextCompact
  ];

  @override
  void initState() {
    _layoutIndex = localStorage.getInt("KC_PORT_LAYOUT") ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).SettingsButton),
      ),
      child: SafeArea(
        child: ScrollViewWithCupertinoScrollbar(
          children: [
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).TextLayout),
                  trailing: CupertinoListTileChevron(),
                  additionalInfo: Text(_layoutList[_layoutIndex]),
                  onTap: () {
                    Feedback.forTap(context);
                    HapticFeedback.lightImpact();
                    navigatorToCupertino(context, PortLayoutSettings()).then(
                      (value) {
                        setState(() {
                          _layoutIndex =
                              localStorage.getInt("KC_PORT_LAYOUT") ?? 0;
                        });
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PortLayoutSettings extends StatefulWidget {
  const PortLayoutSettings({super.key});

  @override
  State<PortLayoutSettings> createState() => _PortLayoutSettingsState();
}

class _PortLayoutSettingsState extends State<PortLayoutSettings> {
  int _index = 0;
  final List<String> _list = [S.current.TextNormal, S.current.TextCompact];

  @override
  void initState() {
    _index = localStorage.getInt("KC_PORT_LAYOUT") ?? 0;
    super.initState();
  }

  void setLayout(int index) {
    Feedback.forTap(context);
    HapticFeedback.lightImpact();
    setState(() {
      _index = index;
      localStorage.setInt("KC_PORT_LAYOUT", index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).TextLayout),
      ),
      child: SafeArea(
        child: ScrollViewWithCupertinoScrollbar(
          children: [
            CupertinoListSection.insetGrouped(
              header: CupertinoListSectionDescription(S.of(context).TextLayout),
              children: List.generate(
                _list.length,
                (index) => CupertinoListTile(
                  title: Text(_list[index]),
                  trailing: _index == index
                      ? Icon(CupertinoIcons.checkmark_alt,
                          color: Theme.of(context).primaryColor)
                      : null,
                  onTap: () => setLayout(index),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
