// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_deck_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMemberDeckEntity _$GetMemberDeckEntityFromJson(Map<String, dynamic> json) {
  return _GetMemberDeckEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberDeckEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  List<GetMemberDeckApiDataEntity> get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(List<GetMemberDeckApiDataEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberDeckEntityCopyWith<GetMemberDeckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberDeckEntityCopyWith<$Res> {
  factory $GetMemberDeckEntityCopyWith(
          GetMemberDeckEntity value, $Res Function(GetMemberDeckEntity) then) =
      _$GetMemberDeckEntityCopyWithImpl<$Res, GetMemberDeckEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') List<GetMemberDeckApiDataEntity> apiData});
}

/// @nodoc
class _$GetMemberDeckEntityCopyWithImpl<$Res, $Val extends GetMemberDeckEntity>
    implements $GetMemberDeckEntityCopyWith<$Res> {
  _$GetMemberDeckEntityCopyWithImpl(this._value, this._then);

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
              as List<GetMemberDeckApiDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberDeckEntityCopyWith<$Res>
    implements $GetMemberDeckEntityCopyWith<$Res> {
  factory _$$_GetMemberDeckEntityCopyWith(_$_GetMemberDeckEntity value,
          $Res Function(_$_GetMemberDeckEntity) then) =
      __$$_GetMemberDeckEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') List<GetMemberDeckApiDataEntity> apiData});
}

/// @nodoc
class __$$_GetMemberDeckEntityCopyWithImpl<$Res>
    extends _$GetMemberDeckEntityCopyWithImpl<$Res, _$_GetMemberDeckEntity>
    implements _$$_GetMemberDeckEntityCopyWith<$Res> {
  __$$_GetMemberDeckEntityCopyWithImpl(_$_GetMemberDeckEntity _value,
      $Res Function(_$_GetMemberDeckEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetMemberDeckEntity(
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
              as List<GetMemberDeckApiDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberDeckEntity implements _GetMemberDeckEntity {
  _$_GetMemberDeckEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetMemberDeckEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberDeckEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  List<GetMemberDeckApiDataEntity> apiData;

  @override
  String toString() {
    return 'GetMemberDeckEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberDeckEntityCopyWith<_$_GetMemberDeckEntity> get copyWith =>
      __$$_GetMemberDeckEntityCopyWithImpl<_$_GetMemberDeckEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberDeckEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberDeckEntity implements GetMemberDeckEntity {
  factory _GetMemberDeckEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required List<GetMemberDeckApiDataEntity> apiData}) =
      _$_GetMemberDeckEntity;

  factory _GetMemberDeckEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberDeckEntity.fromJson;

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
  List<GetMemberDeckApiDataEntity> get apiData;
  @JsonKey(name: 'api_data')
  set apiData(List<GetMemberDeckApiDataEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberDeckEntityCopyWith<_$_GetMemberDeckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GetMemberDeckApiDataEntity _$GetMemberDeckApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberDeckApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberDeckApiDataEntity {
  @JsonKey(name: 'api_member_id')
  int get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError; // Squad id
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError; // Squad id
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError; // Squad name
  @JsonKey(name: 'api_name_id')
  String get apiNameId => throw _privateConstructorUsedError; // Squad name
  @JsonKey(name: 'api_name_id')
  set apiNameId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission')
  List<int> get apiMission => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value) =>
      throw _privateConstructorUsedError; // apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
  @JsonKey(name: 'api_flagship')
  String get apiFlagship =>
      throw _privateConstructorUsedError; // apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
  @JsonKey(name: 'api_flagship')
  set apiFlagship(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  List<int> get apiShip => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  set apiShip(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberDeckApiDataEntityCopyWith<GetMemberDeckApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberDeckApiDataEntityCopyWith<$Res> {
  factory $GetMemberDeckApiDataEntityCopyWith(GetMemberDeckApiDataEntity value,
          $Res Function(GetMemberDeckApiDataEntity) then) =
      _$GetMemberDeckApiDataEntityCopyWithImpl<$Res,
          GetMemberDeckApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_name_id') String apiNameId,
      @JsonKey(name: 'api_mission') List<int> apiMission,
      @JsonKey(name: 'api_flagship') String apiFlagship,
      @JsonKey(name: 'api_ship') List<int> apiShip});
}

/// @nodoc
class _$GetMemberDeckApiDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberDeckApiDataEntity>
    implements $GetMemberDeckApiDataEntityCopyWith<$Res> {
  _$GetMemberDeckApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiName = null,
    Object? apiNameId = null,
    Object? apiMission = null,
    Object? apiFlagship = null,
    Object? apiShip = null,
  }) {
    return _then(_value.copyWith(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiNameId: null == apiNameId
          ? _value.apiNameId
          : apiNameId // ignore: cast_nullable_to_non_nullable
              as String,
      apiMission: null == apiMission
          ? _value.apiMission
          : apiMission // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFlagship: null == apiFlagship
          ? _value.apiFlagship
          : apiFlagship // ignore: cast_nullable_to_non_nullable
              as String,
      apiShip: null == apiShip
          ? _value.apiShip
          : apiShip // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberDeckApiDataEntityCopyWith<$Res>
    implements $GetMemberDeckApiDataEntityCopyWith<$Res> {
  factory _$$_GetMemberDeckApiDataEntityCopyWith(
          _$_GetMemberDeckApiDataEntity value,
          $Res Function(_$_GetMemberDeckApiDataEntity) then) =
      __$$_GetMemberDeckApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_name_id') String apiNameId,
      @JsonKey(name: 'api_mission') List<int> apiMission,
      @JsonKey(name: 'api_flagship') String apiFlagship,
      @JsonKey(name: 'api_ship') List<int> apiShip});
}

/// @nodoc
class __$$_GetMemberDeckApiDataEntityCopyWithImpl<$Res>
    extends _$GetMemberDeckApiDataEntityCopyWithImpl<$Res,
        _$_GetMemberDeckApiDataEntity>
    implements _$$_GetMemberDeckApiDataEntityCopyWith<$Res> {
  __$$_GetMemberDeckApiDataEntityCopyWithImpl(
      _$_GetMemberDeckApiDataEntity _value,
      $Res Function(_$_GetMemberDeckApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiName = null,
    Object? apiNameId = null,
    Object? apiMission = null,
    Object? apiFlagship = null,
    Object? apiShip = null,
  }) {
    return _then(_$_GetMemberDeckApiDataEntity(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiNameId: null == apiNameId
          ? _value.apiNameId
          : apiNameId // ignore: cast_nullable_to_non_nullable
              as String,
      apiMission: null == apiMission
          ? _value.apiMission
          : apiMission // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFlagship: null == apiFlagship
          ? _value.apiFlagship
          : apiFlagship // ignore: cast_nullable_to_non_nullable
              as String,
      apiShip: null == apiShip
          ? _value.apiShip
          : apiShip // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberDeckApiDataEntity implements _GetMemberDeckApiDataEntity {
  _$_GetMemberDeckApiDataEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_name_id') required this.apiNameId,
      @JsonKey(name: 'api_mission') required this.apiMission,
      @JsonKey(name: 'api_flagship') required this.apiFlagship,
      @JsonKey(name: 'api_ship') required this.apiShip});

  factory _$_GetMemberDeckApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberDeckApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  int apiMemberId;
  @override
  @JsonKey(name: 'api_id')
  int apiId;
// Squad id
  @override
  @JsonKey(name: 'api_name')
  String apiName;
// Squad name
  @override
  @JsonKey(name: 'api_name_id')
  String apiNameId;
  @override
  @JsonKey(name: 'api_mission')
  List<int> apiMission;
// apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
  @override
  @JsonKey(name: 'api_flagship')
  String apiFlagship;
  @override
  @JsonKey(name: 'api_ship')
  List<int> apiShip;

  @override
  String toString() {
    return 'GetMemberDeckApiDataEntity(apiMemberId: $apiMemberId, apiId: $apiId, apiName: $apiName, apiNameId: $apiNameId, apiMission: $apiMission, apiFlagship: $apiFlagship, apiShip: $apiShip)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberDeckApiDataEntityCopyWith<_$_GetMemberDeckApiDataEntity>
      get copyWith => __$$_GetMemberDeckApiDataEntityCopyWithImpl<
          _$_GetMemberDeckApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberDeckApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberDeckApiDataEntity
    implements GetMemberDeckApiDataEntity {
  factory _GetMemberDeckApiDataEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_name_id') required String apiNameId,
          @JsonKey(name: 'api_mission') required List<int> apiMission,
          @JsonKey(name: 'api_flagship') required String apiFlagship,
          @JsonKey(name: 'api_ship') required List<int> apiShip}) =
      _$_GetMemberDeckApiDataEntity;

  factory _GetMemberDeckApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberDeckApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_member_id')
  int get apiMemberId;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value);
  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override // Squad id
  @JsonKey(name: 'api_name')
  String get apiName; // Squad id
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override // Squad name
  @JsonKey(name: 'api_name_id')
  String get apiNameId; // Squad name
  @JsonKey(name: 'api_name_id')
  set apiNameId(String value);
  @override
  @JsonKey(name: 'api_mission')
  List<int> get apiMission;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value);
  @override // apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
  @JsonKey(name: 'api_flagship')
  String
      get apiFlagship; // apiMission[1] is GetMission.api_mission_id, apiMission[2] is ReqMission.api_complatetime
  @JsonKey(name: 'api_flagship')
  set apiFlagship(String value);
  @override
  @JsonKey(name: 'api_ship')
  List<int> get apiShip;
  @JsonKey(name: 'api_ship')
  set apiShip(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberDeckApiDataEntityCopyWith<_$_GetMemberDeckApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
