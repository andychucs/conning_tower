// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kcwiki_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KcwikiData _$KcwikiDataFromJson(Map<String, dynamic> json) {
  return _KcwikiData.fromJson(json);
}

/// @nodoc
mixin _$KcwikiData {
  List<Ship> get ships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KcwikiDataCopyWith<KcwikiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KcwikiDataCopyWith<$Res> {
  factory $KcwikiDataCopyWith(
          KcwikiData value, $Res Function(KcwikiData) then) =
      _$KcwikiDataCopyWithImpl<$Res, KcwikiData>;
  @useResult
  $Res call({List<Ship> ships});
}

/// @nodoc
class _$KcwikiDataCopyWithImpl<$Res, $Val extends KcwikiData>
    implements $KcwikiDataCopyWith<$Res> {
  _$KcwikiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ships = null,
  }) {
    return _then(_value.copyWith(
      ships: null == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KcwikiDataCopyWith<$Res>
    implements $KcwikiDataCopyWith<$Res> {
  factory _$$_KcwikiDataCopyWith(
          _$_KcwikiData value, $Res Function(_$_KcwikiData) then) =
      __$$_KcwikiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ship> ships});
}

/// @nodoc
class __$$_KcwikiDataCopyWithImpl<$Res>
    extends _$KcwikiDataCopyWithImpl<$Res, _$_KcwikiData>
    implements _$$_KcwikiDataCopyWith<$Res> {
  __$$_KcwikiDataCopyWithImpl(
      _$_KcwikiData _value, $Res Function(_$_KcwikiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ships = null,
  }) {
    return _then(_$_KcwikiData(
      ships: null == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KcwikiData with DiagnosticableTreeMixin implements _KcwikiData {
  const _$_KcwikiData({required final List<Ship> ships}) : _ships = ships;

  factory _$_KcwikiData.fromJson(Map<String, dynamic> json) =>
      _$$_KcwikiDataFromJson(json);

  final List<Ship> _ships;
  @override
  List<Ship> get ships {
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ships);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KcwikiData(ships: $ships)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KcwikiData'))
      ..add(DiagnosticsProperty('ships', ships));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KcwikiData &&
            const DeepCollectionEquality().equals(other._ships, _ships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KcwikiDataCopyWith<_$_KcwikiData> get copyWith =>
      __$$_KcwikiDataCopyWithImpl<_$_KcwikiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KcwikiDataToJson(
      this,
    );
  }
}

abstract class _KcwikiData implements KcwikiData {
  const factory _KcwikiData({required final List<Ship> ships}) = _$_KcwikiData;

  factory _KcwikiData.fromJson(Map<String, dynamic> json) =
      _$_KcwikiData.fromJson;

  @override
  List<Ship> get ships;
  @override
  @JsonKey(ignore: true)
  _$$_KcwikiDataCopyWith<_$_KcwikiData> get copyWith =>
      throw _privateConstructorUsedError;
}
