// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sea_force_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeaForceBase {
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeaForceBaseCopyWith<SeaForceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeaForceBaseCopyWith<$Res> {
  factory $SeaForceBaseCopyWith(
          SeaForceBase value, $Res Function(SeaForceBase) then) =
      _$SeaForceBaseCopyWithImpl<$Res, SeaForceBase>;
  @useResult
  $Res call({int level});
}

/// @nodoc
class _$SeaForceBaseCopyWithImpl<$Res, $Val extends SeaForceBase>
    implements $SeaForceBaseCopyWith<$Res> {
  _$SeaForceBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeaForceBaseCopyWith<$Res>
    implements $SeaForceBaseCopyWith<$Res> {
  factory _$$_SeaForceBaseCopyWith(
          _$_SeaForceBase value, $Res Function(_$_SeaForceBase) then) =
      __$$_SeaForceBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level});
}

/// @nodoc
class __$$_SeaForceBaseCopyWithImpl<$Res>
    extends _$SeaForceBaseCopyWithImpl<$Res, _$_SeaForceBase>
    implements _$$_SeaForceBaseCopyWith<$Res> {
  __$$_SeaForceBaseCopyWithImpl(
      _$_SeaForceBase _value, $Res Function(_$_SeaForceBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$_SeaForceBase(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SeaForceBase implements _SeaForceBase {
  const _$_SeaForceBase({required this.level});

  @override
  final int level;

  @override
  String toString() {
    return 'SeaForceBase(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeaForceBase &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeaForceBaseCopyWith<_$_SeaForceBase> get copyWith =>
      __$$_SeaForceBaseCopyWithImpl<_$_SeaForceBase>(this, _$identity);
}

abstract class _SeaForceBase implements SeaForceBase {
  const factory _SeaForceBase({required final int level}) = _$_SeaForceBase;

  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$_SeaForceBaseCopyWith<_$_SeaForceBase> get copyWith =>
      throw _privateConstructorUsedError;
}
