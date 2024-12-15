import 'package:flutter/cupertino.dart';

class CupertinoSheetBar extends StatelessWidget {
  const CupertinoSheetBar({super.key});


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(8.0), // 顶部间距
      width: 40,
      height: 5,
      decoration: BoxDecoration(
        color: CupertinoDynamicColor.resolve(
          CupertinoColors.tertiaryLabel, // 浅色模式下的颜色
          context,
        ),
        borderRadius: BorderRadius.circular(10), // 圆角
      ),
    );
  }
}