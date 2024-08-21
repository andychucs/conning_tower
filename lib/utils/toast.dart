import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';

class Toast {
  static show(
          {required String title,
          String? description,
          Duration? autoCloseDuration,
          ToastificationType? type}) =>
      toastification.show(
        type: type ?? ToastificationType.info,
        style: ToastificationStyle.flat,
        title: Text(title),
        description: description != null ? Text(description) : null,
        alignment: Alignment.topCenter,
        autoCloseDuration: autoCloseDuration ?? const Duration(seconds: 4),
        applyBlurEffect: true,
      );

  static showWarning({
    required String title,
    String? description,
    Duration? autoCloseDuration,
  }) =>
      show(
        type: ToastificationType.warning,
        title: title,
        description: description,
        autoCloseDuration: autoCloseDuration,
      );

  static showError({
    required String title,
    String? description,
    Duration? autoCloseDuration,
  }) =>
      show(
        type: ToastificationType.error,
        title: title,
        description: description,
        autoCloseDuration: autoCloseDuration,
      );

  static showSuccess({
    required String title,
    String? description,
    Duration? autoCloseDuration,
  }) =>
      show(
        type: ToastificationType.success,
        title: title,
        description: description,
        autoCloseDuration: autoCloseDuration,
      );
}
