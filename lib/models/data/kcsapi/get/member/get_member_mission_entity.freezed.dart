// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_mission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMemberMissionEntity _$GetMemberMissionEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberMissionEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberMissionEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  GetMemberMissionApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberMissionApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberMissionEntityCopyWith<GetMemberMissionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberMissionEntityCopyWith<$Res> {
  factory $GetMemberMissionEntityCopyWith(GetMemberMissionEntity value,
          $Res Function(GetMemberMissionEntity) then) =
      _$GetMemberMissionEntityCopyWithImpl<$Res, GetMemberMissionEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberMissionApiDataEntity apiData});

  $GetMemberMissionApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$GetMemberMissionEntityCopyWithImpl<$Res,
        $Val extends GetMemberMissionEntity>
    implements $GetMemberMissionEntityCopyWith<$Res> {
  _$GetMemberMissionEntityCopyWithImpl(this._value, this._then);

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
              as GetMemberMissionApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetMemberMissionApiDataEntityCopyWith<$Res> get apiData {
    return $GetMemberMissionApiDataEntityCopyWith<$Res>(_value.apiData,
        (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetMemberMissionEntityCopyWith<$Res>
    implements $GetMemberMissionEntityCopyWith<$Res> {
  factory _$$_GetMemberMissionEntityCopyWith(_$_GetMemberMissionEntity value,
          $Res Function(_$_GetMemberMissionEntity) then) =
      __$$_GetMemberMissionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberMissionApiDataEntity apiData});

  @override
  $GetMemberMissionApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_GetMemberMissionEntityCopyWithImpl<$Res>
    extends _$GetMemberMissionEntityCopyWithImpl<$Res,
        _$_GetMemberMissionEntity>
    implements _$$_GetMemberMissionEntityCopyWith<$Res> {
  __$$_GetMemberMissionEntityCopyWithImpl(_$_GetMemberMissionEntity _value,
      $Res Function(_$_GetMemberMissionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetMemberMissionEntity(
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
              as GetMemberMissionApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberMissionEntity implements _GetMemberMissionEntity {
  _$_GetMemberMissionEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetMemberMissionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberMissionEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  GetMemberMissionApiDataEntity apiData;

  @override
  String toString() {
    return 'GetMemberMissionEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberMissionEntityCopyWith<_$_GetMemberMissionEntity> get copyWith =>
      __$$_GetMemberMissionEntityCopyWithImpl<_$_GetMemberMissionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberMissionEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberMissionEntity implements GetMemberMissionEntity {
  factory _GetMemberMissionEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required GetMemberMissionApiDataEntity apiData}) =
      _$_GetMemberMissionEntity;

  factory _GetMemberMissionEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberMissionEntity.fromJson;

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
  GetMemberMissionApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberMissionApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberMissionEntityCopyWith<_$_GetMemberMissionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GetMemberMissionApiDataEntity _$GetMemberMissionApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberMissionApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberMissionApiDataEntity {
  @JsonKey(name: 'api_list_items')
  List<GetMemberMissionApiDataApiListItemsEntity> get apiListItems =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_list_items')
  set apiListItems(List<GetMemberMissionApiDataApiListItemsEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_time')
  List<int> get apiLimitTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_time')
  set apiLimitTime(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberMissionApiDataEntityCopyWith<GetMemberMissionApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberMissionApiDataEntityCopyWith<$Res> {
  factory $GetMemberMissionApiDataEntityCopyWith(
          GetMemberMissionApiDataEntity value,
          $Res Function(GetMemberMissionApiDataEntity) then) =
      _$GetMemberMissionApiDataEntityCopyWithImpl<$Res,
          GetMemberMissionApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_list_items')
      List<GetMemberMissionApiDataApiListItemsEntity> apiListItems,
      @JsonKey(name: 'api_limit_time') List<int> apiLimitTime});
}

/// @nodoc
class _$GetMemberMissionApiDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberMissionApiDataEntity>
    implements $GetMemberMissionApiDataEntityCopyWith<$Res> {
  _$GetMemberMissionApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiListItems = null,
    Object? apiLimitTime = null,
  }) {
    return _then(_value.copyWith(
      apiListItems: null == apiListItems
          ? _value.apiListItems
          : apiListItems // ignore: cast_nullable_to_non_nullable
              as List<GetMemberMissionApiDataApiListItemsEntity>,
      apiLimitTime: null == apiLimitTime
          ? _value.apiLimitTime
          : apiLimitTime // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberMissionApiDataEntityCopyWith<$Res>
    implements $GetMemberMissionApiDataEntityCopyWith<$Res> {
  factory _$$_GetMemberMissionApiDataEntityCopyWith(
          _$_GetMemberMissionApiDataEntity value,
          $Res Function(_$_GetMemberMissionApiDataEntity) then) =
      __$$_GetMemberMissionApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_list_items')
      List<GetMemberMissionApiDataApiListItemsEntity> apiListItems,
      @JsonKey(name: 'api_limit_time') List<int> apiLimitTime});
}

/// @nodoc
class __$$_GetMemberMissionApiDataEntityCopyWithImpl<$Res>
    extends _$GetMemberMissionApiDataEntityCopyWithImpl<$Res,
        _$_GetMemberMissionApiDataEntity>
    implements _$$_GetMemberMissionApiDataEntityCopyWith<$Res> {
  __$$_GetMemberMissionApiDataEntityCopyWithImpl(
      _$_GetMemberMissionApiDataEntity _value,
      $Res Function(_$_GetMemberMissionApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiListItems = null,
    Object? apiLimitTime = null,
  }) {
    return _then(_$_GetMemberMissionApiDataEntity(
      apiListItems: null == apiListItems
          ? _value.apiListItems
          : apiListItems // ignore: cast_nullable_to_non_nullable
              as List<GetMemberMissionApiDataApiListItemsEntity>,
      apiLimitTime: null == apiLimitTime
          ? _value.apiLimitTime
          : apiLimitTime // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberMissionApiDataEntity
    implements _GetMemberMissionApiDataEntity {
  _$_GetMemberMissionApiDataEntity(
      {@JsonKey(name: 'api_list_items') required this.apiListItems,
      @JsonKey(name: 'api_limit_time') required this.apiLimitTime});

  factory _$_GetMemberMissionApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberMissionApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_list_items')
  List<GetMemberMissionApiDataApiListItemsEntity> apiListItems;
  @override
  @JsonKey(name: 'api_limit_time')
  List<int> apiLimitTime;

  @override
  String toString() {
    return 'GetMemberMissionApiDataEntity(apiListItems: $apiListItems, apiLimitTime: $apiLimitTime)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberMissionApiDataEntityCopyWith<_$_GetMemberMissionApiDataEntity>
      get copyWith => __$$_GetMemberMissionApiDataEntityCopyWithImpl<
          _$_GetMemberMissionApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberMissionApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberMissionApiDataEntity
    implements GetMemberMissionApiDataEntity {
  factory _GetMemberMissionApiDataEntity(
          {@JsonKey(name: 'api_list_items')
          required List<GetMemberMissionApiDataApiListItemsEntity> apiListItems,
          @JsonKey(name: 'api_limit_time') required List<int> apiLimitTime}) =
      _$_GetMemberMissionApiDataEntity;

  factory _GetMemberMissionApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberMissionApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_list_items')
  List<GetMemberMissionApiDataApiListItemsEntity> get apiListItems;
  @JsonKey(name: 'api_list_items')
  set apiListItems(List<GetMemberMissionApiDataApiListItemsEntity> value);
  @override
  @JsonKey(name: 'api_limit_time')
  List<int> get apiLimitTime;
  @JsonKey(name: 'api_limit_time')
  set apiLimitTime(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberMissionApiDataEntityCopyWith<_$_GetMemberMissionApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberMissionApiDataApiListItemsEntity
    _$GetMemberMissionApiDataApiListItemsEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberMissionApiDataApiListItemsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberMissionApiDataApiListItemsEntity {
  @JsonKey(name: 'api_mission_id')
  int get apiMissionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission_id')
  set apiMissionId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  int get apiState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  set apiState(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberMissionApiDataApiListItemsEntityCopyWith<
          GetMemberMissionApiDataApiListItemsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberMissionApiDataApiListItemsEntityCopyWith<$Res> {
  factory $GetMemberMissionApiDataApiListItemsEntityCopyWith(
          GetMemberMissionApiDataApiListItemsEntity value,
          $Res Function(GetMemberMissionApiDataApiListItemsEntity) then) =
      _$GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<$Res,
          GetMemberMissionApiDataApiListItemsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_mission_id') int apiMissionId,
      @JsonKey(name: 'api_state') int apiState});
}

/// @nodoc
class _$GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<$Res,
        $Val extends GetMemberMissionApiDataApiListItemsEntity>
    implements $GetMemberMissionApiDataApiListItemsEntityCopyWith<$Res> {
  _$GetMemberMissionApiDataApiListItemsEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMissionId = null,
    Object? apiState = null,
  }) {
    return _then(_value.copyWith(
      apiMissionId: null == apiMissionId
          ? _value.apiMissionId
          : apiMissionId // ignore: cast_nullable_to_non_nullable
              as int,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberMissionApiDataApiListItemsEntityCopyWith<$Res>
    implements $GetMemberMissionApiDataApiListItemsEntityCopyWith<$Res> {
  factory _$$_GetMemberMissionApiDataApiListItemsEntityCopyWith(
          _$_GetMemberMissionApiDataApiListItemsEntity value,
          $Res Function(_$_GetMemberMissionApiDataApiListItemsEntity) then) =
      __$$_GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_mission_id') int apiMissionId,
      @JsonKey(name: 'api_state') int apiState});
}

/// @nodoc
class __$$_GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<$Res>
    extends _$GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<$Res,
        _$_GetMemberMissionApiDataApiListItemsEntity>
    implements _$$_GetMemberMissionApiDataApiListItemsEntityCopyWith<$Res> {
  __$$_GetMemberMissionApiDataApiListItemsEntityCopyWithImpl(
      _$_GetMemberMissionApiDataApiListItemsEntity _value,
      $Res Function(_$_GetMemberMissionApiDataApiListItemsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMissionId = null,
    Object? apiState = null,
  }) {
    return _then(_$_GetMemberMissionApiDataApiListItemsEntity(
      apiMissionId: null == apiMissionId
          ? _value.apiMissionId
          : apiMissionId // ignore: cast_nullable_to_non_nullable
              as int,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberMissionApiDataApiListItemsEntity
    implements _GetMemberMissionApiDataApiListItemsEntity {
  _$_GetMemberMissionApiDataApiListItemsEntity(
      {@JsonKey(name: 'api_mission_id') required this.apiMissionId,
      @JsonKey(name: 'api_state') required this.apiState});

  factory _$_GetMemberMissionApiDataApiListItemsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberMissionApiDataApiListItemsEntityFromJson(json);

  @override
  @JsonKey(name: 'api_mission_id')
  int apiMissionId;
  @override
  @JsonKey(name: 'api_state')
  int apiState;

  @override
  String toString() {
    return 'GetMemberMissionApiDataApiListItemsEntity(apiMissionId: $apiMissionId, apiState: $apiState)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberMissionApiDataApiListItemsEntityCopyWith<
          _$_GetMemberMissionApiDataApiListItemsEntity>
      get copyWith =>
          __$$_GetMemberMissionApiDataApiListItemsEntityCopyWithImpl<
              _$_GetMemberMissionApiDataApiListItemsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberMissionApiDataApiListItemsEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberMissionApiDataApiListItemsEntity
    implements GetMemberMissionApiDataApiListItemsEntity {
  factory _GetMemberMissionApiDataApiListItemsEntity(
          {@JsonKey(name: 'api_mission_id') required int apiMissionId,
          @JsonKey(name: 'api_state') required int apiState}) =
      _$_GetMemberMissionApiDataApiListItemsEntity;

  factory _GetMemberMissionApiDataApiListItemsEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberMissionApiDataApiListItemsEntity.fromJson;

  @override
  @JsonKey(name: 'api_mission_id')
  int get apiMissionId;
  @JsonKey(name: 'api_mission_id')
  set apiMissionId(int value);
  @override
  @JsonKey(name: 'api_state')
  int get apiState;
  @JsonKey(name: 'api_state')
  set apiState(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberMissionApiDataApiListItemsEntityCopyWith<
          _$_GetMemberMissionApiDataApiListItemsEntity>
      get copyWith => throw _privateConstructorUsedError;
}
