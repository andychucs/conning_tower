// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiData _$ApiDataFromJson(Map<String, dynamic> json) {
  return _ApiData.fromJson(json);
}

/// @nodoc
mixin _$ApiData {
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDataCopyWith<ApiData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataCopyWith<$Res> {
  factory $ApiDataCopyWith(ApiData value, $Res Function(ApiData) then) =
      _$ApiDataCopyWithImpl<$Res, ApiData>;
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class _$ApiDataCopyWithImpl<$Res, $Val extends ApiData>
    implements $ApiDataCopyWith<$Res> {
  _$ApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiDataCopyWith<$Res> implements $ApiDataCopyWith<$Res> {
  factory _$$_ApiDataCopyWith(
          _$_ApiData value, $Res Function(_$_ApiData) then) =
      __$$_ApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$_ApiDataCopyWithImpl<$Res>
    extends _$ApiDataCopyWithImpl<$Res, _$_ApiData>
    implements _$$_ApiDataCopyWith<$Res> {
  __$$_ApiDataCopyWithImpl(_$_ApiData _value, $Res Function(_$_ApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiData(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiData implements _ApiData {
  _$_ApiData({required final List<Map<String, dynamic>> data}) : _data = data;

  factory _$_ApiData.fromJson(Map<String, dynamic> json) =>
      _$$_ApiDataFromJson(json);

  final List<Map<String, dynamic>> _data;
  @override
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ApiData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiDataCopyWith<_$_ApiData> get copyWith =>
      __$$_ApiDataCopyWithImpl<_$_ApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiDataToJson(
      this,
    );
  }
}

abstract class _ApiData implements ApiData {
  factory _ApiData({required final List<Map<String, dynamic>> data}) =
      _$_ApiData;

  factory _ApiData.fromJson(Map<String, dynamic> json) = _$_ApiData.fromJson;

  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiDataCopyWith<_$_ApiData> get copyWith =>
      throw _privateConstructorUsedError;
}
