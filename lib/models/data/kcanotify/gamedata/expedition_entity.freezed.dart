// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expedition_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpeditionEntity _$ExpeditionEntityFromJson(Map<String, dynamic> json) {
  return _ExpeditionEntity.fromJson(json);
}

/// @nodoc
mixin _$ExpeditionEntity {
  String get no => throw _privateConstructorUsedError;
  set no(String value) => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  int get area => throw _privateConstructorUsedError;
  set area(int value) => throw _privateConstructorUsedError;
  ExpeditionNameEntity get name => throw _privateConstructorUsedError;
  set name(ExpeditionNameEntity value) => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  set time(int value) => throw _privateConstructorUsedError;
  List<int> get resource => throw _privateConstructorUsedError;
  set resource(List<int> value) => throw _privateConstructorUsedError;
  List<dynamic> get reward => throw _privateConstructorUsedError;
  set reward(List<dynamic> value) => throw _privateConstructorUsedError;
  List<int> get exp => throw _privateConstructorUsedError;
  set exp(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total-num')
  int get totalNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'total-num')
  set totalNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'flag-lv')
  int get flagLv => throw _privateConstructorUsedError;
  @JsonKey(name: 'flag-lv')
  set flagLv(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpeditionEntityCopyWith<ExpeditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpeditionEntityCopyWith<$Res> {
  factory $ExpeditionEntityCopyWith(
          ExpeditionEntity value, $Res Function(ExpeditionEntity) then) =
      _$ExpeditionEntityCopyWithImpl<$Res, ExpeditionEntity>;
  @useResult
  $Res call(
      {String no,
      String code,
      int area,
      ExpeditionNameEntity name,
      int time,
      List<int> resource,
      List<dynamic> reward,
      List<int> exp,
      @JsonKey(name: 'total-num') int totalNum,
      @JsonKey(name: 'flag-lv') int flagLv});

  $ExpeditionNameEntityCopyWith<$Res> get name;
}

/// @nodoc
class _$ExpeditionEntityCopyWithImpl<$Res, $Val extends ExpeditionEntity>
    implements $ExpeditionEntityCopyWith<$Res> {
  _$ExpeditionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? code = null,
    Object? area = null,
    Object? name = null,
    Object? time = null,
    Object? resource = null,
    Object? reward = null,
    Object? exp = null,
    Object? totalNum = null,
    Object? flagLv = null,
  }) {
    return _then(_value.copyWith(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ExpeditionNameEntity,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<int>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
      flagLv: null == flagLv
          ? _value.flagLv
          : flagLv // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpeditionNameEntityCopyWith<$Res> get name {
    return $ExpeditionNameEntityCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExpeditionEntityCopyWith<$Res>
    implements $ExpeditionEntityCopyWith<$Res> {
  factory _$$_ExpeditionEntityCopyWith(
          _$_ExpeditionEntity value, $Res Function(_$_ExpeditionEntity) then) =
      __$$_ExpeditionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String no,
      String code,
      int area,
      ExpeditionNameEntity name,
      int time,
      List<int> resource,
      List<dynamic> reward,
      List<int> exp,
      @JsonKey(name: 'total-num') int totalNum,
      @JsonKey(name: 'flag-lv') int flagLv});

  @override
  $ExpeditionNameEntityCopyWith<$Res> get name;
}

/// @nodoc
class __$$_ExpeditionEntityCopyWithImpl<$Res>
    extends _$ExpeditionEntityCopyWithImpl<$Res, _$_ExpeditionEntity>
    implements _$$_ExpeditionEntityCopyWith<$Res> {
  __$$_ExpeditionEntityCopyWithImpl(
      _$_ExpeditionEntity _value, $Res Function(_$_ExpeditionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? code = null,
    Object? area = null,
    Object? name = null,
    Object? time = null,
    Object? resource = null,
    Object? reward = null,
    Object? exp = null,
    Object? totalNum = null,
    Object? flagLv = null,
  }) {
    return _then(_$_ExpeditionEntity(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ExpeditionNameEntity,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<int>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
      flagLv: null == flagLv
          ? _value.flagLv
          : flagLv // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpeditionEntity implements _ExpeditionEntity {
  _$_ExpeditionEntity(
      {required this.no,
      required this.code,
      required this.area,
      required this.name,
      required this.time,
      required this.resource,
      required this.reward,
      required this.exp,
      @JsonKey(name: 'total-num') required this.totalNum,
      @JsonKey(name: 'flag-lv') required this.flagLv});

  factory _$_ExpeditionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ExpeditionEntityFromJson(json);

  @override
  String no;
  @override
  String code;
  @override
  int area;
  @override
  ExpeditionNameEntity name;
  @override
  int time;
  @override
  List<int> resource;
  @override
  List<dynamic> reward;
  @override
  List<int> exp;
  @override
  @JsonKey(name: 'total-num')
  int totalNum;
  @override
  @JsonKey(name: 'flag-lv')
  int flagLv;

  @override
  String toString() {
    return 'ExpeditionEntity(no: $no, code: $code, area: $area, name: $name, time: $time, resource: $resource, reward: $reward, exp: $exp, totalNum: $totalNum, flagLv: $flagLv)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpeditionEntityCopyWith<_$_ExpeditionEntity> get copyWith =>
      __$$_ExpeditionEntityCopyWithImpl<_$_ExpeditionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpeditionEntityToJson(
      this,
    );
  }
}

abstract class _ExpeditionEntity implements ExpeditionEntity {
  factory _ExpeditionEntity(
      {required String no,
      required String code,
      required int area,
      required ExpeditionNameEntity name,
      required int time,
      required List<int> resource,
      required List<dynamic> reward,
      required List<int> exp,
      @JsonKey(name: 'total-num') required int totalNum,
      @JsonKey(name: 'flag-lv') required int flagLv}) = _$_ExpeditionEntity;

  factory _ExpeditionEntity.fromJson(Map<String, dynamic> json) =
      _$_ExpeditionEntity.fromJson;

  @override
  String get no;
  set no(String value);
  @override
  String get code;
  set code(String value);
  @override
  int get area;
  set area(int value);
  @override
  ExpeditionNameEntity get name;
  set name(ExpeditionNameEntity value);
  @override
  int get time;
  set time(int value);
  @override
  List<int> get resource;
  set resource(List<int> value);
  @override
  List<dynamic> get reward;
  set reward(List<dynamic> value);
  @override
  List<int> get exp;
  set exp(List<int> value);
  @override
  @JsonKey(name: 'total-num')
  int get totalNum;
  @JsonKey(name: 'total-num')
  set totalNum(int value);
  @override
  @JsonKey(name: 'flag-lv')
  int get flagLv;
  @JsonKey(name: 'flag-lv')
  set flagLv(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ExpeditionEntityCopyWith<_$_ExpeditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpeditionNameEntity _$ExpeditionNameEntityFromJson(Map<String, dynamic> json) {
  return _ExpeditionNameEntity.fromJson(json);
}

/// @nodoc
mixin _$ExpeditionNameEntity {
  String get jp => throw _privateConstructorUsedError;
  set jp(String value) => throw _privateConstructorUsedError;
  String get ko => throw _privateConstructorUsedError;
  set ko(String value) => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;
  set en(String value) => throw _privateConstructorUsedError;
  String get scn => throw _privateConstructorUsedError;
  set scn(String value) => throw _privateConstructorUsedError;
  String get tcn => throw _privateConstructorUsedError;
  set tcn(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpeditionNameEntityCopyWith<ExpeditionNameEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpeditionNameEntityCopyWith<$Res> {
  factory $ExpeditionNameEntityCopyWith(ExpeditionNameEntity value,
          $Res Function(ExpeditionNameEntity) then) =
      _$ExpeditionNameEntityCopyWithImpl<$Res, ExpeditionNameEntity>;
  @useResult
  $Res call({String jp, String ko, String en, String scn, String tcn});
}

/// @nodoc
class _$ExpeditionNameEntityCopyWithImpl<$Res,
        $Val extends ExpeditionNameEntity>
    implements $ExpeditionNameEntityCopyWith<$Res> {
  _$ExpeditionNameEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jp = null,
    Object? ko = null,
    Object? en = null,
    Object? scn = null,
    Object? tcn = null,
  }) {
    return _then(_value.copyWith(
      jp: null == jp
          ? _value.jp
          : jp // ignore: cast_nullable_to_non_nullable
              as String,
      ko: null == ko
          ? _value.ko
          : ko // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      scn: null == scn
          ? _value.scn
          : scn // ignore: cast_nullable_to_non_nullable
              as String,
      tcn: null == tcn
          ? _value.tcn
          : tcn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpeditionNameEntityCopyWith<$Res>
    implements $ExpeditionNameEntityCopyWith<$Res> {
  factory _$$_ExpeditionNameEntityCopyWith(_$_ExpeditionNameEntity value,
          $Res Function(_$_ExpeditionNameEntity) then) =
      __$$_ExpeditionNameEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jp, String ko, String en, String scn, String tcn});
}

/// @nodoc
class __$$_ExpeditionNameEntityCopyWithImpl<$Res>
    extends _$ExpeditionNameEntityCopyWithImpl<$Res, _$_ExpeditionNameEntity>
    implements _$$_ExpeditionNameEntityCopyWith<$Res> {
  __$$_ExpeditionNameEntityCopyWithImpl(_$_ExpeditionNameEntity _value,
      $Res Function(_$_ExpeditionNameEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jp = null,
    Object? ko = null,
    Object? en = null,
    Object? scn = null,
    Object? tcn = null,
  }) {
    return _then(_$_ExpeditionNameEntity(
      jp: null == jp
          ? _value.jp
          : jp // ignore: cast_nullable_to_non_nullable
              as String,
      ko: null == ko
          ? _value.ko
          : ko // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      scn: null == scn
          ? _value.scn
          : scn // ignore: cast_nullable_to_non_nullable
              as String,
      tcn: null == tcn
          ? _value.tcn
          : tcn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpeditionNameEntity implements _ExpeditionNameEntity {
  _$_ExpeditionNameEntity(
      {required this.jp,
      required this.ko,
      required this.en,
      required this.scn,
      required this.tcn});

  factory _$_ExpeditionNameEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ExpeditionNameEntityFromJson(json);

  @override
  String jp;
  @override
  String ko;
  @override
  String en;
  @override
  String scn;
  @override
  String tcn;

  @override
  String toString() {
    return 'ExpeditionNameEntity(jp: $jp, ko: $ko, en: $en, scn: $scn, tcn: $tcn)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpeditionNameEntityCopyWith<_$_ExpeditionNameEntity> get copyWith =>
      __$$_ExpeditionNameEntityCopyWithImpl<_$_ExpeditionNameEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpeditionNameEntityToJson(
      this,
    );
  }
}

abstract class _ExpeditionNameEntity implements ExpeditionNameEntity {
  factory _ExpeditionNameEntity(
      {required String jp,
      required String ko,
      required String en,
      required String scn,
      required String tcn}) = _$_ExpeditionNameEntity;

  factory _ExpeditionNameEntity.fromJson(Map<String, dynamic> json) =
      _$_ExpeditionNameEntity.fromJson;

  @override
  String get jp;
  set jp(String value);
  @override
  String get ko;
  set ko(String value);
  @override
  String get en;
  set en(String value);
  @override
  String get scn;
  set scn(String value);
  @override
  String get tcn;
  set tcn(String value);
  @override
  @JsonKey(ignore: true)
  _$$_ExpeditionNameEntityCopyWith<_$_ExpeditionNameEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
