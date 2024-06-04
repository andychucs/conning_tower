import 'package:flutter/cupertino.dart';

class CupertinoGroupedSection extends StatelessWidget {
  const CupertinoGroupedSection({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.color,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: backgroundColor ?? CupertinoDynamicColor.resolve(
                CupertinoColors.systemGroupedBackground, context)),
        child: Padding(
            padding: padding ?? const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: color ?? CupertinoDynamicColor.resolve(
                      CupertinoColors.secondarySystemGroupedBackground,
                      context),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: child,
            )));
  }
}
