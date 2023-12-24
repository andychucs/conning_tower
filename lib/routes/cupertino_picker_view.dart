import 'package:conning_tower/constants.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/providers/dashboard_controller.dart';
import 'package:conning_tower/providers/generatable/settings_provider.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CupertinoPickerView extends ConsumerStatefulWidget {
  const CupertinoPickerView(
      {super.key,
      required this.items,
      required this.children,
      required this.wideStyle})
      : assert(items.length == children.length,
            "items and children must have the same length");
  final List<Widget> items;
  final List<Widget> children;
  final bool wideStyle;

  @override
  ConsumerState<CupertinoPickerView> createState() =>
      _CupertinoPickerViewState();
}

class _CupertinoPickerViewState extends ConsumerState<CupertinoPickerView> {
  int _selectIndex = -1;

  @override
  void dispose() {
    _selectIndex = -1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_selectIndex == -1) {
      _selectIndex = ref.watch(settingsProvider).dashboardIndex;
    }
    if (_selectIndex >= widget.items.length) {
      _selectIndex = widget.items.length - 1;
    }
    if (_selectIndex < 0) {
      _selectIndex = 0;
    }
    final scrollController = ref.watch(dashboardControllerProvider(_selectIndex));
    return OrientationBuilder(
      builder: (context, orientation) {
        return SafeArea(
          bottom: false,
          child: Row(
            children: [
              Expanded(
                flex: widget.wideStyle ? 5 : 7,
                child: CupertinoGroupedSection(
                  child: CupertinoPicker(
                    scrollController: scrollController,
                    useMagnifier: true,
                    itemExtent: widget.wideStyle ? 45 : 40,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        _selectIndex = value;
                        HapticFeedback.lightImpact();
                        ref
                            .watch(settingsProvider.notifier)
                            .setInt("dashboardIndex", value);
                      });
                    },
                    children: widget.items,
                  ),
                ),
              ),
              // const VerticalDivider(width: 1,),
              Expanded(
                flex: 20,
                child: widget.children[_selectIndex],
              ),
            ],
          ),
        );
      },
    );
  }
}
