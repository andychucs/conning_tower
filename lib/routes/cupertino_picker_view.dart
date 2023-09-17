import 'package:conning_tower/constants.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CupertinoPickerView extends StatefulWidget {
  const CupertinoPickerView(
      {super.key, required this.items, required this.children, required this.wideStyle});
  final List<Widget> items;
  final List<Widget> children;
  final bool wideStyle;

  @override
  State<CupertinoPickerView> createState() => _CupertinoPickerViewState();
}

class _CupertinoPickerViewState extends State<CupertinoPickerView> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                    useMagnifier: true,
                    itemExtent: widget.wideStyle ? 45 : 40,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        if (deviceType == DeviceType.iPad)SystemSound.play(SystemSoundType.click);
                        HapticFeedback.lightImpact();
                        _selectIndex = value;
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
      }
    );
  }
}

