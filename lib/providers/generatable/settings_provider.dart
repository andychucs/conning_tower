import 'package:conning_tower/main.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.freezed.dart';
part 'settings_provider.g.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required int dashboardIndex,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}

@riverpod
class Settings extends _$Settings {
  @override
  SettingsState build() {
    int dashboardIndex = localStorage.getInt("dashboardIndex") ?? 0;
    return SettingsState(dashboardIndex: dashboardIndex);
  }

  void rebuild() {
    int dashboardIndex = localStorage.getInt("dashboardIndex") ?? 0;
    state = state.copyWith(dashboardIndex: dashboardIndex);
  }

  void setInt(String key, int value) {
    localStorage.setInt(key, value);
    rebuild();
  }
}