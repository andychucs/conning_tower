import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';

class CustomAlertDialog extends StatelessWidget {
  final String msg;
  final bool isNormal;

  const CustomAlertDialog(
      {super.key, required this.msg, this.isNormal = false});

  Future<void> setConfig(BuildContext context, VoidCallback onSuccess) async {
    if (!isNormal) {
      final prefs = await SharedPreferences.getInstance();
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
                ? S.of(context).Cancel
                : S.of(context).AlertNotShowAgain),
          ),
          CupertinoDialogAction(
            child: const Text('OK'),
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
              ? S.of(context).Cancel
              : S.of(context).AlertNotShowAgain),
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}

// class DialogWithInput extends StatelessWidget {
//   const DialogWithInput({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     if (Platform.isIOS || Platform.isMacOS){
//       return CupertinoAlertDialog(
//         content: Card(),
//       );
//     }
//     return AlertDialog();
//   }
//
// }
