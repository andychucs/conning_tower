import 'dart:io';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@Deprecated("Feat cancel, use AdaptiveDialog")
class CustomAlertDialog extends StatelessWidget {
  final String msg;
  final bool isNormal;

  const CustomAlertDialog(
      {super.key, required this.msg, this.isNormal = false});

  Future<void> setConfig(BuildContext context, VoidCallback onSuccess) async {
    if (!isNormal) {
      final prefs = localStorage;
      if (msg == S.current.AppNotify) {
        prefs.setBool('showNotify', false);
      }
      if (msg == S.current.MsgIOSNote) {
        prefs.setBool('showIosNotify', false);
      }
    }
    onSuccess.call();
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoAlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(msg),
            ],
          ),
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            textStyle: const TextStyle(color: CupertinoColors.destructiveRed),
            onPressed: () => setConfig(context, () {
              Navigator.of(context).pop();
            }),
            child: Text(isNormal
                ? S.of(context).TextCancel
                : S.of(context).AlertNotShowAgain),
          ),
          CupertinoDialogAction(
            child: Text(S.of(context).TextYes),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    }
    return AlertDialog(
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(msg),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: CupertinoColors.destructiveRed),
          onPressed: () => setConfig(context, () {
            Navigator.of(context).pop();
          }),
          child: Text(isNormal
              ? S.of(context).TextCancel
              : S.of(context).AlertNotShowAgain),
        ),
        TextButton(
          child: Text(S.of(context).TextYes),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}

class AdaptiveDialogWithBool extends StatelessWidget {
  const AdaptiveDialogWithBool({super.key, required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return AdaptiveDialog(
      content: Text(msg),
      actions: [
        AdaptiveDialogAction(
          color: CupertinoColors.destructiveRed,
          onPressed: () => Navigator.of(context).pop(),
          child: Text(S.of(context).TextCancel),
        ),
        AdaptiveDialogAction(
          child: Text(S.of(context).TextYes),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        )
      ],
    );
  }
}

class AdaptiveDialog extends StatelessWidget {
  const AdaptiveDialog(
      {super.key, this.title, this.content, required this.actions});
  final Text? title;
  final Widget? content;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS || Platform.isMacOS
        ? CupertinoAlertDialog(
            title: title,
            content: content,
            actions: actions,
          )
        : AlertDialog(
            title: title,
            content: content,
            actions: actions,
          );
  }
}

Future<T?> customShowAdaptiveDialog<T>(
  context, {
  required Text title,
  required Widget? content,
  required List<Widget> actions,
}) {
  return Platform.isIOS || Platform.isMacOS
      ? showCupertinoDialog<T>(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: title,
            content: content,
            actions: actions,
          ),
        )
      : showDialog<T>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: title,
            content: content,
            actions: actions,
          ),
        );
}

class AdaptiveDialogAction extends StatelessWidget {
  const AdaptiveDialogAction({
    super.key,
    this.onPressed,
    this.color,
    required this.child,
  });
  final Widget child;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS || Platform.isMacOS
        ? CupertinoDialogAction(
            onPressed: onPressed,
            textStyle: color != null ? TextStyle(color: color) : null,
            child: child,
          )
        : TextButton(
            onPressed: onPressed,
            style: color != null
                ? TextButton.styleFrom(foregroundColor: color)
                : null,
            child: child,
          );
  }
}
