// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fleet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Fleet {
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FleetCopyWith<Fleet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FleetCopyWith<$Res> {
  factory $FleetCopyWith(Fleet value, $Res Function(Fleet) then) =
      _$FleetCopyWithImpl<$Res, Fleet>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$FleetCopyWithImpl<$Res, $Val extends Fleet>
    implements $FleetCopyWith<$Res> {
  _$FleetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FleetCopyWith<$Res> implements $FleetCopyWith<$Res> {
  factory _$$_FleetCopyWith(_$_Fleet value, $Res Function(_$_Fleet) then) =
      __$$_FleetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_FleetCopyWithImpl<$Res> extends _$FleetCopyWithImpl<$Res, _$_Fleet>
    implements _$$_FleetCopyWith<$Res> {
  __$$_FleetCopyWithImpl(_$_Fleet _value, $Res Function(_$_Fleet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_Fleet(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Fleet with DiagnosticableTreeMixin implements _Fleet {
  _$_Fleet({required this.count});

  @override
  int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Fleet(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Fleet'))
      ..add(DiagnosticsProperty('count', count));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FleetCopyWith<_$_Fleet> get copyWith =>
      __$$_FleetCopyWithImpl<_$_Fleet>(this, _$identity);
}

abstract class _Fleet implements Fleet {
  factory _Fleet({required int count}) = _$_Fleet;

  @override
  int get count;
  set count(int value);
  @override
  @JsonKey(ignore: true)
  _$$_FleetCopyWith<_$_Fleet> get copyWith =>
      throw _privateConstructorUsedError;
}
