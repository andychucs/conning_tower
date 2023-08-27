// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_mission_start_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqMissionStartEntity _$ReqMissionStartEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMissionStartEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMissionStartEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqMissionStartApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqMissionStartApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMissionStartEntityCopyWith<ReqMissionStartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMissionStartEntityCopyWith<$Res> {
  factory $ReqMissionStartEntityCopyWith(ReqMissionStartEntity value,
          $Res Function(ReqMissionStartEntity) then) =
      _$ReqMissionStartEntityCopyWithImpl<$Res, ReqMissionStartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMissionStartApiDataEntity apiData});

  $ReqMissionStartApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqMissionStartEntityCopyWithImpl<$Res,
        $Val extends ReqMissionStartEntity>
    implements $ReqMissionStartEntityCopyWith<$Res> {
  _$ReqMissionStartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_value.copyWith(
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as int,
      apiResultMsg: null == apiResultMsg
          ? _value.apiResultMsg
          : apiResultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      apiData: null == apiData
          ? _value.apiData
          : apiData // ignore: cast_nullable_to_non_nullable
              as ReqMissionStartApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMissionStartApiDataEntityCopyWith<$Res> get apiData {
    return $ReqMissionStartApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMissionStartEntityCopyWith<$Res>
    implements $ReqMissionStartEntityCopyWith<$Res> {
  factory _$$_ReqMissionStartEntityCopyWith(_$_ReqMissionStartEntity value,
          $Res Function(_$_ReqMissionStartEntity) then) =
      __$$_ReqMissionStartEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMissionStartApiDataEntity apiData});

  @override
  $ReqMissionStartApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqMissionStartEntityCopyWithImpl<$Res>
    extends _$ReqMissionStartEntityCopyWithImpl<$Res, _$_ReqMissionStartEntity>
    implements _$$_ReqMissionStartEntityCopyWith<$Res> {
  __$$_ReqMissionStartEntityCopyWithImpl(_$_ReqMissionStartEntity _value,
      $Res Function(_$_ReqMissionStartEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqMissionStartEntity(
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as int,
      apiResultMsg: null == apiResultMsg
          ? _value.apiResultMsg
          : apiResultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      apiData: null == apiData
          ? _value.apiData
          : apiData // ignore: cast_nullable_to_non_nullable
              as ReqMissionStartApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMissionStartEntity implements _ReqMissionStartEntity {
  _$_ReqMissionStartEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqMissionStartEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMissionStartEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqMissionStartApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqMissionStartEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMissionStartEntityCopyWith<_$_ReqMissionStartEntity> get copyWith =>
      __$$_ReqMissionStartEntityCopyWithImpl<_$_ReqMissionStartEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMissionStartEntityToJson(
      this,
    );
  }
}

abstract class _ReqMissionStartEntity implements ReqMissionStartEntity {
  factory _ReqMissionStartEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required ReqMissionStartApiDataEntity apiData}) =
      _$_ReqMissionStartEntity;

  factory _ReqMissionStartEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMissionStartEntity.fromJson;

  @override
  @JsonKey(name: 'api_result')
  int get apiResult;
  @JsonKey(name: 'api_result')
  set apiResult(int value);
  @override
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value);
  @override
  @JsonKey(name: 'api_data')
  ReqMissionStartApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqMissionStartApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMissionStartEntityCopyWith<_$_ReqMissionStartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqMissionStartApiDataEntity _$ReqMissionStartApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMissionStartApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMissionStartApiDataEntity {
  @JsonKey(name: 'api_complatetime')
  int get apiComplatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complatetime')
  set apiComplatetime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complatetime_str')
  String get apiComplatetimeStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complatetime_str')
  set apiComplatetimeStr(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMissionStartApiDataEntityCopyWith<ReqMissionStartApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMissionStartApiDataEntityCopyWith<$Res> {
  factory $ReqMissionStartApiDataEntityCopyWith(
          ReqMissionStartApiDataEntity value,
          $Res Function(ReqMissionStartApiDataEntity) then) =
      _$ReqMissionStartApiDataEntityCopyWithImpl<$Res,
          ReqMissionStartApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_complatetime') int apiComplatetime,
      @JsonKey(name: 'api_complatetime_str') String apiComplatetimeStr});
}

/// @nodoc
class _$ReqMissionStartApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqMissionStartApiDataEntity>
    implements $ReqMissionStartApiDataEntityCopyWith<$Res> {
  _$ReqMissionStartApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiComplatetime = null,
    Object? apiComplatetimeStr = null,
  }) {
    return _then(_value.copyWith(
      apiComplatetime: null == apiComplatetime
          ? _value.apiComplatetime
          : apiComplatetime // ignore: cast_nullable_to_non_nullable
              as int,
      apiComplatetimeStr: null == apiComplatetimeStr
          ? _value.apiComplatetimeStr
          : apiComplatetimeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMissionStartApiDataEntityCopyWith<$Res>
    implements $ReqMissionStartApiDataEntityCopyWith<$Res> {
  factory _$$_ReqMissionStartApiDataEntityCopyWith(
          _$_ReqMissionStartApiDataEntity value,
          $Res Function(_$_ReqMissionStartApiDataEntity) then) =
      __$$_ReqMissionStartApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_complatetime') int apiComplatetime,
      @JsonKey(name: 'api_complatetime_str') String apiComplatetimeStr});
}

/// @nodoc
class __$$_ReqMissionStartApiDataEntityCopyWithImpl<$Res>
    extends _$ReqMissionStartApiDataEntityCopyWithImpl<$Res,
        _$_ReqMissionStartApiDataEntity>
    implements _$$_ReqMissionStartApiDataEntityCopyWith<$Res> {
  __$$_ReqMissionStartApiDataEntityCopyWithImpl(
      _$_ReqMissionStartApiDataEntity _value,
      $Res Function(_$_ReqMissionStartApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiComplatetime = null,
    Object? apiComplatetimeStr = null,
  }) {
    return _then(_$_ReqMissionStartApiDataEntity(
      apiComplatetime: null == apiComplatetime
          ? _value.apiComplatetime
          : apiComplatetime // ignore: cast_nullable_to_non_nullable
              as int,
      apiComplatetimeStr: null == apiComplatetimeStr
          ? _value.apiComplatetimeStr
          : apiComplatetimeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMissionStartApiDataEntity implements _ReqMissionStartApiDataEntity {
  _$_ReqMissionStartApiDataEntity(
      {@JsonKey(name: 'api_complatetime') required this.apiComplatetime,
      @JsonKey(name: 'api_complatetime_str') required this.apiComplatetimeStr});

  factory _$_ReqMissionStartApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMissionStartApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_complatetime')
  int apiComplatetime;
  @override
  @JsonKey(name: 'api_complatetime_str')
  String apiComplatetimeStr;

  @override
  String toString() {
    return 'ReqMissionStartApiDataEntity(apiComplatetime: $apiComplatetime, apiComplatetimeStr: $apiComplatetimeStr)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMissionStartApiDataEntityCopyWith<_$_ReqMissionStartApiDataEntity>
      get copyWith => __$$_ReqMissionStartApiDataEntityCopyWithImpl<
          _$_ReqMissionStartApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMissionStartApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMissionStartApiDataEntity
    implements ReqMissionStartApiDataEntity {
  factory _ReqMissionStartApiDataEntity(
      {@JsonKey(name: 'api_complatetime') required int apiComplatetime,
      @JsonKey(name: 'api_complatetime_str')
      required String apiComplatetimeStr}) = _$_ReqMissionStartApiDataEntity;

  factory _ReqMissionStartApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMissionStartApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_complatetime')
  int get apiComplatetime;
  @JsonKey(name: 'api_complatetime')
  set apiComplatetime(int value);
  @override
  @JsonKey(name: 'api_complatetime_str')
  String get apiComplatetimeStr;
  @JsonKey(name: 'api_complatetime_str')
  set apiComplatetimeStr(String value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMissionStartApiDataEntityCopyWith<_$_ReqMissionStartApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
