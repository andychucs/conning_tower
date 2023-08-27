import 'package:conning_tower/main.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_provider.freezed.dart';

part 'device_provider.g.dart';

enum CustomDeviceOrientation {
  landscape,
  portrait,
  landscapeLeft,
  landscapeRight,
  portraitUp,
  all
}

@freezed
class DeviceManagerState with _$DeviceManagerState {
  factory DeviceManagerState(
      {required List<DeviceOrientation> orientations,
      required int orientationIndex,
      required Size size}) = _DeviceManagerState;
}

@riverpod
class DeviceManager extends _$DeviceManager {
  @override
  DeviceManagerState build() {
    int index = (localStorage.getInt('customDeviceOrientation') ?? -1);
    return DeviceManagerState(
        orientations: _getDeviceOrientation(index),
        orientationIndex: index,
        size: const Size(0, 0));
  }

  void setSize(Size size) {
    EasyThrottle.throttle("set-size", const Duration(seconds: 1), () {
      state = state.copyWith(size: size);
    });
  }

  bool isCustomDeviceOrientation() {
    if (state.orientationIndex != -1) return true;
    return false;
  }

  void setOrientationIndex(int index) {
    state = state.copyWith(orientationIndex: index);
    localStorage.setInt('customDeviceOrientation', index);
  }

  int getOrientationIndex() {
    return state.orientationIndex;
  }

  void setDeviceOrientation(List<DeviceOrientation> orientation) {
    state = state.copyWith(orientations: orientation);
  }

  void setDeviceOrientationByIndex(int index) {
    state = state.copyWith(orientations: _getDeviceOrientation(index));
    if (index == -1) {
      // Expand the optional range before adjusting the direction of the device to reduce error reporting
      setPreferredDeviceOrientation();
    }
  }

  void setPreferredDeviceOrientation() {
    SystemChrome.setPreferredOrientations(state.orientations);
  }

  void customDeviceOrientation(
      CustomDeviceOrientation customDeviceOrientation) {
    setDeviceOrientationByIndex(-1);
    var orientations = DeviceOrientation.values;
    switch (customDeviceOrientation) {
      case CustomDeviceOrientation.landscape:
        orientations = [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ];
        setOrientationIndex(3);
        break;
      case CustomDeviceOrientation.portrait:
        orientations = [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown
        ];
        setOrientationIndex(2);
        break;
      case CustomDeviceOrientation.landscapeLeft:
        orientations = [DeviceOrientation.landscapeLeft];
        setOrientationIndex(1);
        break;
      case CustomDeviceOrientation.landscapeRight:
        orientations = [DeviceOrientation.landscapeRight];
        setOrientationIndex(0);
        break;
      case CustomDeviceOrientation.portraitUp:
        orientations = [DeviceOrientation.portraitUp];
        setOrientationIndex(4);
        break;
      case CustomDeviceOrientation.all:
        orientations = DeviceOrientation.values;
        setOrientationIndex(-1);
        break;
    }

    setDeviceOrientation(orientations);
  }

  void customDeviceOrientationByIndex(int index) {
    setDeviceOrientationByIndex(-1);
    var orientations = _getDeviceOrientation(index);
    setOrientationIndex(index);
    setDeviceOrientation(orientations);
  }

  List<DeviceOrientation> _getDeviceOrientation(int? index) {
    if (index == 0) return [DeviceOrientation.landscapeRight];
    if (index == 1) return [DeviceOrientation.landscapeLeft];
    if (index == 2)
      return [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
    if (index == 3)
      return [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft
      ];
    if (index == 4) return [DeviceOrientation.portraitUp];
    return DeviceOrientation.values;
  }
}
