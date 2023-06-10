// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceManagerState {
  List<DeviceOrientation> get orientation => throw _privateConstructorUsedError;
  int get orientationIndex => throw _privateConstructorUsedError;
  DeviceType? get deviceType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceManagerStateCopyWith<DeviceManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceManagerStateCopyWith<$Res> {
  factory $DeviceManagerStateCopyWith(
          DeviceManagerState value, $Res Function(DeviceManagerState) then) =
      _$DeviceManagerStateCopyWithImpl<$Res, DeviceManagerState>;
  @useResult
  $Res call(
      {List<DeviceOrientation> orientation,
      int orientationIndex,
      DeviceType? deviceType});
}

/// @nodoc
class _$DeviceManagerStateCopyWithImpl<$Res, $Val extends DeviceManagerState>
    implements $DeviceManagerStateCopyWith<$Res> {
  _$DeviceManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? orientationIndex = null,
    Object? deviceType = freezed,
  }) {
    return _then(_value.copyWith(
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as List<DeviceOrientation>,
      orientationIndex: null == orientationIndex
          ? _value.orientationIndex
          : orientationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceManagerStateCopyWith<$Res>
    implements $DeviceManagerStateCopyWith<$Res> {
  factory _$$_DeviceManagerStateCopyWith(_$_DeviceManagerState value,
          $Res Function(_$_DeviceManagerState) then) =
      __$$_DeviceManagerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeviceOrientation> orientation,
      int orientationIndex,
      DeviceType? deviceType});
}

/// @nodoc
class __$$_DeviceManagerStateCopyWithImpl<$Res>
    extends _$DeviceManagerStateCopyWithImpl<$Res, _$_DeviceManagerState>
    implements _$$_DeviceManagerStateCopyWith<$Res> {
  __$$_DeviceManagerStateCopyWithImpl(
      _$_DeviceManagerState _value, $Res Function(_$_DeviceManagerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? orientationIndex = null,
    Object? deviceType = freezed,
  }) {
    return _then(_$_DeviceManagerState(
      orientation: null == orientation
          ? _value._orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as List<DeviceOrientation>,
      orientationIndex: null == orientationIndex
          ? _value.orientationIndex
          : orientationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
    ));
  }
}

/// @nodoc

class _$_DeviceManagerState implements _DeviceManagerState {
  _$_DeviceManagerState(
      {required final List<DeviceOrientation> orientation,
      required this.orientationIndex,
      required this.deviceType})
      : _orientation = orientation;

  final List<DeviceOrientation> _orientation;
  @override
  List<DeviceOrientation> get orientation {
    if (_orientation is EqualUnmodifiableListView) return _orientation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orientation);
  }

  @override
  final int orientationIndex;
  @override
  final DeviceType? deviceType;

  @override
  String toString() {
    return 'DeviceManagerState(orientation: $orientation, orientationIndex: $orientationIndex, deviceType: $deviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceManagerState &&
            const DeepCollectionEquality()
                .equals(other._orientation, _orientation) &&
            (identical(other.orientationIndex, orientationIndex) ||
                other.orientationIndex == orientationIndex) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orientation),
      orientationIndex,
      deviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceManagerStateCopyWith<_$_DeviceManagerState> get copyWith =>
      __$$_DeviceManagerStateCopyWithImpl<_$_DeviceManagerState>(
          this, _$identity);
}

abstract class _DeviceManagerState implements DeviceManagerState {
  factory _DeviceManagerState(
      {required final List<DeviceOrientation> orientation,
      required final int orientationIndex,
      required final DeviceType? deviceType}) = _$_DeviceManagerState;

  @override
  List<DeviceOrientation> get orientation;
  @override
  int get orientationIndex;
  @override
  DeviceType? get deviceType;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceManagerStateCopyWith<_$_DeviceManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
