import 'package:flutter/cupertino.dart';

class ScrollViewWithCupertinoScrollbar extends StatelessWidget {
  const ScrollViewWithCupertinoScrollbar({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
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
