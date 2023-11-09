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
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'dashboard_index': instance.dashboardIndex,
      'kc_spark_emoji': instance.kcSparkEmoji,
      'kc_battle_report_enable': instance.kcBattleReportEnable,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsHash() => r'd23588c4b69e5fe3f43589ba62a4db3d6dcc4109';

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
