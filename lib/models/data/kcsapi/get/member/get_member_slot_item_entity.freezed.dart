// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_slot_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMemberSlotItemEntity _$GetMemberSlotItemEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberSlotItemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberSlotItemEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  List<GetMemberSlotItemApiDataEntity> get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(List<GetMemberSlotItemApiDataEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberSlotItemEntityCopyWith<GetMemberSlotItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberSlotItemEntityCopyWith<$Res> {
  factory $GetMemberSlotItemEntityCopyWith(GetMemberSlotItemEntity value,
          $Res Function(GetMemberSlotItemEntity) then) =
      _$GetMemberSlotItemEntityCopyWithImpl<$Res, GetMemberSlotItemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') List<GetMemberSlotItemApiDataEntity> apiData});
}

/// @nodoc
class _$GetMemberSlotItemEntityCopyWithImpl<$Res,
        $Val extends GetMemberSlotItemEntity>
    implements $GetMemberSlotItemEntityCopyWith<$Res> {
  _$GetMemberSlotItemEntityCopyWithImpl(this._value, this._then);

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
              as List<GetMemberSlotItemApiDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberSlotItemEntityCopyWith<$Res>
    implements $GetMemberSlotItemEntityCopyWith<$Res> {
  factory _$$_GetMemberSlotItemEntityCopyWith(_$_GetMemberSlotItemEntity value,
          $Res Function(_$_GetMemberSlotItemEntity) then) =
      __$$_GetMemberSlotItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') List<GetMemberSlotItemApiDataEntity> apiData});
}

/// @nodoc
class __$$_GetMemberSlotItemEntityCopyWithImpl<$Res>
    extends _$GetMemberSlotItemEntityCopyWithImpl<$Res,
        _$_GetMemberSlotItemEntity>
    implements _$$_GetMemberSlotItemEntityCopyWith<$Res> {
  __$$_GetMemberSlotItemEntityCopyWithImpl(_$_GetMemberSlotItemEntity _value,
      $Res Function(_$_GetMemberSlotItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetMemberSlotItemEntity(
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
              as List<GetMemberSlotItemApiDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberSlotItemEntity implements _GetMemberSlotItemEntity {
  _$_GetMemberSlotItemEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetMemberSlotItemEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberSlotItemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  List<GetMemberSlotItemApiDataEntity> apiData;

  @override
  String toString() {
    return 'GetMemberSlotItemEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberSlotItemEntityCopyWith<_$_GetMemberSlotItemEntity>
      get copyWith =>
          __$$_GetMemberSlotItemEntityCopyWithImpl<_$_GetMemberSlotItemEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberSlotItemEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberSlotItemEntity implements GetMemberSlotItemEntity {
  factory _GetMemberSlotItemEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required List<GetMemberSlotItemApiDataEntity> apiData}) =
      _$_GetMemberSlotItemEntity;

  factory _GetMemberSlotItemEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberSlotItemEntity.fromJson;

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
  List<GetMemberSlotItemApiDataEntity> get apiData;
  @JsonKey(name: 'api_data')
  set apiData(List<GetMemberSlotItemApiDataEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberSlotItemEntityCopyWith<_$_GetMemberSlotItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberSlotItemApiDataEntity _$GetMemberSlotItemApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberSlotItemApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberSlotItemApiDataEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_id')
  int get apiSlotitemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_id')
  set apiSlotitemId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked')
  int get apiLocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked')
  set apiLocked(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  int get apiLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  set apiLevel(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberSlotItemApiDataEntityCopyWith<GetMemberSlotItemApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberSlotItemApiDataEntityCopyWith<$Res> {
  factory $GetMemberSlotItemApiDataEntityCopyWith(
          GetMemberSlotItemApiDataEntity value,
          $Res Function(GetMemberSlotItemApiDataEntity) then) =
      _$GetMemberSlotItemApiDataEntityCopyWithImpl<$Res,
          GetMemberSlotItemApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_slotitem_id') int apiSlotitemId,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_level') int apiLevel});
}

/// @nodoc
class _$GetMemberSlotItemApiDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberSlotItemApiDataEntity>
    implements $GetMemberSlotItemApiDataEntityCopyWith<$Res> {
  _$GetMemberSlotItemApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSlotitemId = null,
    Object? apiLocked = null,
    Object? apiLevel = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlotitemId: null == apiSlotitemId
          ? _value.apiSlotitemId
          : apiSlotitemId // ignore: cast_nullable_to_non_nullable
              as int,
      apiLocked: null == apiLocked
          ? _value.apiLocked
          : apiLocked // ignore: cast_nullable_to_non_nullable
              as int,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberSlotItemApiDataEntityCopyWith<$Res>
    implements $GetMemberSlotItemApiDataEntityCopyWith<$Res> {
  factory _$$_GetMemberSlotItemApiDataEntityCopyWith(
          _$_GetMemberSlotItemApiDataEntity value,
          $Res Function(_$_GetMemberSlotItemApiDataEntity) then) =
      __$$_GetMemberSlotItemApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_slotitem_id') int apiSlotitemId,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_level') int apiLevel});
}

/// @nodoc
class __$$_GetMemberSlotItemApiDataEntityCopyWithImpl<$Res>
    extends _$GetMemberSlotItemApiDataEntityCopyWithImpl<$Res,
        _$_GetMemberSlotItemApiDataEntity>
    implements _$$_GetMemberSlotItemApiDataEntityCopyWith<$Res> {
  __$$_GetMemberSlotItemApiDataEntityCopyWithImpl(
      _$_GetMemberSlotItemApiDataEntity _value,
      $Res Function(_$_GetMemberSlotItemApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSlotitemId = null,
    Object? apiLocked = null,
    Object? apiLevel = null,
  }) {
    return _then(_$_GetMemberSlotItemApiDataEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlotitemId: null == apiSlotitemId
          ? _value.apiSlotitemId
          : apiSlotitemId // ignore: cast_nullable_to_non_nullable
              as int,
      apiLocked: null == apiLocked
          ? _value.apiLocked
          : apiLocked // ignore: cast_nullable_to_non_nullable
              as int,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberSlotItemApiDataEntity
    implements _GetMemberSlotItemApiDataEntity {
  _$_GetMemberSlotItemApiDataEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_slotitem_id') required this.apiSlotitemId,
      @JsonKey(name: 'api_locked') required this.apiLocked,
      @JsonKey(name: 'api_level') required this.apiLevel});

  factory _$_GetMemberSlotItemApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberSlotItemApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_slotitem_id')
  int apiSlotitemId;
  @override
  @JsonKey(name: 'api_locked')
  int apiLocked;
  @override
  @JsonKey(name: 'api_level')
  int apiLevel;

  @override
  String toString() {
    return 'GetMemberSlotItemApiDataEntity(apiId: $apiId, apiSlotitemId: $apiSlotitemId, apiLocked: $apiLocked, apiLevel: $apiLevel)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberSlotItemApiDataEntityCopyWith<_$_GetMemberSlotItemApiDataEntity>
      get copyWith => __$$_GetMemberSlotItemApiDataEntityCopyWithImpl<
          _$_GetMemberSlotItemApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberSlotItemApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberSlotItemApiDataEntity
    implements GetMemberSlotItemApiDataEntity {
  factory _GetMemberSlotItemApiDataEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_slotitem_id') required int apiSlotitemId,
          @JsonKey(name: 'api_locked') required int apiLocked,
          @JsonKey(name: 'api_level') required int apiLevel}) =
      _$_GetMemberSlotItemApiDataEntity;

  factory _GetMemberSlotItemApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberSlotItemApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_slotitem_id')
  int get apiSlotitemId;
  @JsonKey(name: 'api_slotitem_id')
  set apiSlotitemId(int value);
  @override
  @JsonKey(name: 'api_locked')
  int get apiLocked;
  @JsonKey(name: 'api_locked')
  set apiLocked(int value);
  @override
  @JsonKey(name: 'api_level')
  int get apiLevel;
  @JsonKey(name: 'api_level')
  set apiLevel(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberSlotItemApiDataEntityCopyWith<_$_GetMemberSlotItemApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
