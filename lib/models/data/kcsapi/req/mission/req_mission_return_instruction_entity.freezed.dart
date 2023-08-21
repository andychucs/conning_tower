// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_mission_return_instruction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqMissionReturnInstructionEntity _$ReqMissionReturnInstructionEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMissionReturnInstructionEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMissionReturnInstructionEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqMissionReturnInstructionApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqMissionReturnInstructionApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMissionReturnInstructionEntityCopyWith<ReqMissionReturnInstructionEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMissionReturnInstructionEntityCopyWith<$Res> {
  factory $ReqMissionReturnInstructionEntityCopyWith(
          ReqMissionReturnInstructionEntity value,
          $Res Function(ReqMissionReturnInstructionEntity) then) =
      _$ReqMissionReturnInstructionEntityCopyWithImpl<$Res,
          ReqMissionReturnInstructionEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data')
      ReqMissionReturnInstructionApiDataEntity apiData});

  $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqMissionReturnInstructionEntityCopyWithImpl<$Res,
        $Val extends ReqMissionReturnInstructionEntity>
    implements $ReqMissionReturnInstructionEntityCopyWith<$Res> {
  _$ReqMissionReturnInstructionEntityCopyWithImpl(this._value, this._then);

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
              as ReqMissionReturnInstructionApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> get apiData {
    return $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res>(
        _value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMissionReturnInstructionEntityCopyWith<$Res>
    implements $ReqMissionReturnInstructionEntityCopyWith<$Res> {
  factory _$$_ReqMissionReturnInstructionEntityCopyWith(
          _$_ReqMissionReturnInstructionEntity value,
          $Res Function(_$_ReqMissionReturnInstructionEntity) then) =
      __$$_ReqMissionReturnInstructionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data')
      ReqMissionReturnInstructionApiDataEntity apiData});

  @override
  $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqMissionReturnInstructionEntityCopyWithImpl<$Res>
    extends _$ReqMissionReturnInstructionEntityCopyWithImpl<$Res,
        _$_ReqMissionReturnInstructionEntity>
    implements _$$_ReqMissionReturnInstructionEntityCopyWith<$Res> {
  __$$_ReqMissionReturnInstructionEntityCopyWithImpl(
      _$_ReqMissionReturnInstructionEntity _value,
      $Res Function(_$_ReqMissionReturnInstructionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqMissionReturnInstructionEntity(
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
              as ReqMissionReturnInstructionApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMissionReturnInstructionEntity
    implements _ReqMissionReturnInstructionEntity {
  _$_ReqMissionReturnInstructionEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqMissionReturnInstructionEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMissionReturnInstructionEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqMissionReturnInstructionApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqMissionReturnInstructionEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMissionReturnInstructionEntityCopyWith<
          _$_ReqMissionReturnInstructionEntity>
      get copyWith => __$$_ReqMissionReturnInstructionEntityCopyWithImpl<
          _$_ReqMissionReturnInstructionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMissionReturnInstructionEntityToJson(
      this,
    );
  }
}

abstract class _ReqMissionReturnInstructionEntity
    implements ReqMissionReturnInstructionEntity {
  factory _ReqMissionReturnInstructionEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required ReqMissionReturnInstructionApiDataEntity apiData}) =
      _$_ReqMissionReturnInstructionEntity;

  factory _ReqMissionReturnInstructionEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMissionReturnInstructionEntity.fromJson;

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
  ReqMissionReturnInstructionApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqMissionReturnInstructionApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMissionReturnInstructionEntityCopyWith<
          _$_ReqMissionReturnInstructionEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMissionReturnInstructionApiDataEntity
    _$ReqMissionReturnInstructionApiDataEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqMissionReturnInstructionApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMissionReturnInstructionApiDataEntity {
  @JsonKey(name: 'api_mission')
  List<int> get apiMission => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMissionReturnInstructionApiDataEntityCopyWith<
          ReqMissionReturnInstructionApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> {
  factory $ReqMissionReturnInstructionApiDataEntityCopyWith(
          ReqMissionReturnInstructionApiDataEntity value,
          $Res Function(ReqMissionReturnInstructionApiDataEntity) then) =
      _$ReqMissionReturnInstructionApiDataEntityCopyWithImpl<$Res,
          ReqMissionReturnInstructionApiDataEntity>;
  @useResult
  $Res call({@JsonKey(name: 'api_mission') List<int> apiMission});
}

/// @nodoc
class _$ReqMissionReturnInstructionApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqMissionReturnInstructionApiDataEntity>
    implements $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> {
  _$ReqMissionReturnInstructionApiDataEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMission = null,
  }) {
    return _then(_value.copyWith(
      apiMission: null == apiMission
          ? _value.apiMission
          : apiMission // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMissionReturnInstructionApiDataEntityCopyWith<$Res>
    implements $ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> {
  factory _$$_ReqMissionReturnInstructionApiDataEntityCopyWith(
          _$_ReqMissionReturnInstructionApiDataEntity value,
          $Res Function(_$_ReqMissionReturnInstructionApiDataEntity) then) =
      __$$_ReqMissionReturnInstructionApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'api_mission') List<int> apiMission});
}

/// @nodoc
class __$$_ReqMissionReturnInstructionApiDataEntityCopyWithImpl<$Res>
    extends _$ReqMissionReturnInstructionApiDataEntityCopyWithImpl<$Res,
        _$_ReqMissionReturnInstructionApiDataEntity>
    implements _$$_ReqMissionReturnInstructionApiDataEntityCopyWith<$Res> {
  __$$_ReqMissionReturnInstructionApiDataEntityCopyWithImpl(
      _$_ReqMissionReturnInstructionApiDataEntity _value,
      $Res Function(_$_ReqMissionReturnInstructionApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMission = null,
  }) {
    return _then(_$_ReqMissionReturnInstructionApiDataEntity(
      apiMission: null == apiMission
          ? _value.apiMission
          : apiMission // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMissionReturnInstructionApiDataEntity
    implements _ReqMissionReturnInstructionApiDataEntity {
  _$_ReqMissionReturnInstructionApiDataEntity(
      {@JsonKey(name: 'api_mission') required this.apiMission});

  factory _$_ReqMissionReturnInstructionApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMissionReturnInstructionApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_mission')
  List<int> apiMission;

  @override
  String toString() {
    return 'ReqMissionReturnInstructionApiDataEntity(apiMission: $apiMission)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMissionReturnInstructionApiDataEntityCopyWith<
          _$_ReqMissionReturnInstructionApiDataEntity>
      get copyWith => __$$_ReqMissionReturnInstructionApiDataEntityCopyWithImpl<
          _$_ReqMissionReturnInstructionApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMissionReturnInstructionApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMissionReturnInstructionApiDataEntity
    implements ReqMissionReturnInstructionApiDataEntity {
  factory _ReqMissionReturnInstructionApiDataEntity(
          {@JsonKey(name: 'api_mission') required List<int> apiMission}) =
      _$_ReqMissionReturnInstructionApiDataEntity;

  factory _ReqMissionReturnInstructionApiDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMissionReturnInstructionApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_mission')
  List<int> get apiMission;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMissionReturnInstructionApiDataEntityCopyWith<
          _$_ReqMissionReturnInstructionApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
