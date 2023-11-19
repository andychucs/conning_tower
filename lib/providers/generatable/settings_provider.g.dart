// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      dashboardIndex: json['dashboard_index'] as int,
      kcSparkEmoji: json['kc_spark_emoji'] as bool,
      kcBattleReportEnable: json['kc_battle_report_enable'] as bool,
      enableAutoProcess: json['enable_auto_process'] as bool,
      bottomPadding: json['bottom_padding'] as bool,
      enableAutoLoadHomeUrl: json['enable_auto_load_home_url'] as bool,
      customHomeUrl: json['custom_home_url'] as String,
      enableHideFAB: json['enable_hide_f_a_b'] as bool,
      customUA: json['custom_u_a'] as String,
      appLayout: $enumDecode(_$AppLayoutEnumMap, json['app_layout']),
      showDashboardInHome: json['show_dashboard_in_home'] as bool,
      useKancolleListener: json['use_kancolle_listener'] as bool,
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'dashboard_index': instance.dashboardIndex,
      'kc_spark_emoji': instance.kcSparkEmoji,
      'kc_battle_report_enable': instance.kcBattleReportEnable,
      'enable_auto_process': instance.enableAutoProcess,
      'bottom_padding': instance.bottomPadding,
      'enable_auto_load_home_url': instance.enableAutoLoadHomeUrl,
      'custom_home_url': instance.customHomeUrl,
      'enable_hide_f_a_b': instance.enableHideFAB,
      'custom_u_a': instance.customUA,
      'app_layout': _$AppLayoutEnumMap[instance.appLayout]!,
      'show_dashboard_in_home': instance.showDashboardInHome,
      'use_kancolle_listener': instance.useKancolleListener,
    };

const _$AppLayoutEnumMap = {
  AppLayout.onlyFAB: 'onlyFAB',
  AppLayout.onlyJoystick: 'onlyJoystick',
  AppLayout.bothFABJoystick: 'bothFABJoystick',
  AppLayout.pure: 'pure',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsHash() => r'51553617226940e509beb79ffa928b7c3b8f95eb';

/// See also [Settings].
@ProviderFor(Settings)
final settingsProvider =
    AutoDisposeNotifierProvider<Settings, SettingsState>.internal(
  Settings.new,
  name: r'settingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$settingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Settings = AutoDisposeNotifier<SettingsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
