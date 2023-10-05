// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      dashboardIndex: json['dashboard_index'] as int,
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'dashboard_index': instance.dashboardIndex,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsHash() => r'283689ecea05a5a6a5eb62c76aa2c2ebfd049931';

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
