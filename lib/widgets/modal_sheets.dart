import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/widgets/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit extends StatelessWidget {
  final List<Widget> children;

  const ModalFit({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CupertinoTheme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}

class ModalFitSingleChild extends StatelessWidget {
  final Widget child;

  const ModalFitSingleChild({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CupertinoTheme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        bottom: false,
        child: child,
      ),
    );
  }
}

class ComplexModal extends StatelessWidget {
  final Widget child;

  const ComplexModal({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: WillPopScope(
        onWillPop: () async {
          bool shouldClose = true;
          showAdaptiveDialog(
              context: context,
              builder: (builder) {
                return AlertDialog.adaptive(
                    title: Text(S.of(context).TextShouldClose),
                    content: null,
                    actions: [
                      adaptiveAction(
                        child: Text(S.current.TextNo),
                        onPressed: () {
                          shouldClose = false;
                          Navigator.of(context).pop();
                        },
                        context: context,
                      ),
                      adaptiveAction(
                        child: Text(S.current.TextYes),
                        onPressed: () {
                          shouldClose = true;
                          Navigator.of(context).pop();
                        },
                        context: context,
                      ),
                    ]);
              });
          return shouldClose;
        },
        child: child,
      ),
    );
  }
}
