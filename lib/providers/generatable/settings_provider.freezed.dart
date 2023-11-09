// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
mixin _$SettingsState {
  int get dashboardIndex => throw _privateConstructorUsedError;
  bool get kcSparkEmoji => throw _privateConstructorUsedError;
  bool get kcBattleReportEnable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({int dashboardIndex, bool kcSparkEmoji, bool kcBattleReportEnable});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardIndex = null,
    Object? kcSparkEmoji = null,
    Object? kcBattleReportEnable = null,
  }) {
    return _then(_value.copyWith(
      dashboardIndex: null == dashboardIndex
          ? _value.dashboardIndex
          : dashboardIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kcSparkEmoji: null == kcSparkEmoji
          ? _value.kcSparkEmoji
          : kcSparkEmoji // ignore: cast_nullable_to_non_nullable
              as bool,
      kcBattleReportEnable: null == kcBattleReportEnable
          ? _value.kcBattleReportEnable
          : kcBattleReportEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dashboardIndex, bool kcSparkEmoji, bool kcBattleReportEnable});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardIndex = null,
    Object? kcSparkEmoji = null,
    Object? kcBattleReportEnable = null,
  }) {
    return _then(_$_SettingsState(
      dashboardIndex: null == dashboardIndex
          ? _value.dashboardIndex
          : dashboardIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kcSparkEmoji: null == kcSparkEmoji
          ? _value.kcSparkEmoji
          : kcSparkEmoji // ignore: cast_nullable_to_non_nullable
              as bool,
      kcBattleReportEnable: null == kcBattleReportEnable
          ? _value.kcBattleReportEnable
          : kcBattleReportEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsState with DiagnosticableTreeMixin implements _SettingsState {
  const _$_SettingsState(
      {required this.dashboardIndex,
      required this.kcSparkEmoji,
      required this.kcBattleReportEnable});

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsStateFromJson(json);

  @override
  final int dashboardIndex;
  @override
  final bool kcSparkEmoji;
  @override
  final bool kcBattleReportEnable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(dashboardIndex: $dashboardIndex, kcSparkEmoji: $kcSparkEmoji, kcBattleReportEnable: $kcBattleReportEnable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('dashboardIndex', dashboardIndex))
      ..add(DiagnosticsProperty('kcSparkEmoji', kcSparkEmoji))
      ..add(DiagnosticsProperty('kcBattleReportEnable', kcBattleReportEnable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.dashboardIndex, dashboardIndex) ||
                other.dashboardIndex == dashboardIndex) &&
            (identical(other.kcSparkEmoji, kcSparkEmoji) ||
                other.kcSparkEmoji == kcSparkEmoji) &&
            (identical(other.kcBattleReportEnable, kcBattleReportEnable) ||
                other.kcBattleReportEnable == kcBattleReportEnable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dashboardIndex, kcSparkEmoji, kcBattleReportEnable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsStateToJson(
      this,
    );
  }
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final int dashboardIndex,
      required final bool kcSparkEmoji,
      required final bool kcBattleReportEnable}) = _$_SettingsState;

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  int get dashboardIndex;
  @override
  bool get kcSparkEmoji;
  @override
  bool get kcBattleReportEnable;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
