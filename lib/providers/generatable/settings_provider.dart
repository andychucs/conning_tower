import 'package:conning_tower/constants.dart';
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
    required bool kcSparkEmoji,
    required bool kcBattleReportEnable,
    required bool enableAutoProcess,
    required bool bottomPadding,
    required bool enableAutoLoadHomeUrl,
    required String customHomeUrl,
    required bool enableHideFAB,
    required String customUA,
    required AppLayout appLayout,
    required bool showDashboardInHome,
    required bool useKancolleListener,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}

@riverpod
class Settings extends _$Settings {
  @override
  SettingsState build() {
    int dashboardIndex = localStorage.getInt("dashboardIndex") ?? 0;
    bool kcSparkEmoji = localStorage.getBool("kcSparkEmoji") ?? false;
    bool kcBattleReportEnable = localStorage.getBool("kcBattleReportEnable") ?? true;
    bool enableAutoProcess = localStorage.getBool('enableAutoProcess') ?? true;
    bool bottomPadding = localStorage.getBool('bottomPadding') ?? false;
    bool enableAutoLoadHomeUrl = localStorage.getBool('enableAutoLoadHomeUrl') ?? true;
    String customHomeUrl = localStorage.getString('customHomeUrl') ?? kGameUrl;
    bool enableHideFAB = localStorage.getBool('enableHideFAB') ?? false;
    String customUA = localStorage.getString('customUA') ?? '';
    AppLayout appLayout = AppLayout.values[localStorage.getInt('appLayout') ??
        AppLayout.values.indexOf(AppLayout.onlyFAB)];
    bool showDashboardInHome =
        localStorage.getBool('showDashboardInHome') ?? true;
    bool useKancolleListener =
        localStorage.getBool("useKancolleListener") ?? true;
    return SettingsState(
      dashboardIndex: dashboardIndex,
      kcSparkEmoji: kcSparkEmoji,
      kcBattleReportEnable: kcBattleReportEnable,
      enableAutoProcess: enableAutoProcess,
      bottomPadding: bottomPadding,
      enableAutoLoadHomeUrl: enableAutoLoadHomeUrl,
      customHomeUrl: customHomeUrl,
      enableHideFAB: enableHideFAB,
      customUA: customUA,
      appLayout: appLayout,
      showDashboardInHome: showDashboardInHome,
      useKancolleListener: useKancolleListener,
    );
  }

  void rebuild() {
    state = build();
  }

  void setInt(String key, int value) {
    localStorage.setInt(key, value);
    rebuild();
  }

  void setBool(String key, bool value) {
    localStorage.setBool(key, value);
    rebuild();
  }

  void setString(String key, String value) {
    localStorage.setString(key, value);
    rebuild();
  }

  void changeDashboardIndex(int index) {
    state = state.copyWith(dashboardIndex: index);
  }
}
