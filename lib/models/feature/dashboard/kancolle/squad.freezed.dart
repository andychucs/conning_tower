// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'squad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Squad {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int? get operation => throw _privateConstructorUsedError;
  set operation(int? value) => throw _privateConstructorUsedError;
  List<Ship> get ships => throw _privateConstructorUsedError;
  set ships(List<Ship> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SquadCopyWith<Squad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SquadCopyWith<$Res> {
  factory $SquadCopyWith(Squad value, $Res Function(Squad) then) =
      _$SquadCopyWithImpl<$Res, Squad>;
  @useResult
  $Res call({int id, String name, int? operation, List<Ship> ships});
}

/// @nodoc
class _$SquadCopyWithImpl<$Res, $Val extends Squad>
    implements $SquadCopyWith<$Res> {
  _$SquadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? operation = freezed,
    Object? ships = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as int?,
      ships: null == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SquadCopyWith<$Res> implements $SquadCopyWith<$Res> {
  factory _$$_SquadCopyWith(_$_Squad value, $Res Function(_$_Squad) then) =
      __$$_SquadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int? operation, List<Ship> ships});
}

/// @nodoc
class __$$_SquadCopyWithImpl<$Res> extends _$SquadCopyWithImpl<$Res, _$_Squad>
    implements _$$_SquadCopyWith<$Res> {
  __$$_SquadCopyWithImpl(_$_Squad _value, $Res Function(_$_Squad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? operation = freezed,
    Object? ships = null,
  }) {
    return _then(_$_Squad(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as int?,
      ships: null == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
    ));
  }
}

/// @nodoc

class _$_Squad implements _Squad {
  _$_Squad(
      {required this.id,
      required this.name,
      this.operation,
      required this.ships});

  @override
  int id;
  @override
  String name;
  @override
  int? operation;
  @override
  List<Ship> ships;

  @override
  String toString() {
    return 'Squad(id: $id, name: $name, operation: $operation, ships: $ships)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SquadCopyWith<_$_Squad> get copyWith =>
      __$$_SquadCopyWithImpl<_$_Squad>(this, _$identity);
}

abstract class _Squad implements Squad {
  factory _Squad(
      {required int id,
      required String name,
      int? operation,
      required List<Ship> ships}) = _$_Squad;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  int? get operation;
  set operation(int? value);
  @override
  List<Ship> get ships;
  set ships(List<Ship> value);
  @override
  @JsonKey(ignore: true)
  _$$_SquadCopyWith<_$_Squad> get copyWith =>
      throw _privateConstructorUsedError;
}
