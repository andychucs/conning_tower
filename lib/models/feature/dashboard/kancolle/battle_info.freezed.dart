// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BattleInfo {
  String? get result => throw _privateConstructorUsedError;
  set result(String? value) => throw _privateConstructorUsedError;
  String? get dropName => throw _privateConstructorUsedError;
  set dropName(String? value) => throw _privateConstructorUsedError;
  String? get enemyName => throw _privateConstructorUsedError;
  set enemyName(String? value) => throw _privateConstructorUsedError;
  int? get mvp => throw _privateConstructorUsedError;
  set mvp(int? value) => throw _privateConstructorUsedError;
  List<int>? get enemyShips => throw _privateConstructorUsedError;
  set enemyShips(List<int>? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BattleInfoCopyWith<BattleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleInfoCopyWith<$Res> {
  factory $BattleInfoCopyWith(
          BattleInfo value, $Res Function(BattleInfo) then) =
      _$BattleInfoCopyWithImpl<$Res, BattleInfo>;
  @useResult
  $Res call(
      {String? result,
      String? dropName,
      String? enemyName,
      int? mvp,
      List<int>? enemyShips});
}

/// @nodoc
class _$BattleInfoCopyWithImpl<$Res, $Val extends BattleInfo>
    implements $BattleInfoCopyWith<$Res> {
  _$BattleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? dropName = freezed,
    Object? enemyName = freezed,
    Object? mvp = freezed,
    Object? enemyShips = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      dropName: freezed == dropName
          ? _value.dropName
          : dropName // ignore: cast_nullable_to_non_nullable
              as String?,
      enemyName: freezed == enemyName
          ? _value.enemyName
          : enemyName // ignore: cast_nullable_to_non_nullable
              as String?,
      mvp: freezed == mvp
          ? _value.mvp
          : mvp // ignore: cast_nullable_to_non_nullable
              as int?,
      enemyShips: freezed == enemyShips
          ? _value.enemyShips
          : enemyShips // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattleInfoCopyWith<$Res>
    implements $BattleInfoCopyWith<$Res> {
  factory _$$_BattleInfoCopyWith(
          _$_BattleInfo value, $Res Function(_$_BattleInfo) then) =
      __$$_BattleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? result,
      String? dropName,
      String? enemyName,
      int? mvp,
      List<int>? enemyShips});
}

/// @nodoc
class __$$_BattleInfoCopyWithImpl<$Res>
    extends _$BattleInfoCopyWithImpl<$Res, _$_BattleInfo>
    implements _$$_BattleInfoCopyWith<$Res> {
  __$$_BattleInfoCopyWithImpl(
      _$_BattleInfo _value, $Res Function(_$_BattleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? dropName = freezed,
    Object? enemyName = freezed,
    Object? mvp = freezed,
    Object? enemyShips = freezed,
  }) {
    return _then(_$_BattleInfo(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      dropName: freezed == dropName
          ? _value.dropName
          : dropName // ignore: cast_nullable_to_non_nullable
              as String?,
      enemyName: freezed == enemyName
          ? _value.enemyName
          : enemyName // ignore: cast_nullable_to_non_nullable
              as String?,
      mvp: freezed == mvp
          ? _value.mvp
          : mvp // ignore: cast_nullable_to_non_nullable
              as int?,
      enemyShips: freezed == enemyShips
          ? _value.enemyShips
          : enemyShips // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_BattleInfo extends _BattleInfo with DiagnosticableTreeMixin {
  _$_BattleInfo(
      {this.result, this.dropName, this.enemyName, this.mvp, this.enemyShips})
      : super._();

  @override
  String? result;
  @override
  String? dropName;
  @override
  String? enemyName;
  @override
  int? mvp;
  @override
  List<int>? enemyShips;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattleInfo(result: $result, dropName: $dropName, enemyName: $enemyName, mvp: $mvp, enemyShips: $enemyShips)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattleInfo'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('dropName', dropName))
      ..add(DiagnosticsProperty('enemyName', enemyName))
      ..add(DiagnosticsProperty('mvp', mvp))
      ..add(DiagnosticsProperty('enemyShips', enemyShips));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleInfoCopyWith<_$_BattleInfo> get copyWith =>
      __$$_BattleInfoCopyWithImpl<_$_BattleInfo>(this, _$identity);
}

abstract class _BattleInfo extends BattleInfo {
  factory _BattleInfo(
      {String? result,
      String? dropName,
      String? enemyName,
      int? mvp,
      List<int>? enemyShips}) = _$_BattleInfo;
  _BattleInfo._() : super._();

  @override
  String? get result;
  set result(String? value);
  @override
  String? get dropName;
  set dropName(String? value);
  @override
  String? get enemyName;
  set enemyName(String? value);
  @override
  int? get mvp;
  set mvp(int? value);
  @override
  List<int>? get enemyShips;
  set enemyShips(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$_BattleInfoCopyWith<_$_BattleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
