import 'package:flutter/cupertino.dart';

class ScrollViewWithCupertinoScrollbar extends StatelessWidget {
  const ScrollViewWithCupertinoScrollbar({super.key, required this.children, this.controller});

  final List<Widget> children;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    final controller = this.controller ?? ScrollController();
    return CupertinoScrollbar(
      controller: controller,
      child: CustomScrollView(controller: controller, slivers: [
        SliverList(
          delegate: SliverChildListDelegate(children),
        ),
      ]),
    );
  }
}
