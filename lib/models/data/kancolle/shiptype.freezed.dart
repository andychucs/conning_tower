// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shiptype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipType _$ShipTypeFromJson(Map<String, dynamic> json) {
  return _ShipType.fromJson(json);
}

/// @nodoc
mixin _$ShipType {
  int get id => throw _privateConstructorUsedError;
  int get sortNo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get scnt => throw _privateConstructorUsedError;
  int get kcnt => throw _privateConstructorUsedError;
  Map<String, int> get equipType => throw _privateConstructorUsedError;
  String get chineseName => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipTypeCopyWith<ShipType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipTypeCopyWith<$Res> {
  factory $ShipTypeCopyWith(ShipType value, $Res Function(ShipType) then) =
      _$ShipTypeCopyWithImpl<$Res, ShipType>;
  @useResult
  $Res call(
      {int id,
      int sortNo,
      String name,
      int scnt,
      int kcnt,
      Map<String, int> equipType,
      String chineseName,
      String englishName});
}

/// @nodoc
class _$ShipTypeCopyWithImpl<$Res, $Val extends ShipType>
    implements $ShipTypeCopyWith<$Res> {
  _$ShipTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sortNo = null,
    Object? name = null,
    Object? scnt = null,
    Object? kcnt = null,
    Object? equipType = null,
    Object? chineseName = null,
    Object? englishName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scnt: null == scnt
          ? _value.scnt
          : scnt // ignore: cast_nullable_to_non_nullable
              as int,
      kcnt: null == kcnt
          ? _value.kcnt
          : kcnt // ignore: cast_nullable_to_non_nullable
              as int,
      equipType: null == equipType
          ? _value.equipType
          : equipType // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      chineseName: null == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipTypeCopyWith<$Res> implements $ShipTypeCopyWith<$Res> {
  factory _$$_ShipTypeCopyWith(
          _$_ShipType value, $Res Function(_$_ShipType) then) =
      __$$_ShipTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int sortNo,
      String name,
      int scnt,
      int kcnt,
      Map<String, int> equipType,
      String chineseName,
      String englishName});
}

/// @nodoc
class __$$_ShipTypeCopyWithImpl<$Res>
    extends _$ShipTypeCopyWithImpl<$Res, _$_ShipType>
    implements _$$_ShipTypeCopyWith<$Res> {
  __$$_ShipTypeCopyWithImpl(
      _$_ShipType _value, $Res Function(_$_ShipType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sortNo = null,
    Object? name = null,
    Object? scnt = null,
    Object? kcnt = null,
    Object? equipType = null,
    Object? chineseName = null,
    Object? englishName = null,
  }) {
    return _then(_$_ShipType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scnt: null == scnt
          ? _value.scnt
          : scnt // ignore: cast_nullable_to_non_nullable
              as int,
      kcnt: null == kcnt
          ? _value.kcnt
          : kcnt // ignore: cast_nullable_to_non_nullable
              as int,
      equipType: null == equipType
          ? _value._equipType
          : equipType // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      chineseName: null == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipType implements _ShipType {
  _$_ShipType(
      {required this.id,
      required this.sortNo,
      required this.name,
      required this.scnt,
      required this.kcnt,
      required final Map<String, int> equipType,
      required this.chineseName,
      required this.englishName})
      : _equipType = equipType;

  factory _$_ShipType.fromJson(Map<String, dynamic> json) =>
      _$$_ShipTypeFromJson(json);

  @override
  final int id;
  @override
  final int sortNo;
  @override
  final String name;
  @override
  final int scnt;
  @override
  final int kcnt;
  final Map<String, int> _equipType;
  @override
  Map<String, int> get equipType {
    if (_equipType is EqualUnmodifiableMapView) return _equipType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_equipType);
  }

  @override
  final String chineseName;
  @override
  final String englishName;

  @override
  String toString() {
    return 'ShipType(id: $id, sortNo: $sortNo, name: $name, scnt: $scnt, kcnt: $kcnt, equipType: $equipType, chineseName: $chineseName, englishName: $englishName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sortNo, sortNo) || other.sortNo == sortNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scnt, scnt) || other.scnt == scnt) &&
            (identical(other.kcnt, kcnt) || other.kcnt == kcnt) &&
            const DeepCollectionEquality()
                .equals(other._equipType, _equipType) &&
            (identical(other.chineseName, chineseName) ||
                other.chineseName == chineseName) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sortNo,
      name,
      scnt,
      kcnt,
      const DeepCollectionEquality().hash(_equipType),
      chineseName,
      englishName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipTypeCopyWith<_$_ShipType> get copyWith =>
      __$$_ShipTypeCopyWithImpl<_$_ShipType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipTypeToJson(
      this,
    );
  }
}

abstract class _ShipType implements ShipType {
  factory _ShipType(
      {required final int id,
      required final int sortNo,
      required final String name,
      required final int scnt,
      required final int kcnt,
      required final Map<String, int> equipType,
      required final String chineseName,
      required final String englishName}) = _$_ShipType;

  factory _ShipType.fromJson(Map<String, dynamic> json) = _$_ShipType.fromJson;

  @override
  int get id;
  @override
  int get sortNo;
  @override
  String get name;
  @override
  int get scnt;
  @override
  int get kcnt;
  @override
  Map<String, int> get equipType;
  @override
  String get chineseName;
  @override
  String get englishName;
  @override
  @JsonKey(ignore: true)
  _$$_ShipTypeCopyWith<_$_ShipType> get copyWith =>
      throw _privateConstructorUsedError;
}
