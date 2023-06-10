import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'device_provider.g.dart';
part 'device_provider.freezed.dart';


enum DeviceType {
  iPhone,
  iPad,
  iPod,
  mac,
  windows,
  android,
  linux
}

@freezed
class DeviceManagerState with _$DeviceManagerState {
  factory DeviceManagerState({
    required List<DeviceOrientation> orientation,
    required int orientationIndex,
    required DeviceType? deviceType,
  }) = _DeviceManagerState;
}

@riverpod
class DeviceManager extends _$DeviceManager {

  @override
  DeviceManagerState build() {
    return DeviceManagerState(orientation: DeviceOrientation.values, orientationIndex: -1, deviceType: null);
  }


}