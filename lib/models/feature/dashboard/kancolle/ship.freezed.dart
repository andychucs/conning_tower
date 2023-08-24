// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Ship {
  int get uid => throw _privateConstructorUsedError; // required int sortNo,
  int get shipId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  List<int> get exp => throw _privateConstructorUsedError;
  int get nowHP => throw _privateConstructorUsedError;
  int get maxHP => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call(
      {int uid,
      int shipId,
      String name,
      int level,
      List<int> exp,
      int nowHP,
      int maxHP});
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? shipId = null,
    Object? name = null,
    Object? level = null,
    Object? exp = null,
    Object? nowHP = null,
    Object? maxHP = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      shipId: null == shipId
          ? _value.shipId
          : shipId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      nowHP: null == nowHP
          ? _value.nowHP
          : nowHP // ignore: cast_nullable_to_non_nullable
              as int,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$_ShipCopyWith(_$_Ship value, $Res Function(_$_Ship) then) =
      __$$_ShipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      int shipId,
      String name,
      int level,
      List<int> exp,
      int nowHP,
      int maxHP});
}

/// @nodoc
class __$$_ShipCopyWithImpl<$Res> extends _$ShipCopyWithImpl<$Res, _$_Ship>
    implements _$$_ShipCopyWith<$Res> {
  __$$_ShipCopyWithImpl(_$_Ship _value, $Res Function(_$_Ship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? shipId = null,
    Object? name = null,
    Object? level = null,
    Object? exp = null,
    Object? nowHP = null,
    Object? maxHP = null,
  }) {
    return _then(_$_Ship(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      shipId: null == shipId
          ? _value.shipId
          : shipId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value._exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      nowHP: null == nowHP
          ? _value.nowHP
          : nowHP // ignore: cast_nullable_to_non_nullable
              as int,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Ship implements _Ship {
  const _$_Ship(
      {required this.uid,
      required this.shipId,
      required this.name,
      required this.level,
      required final List<int> exp,
      required this.nowHP,
      required this.maxHP})
      : _exp = exp;

  @override
  final int uid;
// required int sortNo,
  @override
  final int shipId;
  @override
  final String name;
  @override
  final int level;
  final List<int> _exp;
  @override
  List<int> get exp {
    if (_exp is EqualUnmodifiableListView) return _exp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exp);
  }

  @override
  final int nowHP;
  @override
  final int maxHP;

  @override
  String toString() {
    return 'Ship(uid: $uid, shipId: $shipId, name: $name, level: $level, exp: $exp, nowHP: $nowHP, maxHP: $maxHP)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ship &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.shipId, shipId) || other.shipId == shipId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._exp, _exp) &&
            (identical(other.nowHP, nowHP) || other.nowHP == nowHP) &&
            (identical(other.maxHP, maxHP) || other.maxHP == maxHP));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, shipId, name, level,
      const DeepCollectionEquality().hash(_exp), nowHP, maxHP);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipCopyWith<_$_Ship> get copyWith =>
      __$$_ShipCopyWithImpl<_$_Ship>(this, _$identity);
}

abstract class _Ship implements Ship {
  const factory _Ship(
      {required final int uid,
      required final int shipId,
      required final String name,
      required final int level,
      required final List<int> exp,
      required final int nowHP,
      required final int maxHP}) = _$_Ship;

  @override
  int get uid;
  @override // required int sortNo,
  int get shipId;
  @override
  String get name;
  @override
  int get level;
  @override
  List<int> get exp;
  @override
  int get nowHP;
  @override
  int get maxHP;
  @override
  @JsonKey(ignore: true)
  _$$_ShipCopyWith<_$_Ship> get copyWith => throw _privateConstructorUsedError;
}
