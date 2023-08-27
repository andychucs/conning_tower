import 'package:flutter/cupertino.dart';

class IndexedStackWithCupertinoPageTransition extends StatefulWidget {
  final int index;
  final List<Widget> children;
  final Duration duration;
  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit sizing;

  const IndexedStackWithCupertinoPageTransition({
    super.key,
    required this.index,
    required this.children,
    this.duration = const Duration(
      milliseconds: 250,
    ),
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
  });

  @override
  IndexedStackWithCupertinoPageTransitionState createState() => IndexedStackWithCupertinoPageTransitionState();
}

class IndexedStackWithCupertinoPageTransitionState extends State<IndexedStackWithCupertinoPageTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: widget.duration);

  @override
  void didUpdateWidget(IndexedStackWithCupertinoPageTransition oldWidget) {
    if (widget.index != oldWidget.index) {
      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(_controller),
      secondaryRouteAnimation: Tween<double>(begin: 0.0, end: 0.0).animate(_controller),
      linearTransition: true,
      child: IndexedStack(
        index: widget.index,
        alignment: widget.alignment,
        textDirection: widget.textDirection,
        sizing: widget.sizing,
        children: widget.children,
      ),
    );
  }
}
