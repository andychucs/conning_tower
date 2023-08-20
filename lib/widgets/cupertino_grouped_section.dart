import 'package:flutter/cupertino.dart';

class CupertinoGroupedSection extends StatelessWidget {
  const CupertinoGroupedSection({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: CupertinoDynamicColor.resolve(
                CupertinoColors.systemGroupedBackground, context)),
        child: Padding(
            padding:
            const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: CupertinoDynamicColor.resolve(
                      CupertinoColors.secondarySystemGroupedBackground,
                      context),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: child,
            )));
  }
}
