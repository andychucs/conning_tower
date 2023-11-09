// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_require_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMemberRequireInfoEntity _$GetMemberRequireInfoEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberRequireInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  GetMemberRequireInfoApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberRequireInfoApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoEntityCopyWith<GetMemberRequireInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoEntityCopyWith(GetMemberRequireInfoEntity value,
          $Res Function(GetMemberRequireInfoEntity) then) =
      _$GetMemberRequireInfoEntityCopyWithImpl<$Res,
          GetMemberRequireInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberRequireInfoApiDataEntity apiData});

  $GetMemberRequireInfoApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$GetMemberRequireInfoEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoEntity>
    implements $GetMemberRequireInfoEntityCopyWith<$Res> {
  _$GetMemberRequireInfoEntityCopyWithImpl(this._value, this._then);

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
              as GetMemberRequireInfoApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetMemberRequireInfoApiDataEntityCopyWith<$Res> get apiData {
    return $GetMemberRequireInfoApiDataEntityCopyWith<$Res>(_value.apiData,
        (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoEntityCopyWith<$Res>
    implements $GetMemberRequireInfoEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoEntityCopyWith(
          _$_GetMemberRequireInfoEntity value,
          $Res Function(_$_GetMemberRequireInfoEntity) then) =
      __$$_GetMemberRequireInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberRequireInfoApiDataEntity apiData});

  @override
  $GetMemberRequireInfoApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_GetMemberRequireInfoEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoEntity>
    implements _$$_GetMemberRequireInfoEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoEntityCopyWithImpl(
      _$_GetMemberRequireInfoEntity _value,
      $Res Function(_$_GetMemberRequireInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetMemberRequireInfoEntity(
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
              as GetMemberRequireInfoApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoEntity implements _GetMemberRequireInfoEntity {
  _$_GetMemberRequireInfoEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetMemberRequireInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  GetMemberRequireInfoApiDataEntity apiData;

  @override
  String toString() {
    return 'GetMemberRequireInfoEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoEntityCopyWith<_$_GetMemberRequireInfoEntity>
      get copyWith => __$$_GetMemberRequireInfoEntityCopyWithImpl<
          _$_GetMemberRequireInfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoEntity
    implements GetMemberRequireInfoEntity {
  factory _GetMemberRequireInfoEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required GetMemberRequireInfoApiDataEntity apiData}) =
      _$_GetMemberRequireInfoEntity;

  factory _GetMemberRequireInfoEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberRequireInfoEntity.fromJson;

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
  GetMemberRequireInfoApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberRequireInfoApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoEntityCopyWith<_$_GetMemberRequireInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataEntity _$GetMemberRequireInfoApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataEntity {
  @JsonKey(name: 'api_basic')
  GetMemberRequireInfoApiDataApiBasicEntity get apiBasic =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_basic')
  set apiBasic(GetMemberRequireInfoApiDataApiBasicEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_item')
  List<GetMemberRequireInfoApiDataApiSlotItemEntity>? get apiSlotItem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_item')
  set apiSlotItem(List<GetMemberRequireInfoApiDataApiSlotItemEntity>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_unsetslot')
  dynamic get apiUnsetslot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_unsetslot')
  set apiUnsetslot(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kdock')
  List<GetMemberRequireInfoApiDataApiKdockEntity>? get apiKdock =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kdock')
  set apiKdock(List<GetMemberRequireInfoApiDataApiKdockEntity>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem')
  List<GetMemberRequireInfoApiDataApiUseitemEntity>? get apiUseitem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem')
  set apiUseitem(List<GetMemberRequireInfoApiDataApiUseitemEntity>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture')
  List<GetMemberRequireInfoApiDataApiFurnitureEntity>? get apiFurniture =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture')
  set apiFurniture(
          List<GetMemberRequireInfoApiDataApiFurnitureEntity>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_extra_supply')
  List<int>? get apiExtraSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_extra_supply')
  set apiExtraSupply(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_oss_setting')
  GetMemberRequireInfoApiDataApiOssSettingEntity? get apiOssSetting =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_oss_setting')
  set apiOssSetting(GetMemberRequireInfoApiDataApiOssSettingEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_skin_id')
  int get apiSkinId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_skin_id')
  set apiSkinId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_position_id')
  int get apiPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_position_id')
  set apiPositionId(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataEntityCopyWith<GetMemberRequireInfoApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataEntityCopyWith(
          GetMemberRequireInfoApiDataEntity value,
          $Res Function(GetMemberRequireInfoApiDataEntity) then) =
      _$GetMemberRequireInfoApiDataEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_basic')
      GetMemberRequireInfoApiDataApiBasicEntity apiBasic,
      @JsonKey(name: 'api_slot_item')
      List<GetMemberRequireInfoApiDataApiSlotItemEntity>? apiSlotItem,
      @JsonKey(name: 'api_unsetslot') dynamic apiUnsetslot,
      @JsonKey(name: 'api_kdock')
      List<GetMemberRequireInfoApiDataApiKdockEntity>? apiKdock,
      @JsonKey(name: 'api_useitem')
      List<GetMemberRequireInfoApiDataApiUseitemEntity>? apiUseitem,
      @JsonKey(name: 'api_furniture')
      List<GetMemberRequireInfoApiDataApiFurnitureEntity>? apiFurniture,
      @JsonKey(name: 'api_extra_supply') List<int>? apiExtraSupply,
      @JsonKey(name: 'api_oss_setting')
      GetMemberRequireInfoApiDataApiOssSettingEntity? apiOssSetting,
      @JsonKey(name: 'api_skin_id') int apiSkinId,
      @JsonKey(name: 'api_position_id') int apiPositionId});

  $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> get apiBasic;
  $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res>?
      get apiOssSetting;
}

/// @nodoc
class _$GetMemberRequireInfoApiDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataEntity>
    implements $GetMemberRequireInfoApiDataEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiBasic = null,
    Object? apiSlotItem = freezed,
    Object? apiUnsetslot = freezed,
    Object? apiKdock = freezed,
    Object? apiUseitem = freezed,
    Object? apiFurniture = freezed,
    Object? apiExtraSupply = freezed,
    Object? apiOssSetting = freezed,
    Object? apiSkinId = null,
    Object? apiPositionId = null,
  }) {
    return _then(_value.copyWith(
      apiBasic: null == apiBasic
          ? _value.apiBasic
          : apiBasic // ignore: cast_nullable_to_non_nullable
              as GetMemberRequireInfoApiDataApiBasicEntity,
      apiSlotItem: freezed == apiSlotItem
          ? _value.apiSlotItem
          : apiSlotItem // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiSlotItemEntity>?,
      apiUnsetslot: freezed == apiUnsetslot
          ? _value.apiUnsetslot
          : apiUnsetslot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiKdock: freezed == apiKdock
          ? _value.apiKdock
          : apiKdock // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiKdockEntity>?,
      apiUseitem: freezed == apiUseitem
          ? _value.apiUseitem
          : apiUseitem // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiUseitemEntity>?,
      apiFurniture: freezed == apiFurniture
          ? _value.apiFurniture
          : apiFurniture // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiFurnitureEntity>?,
      apiExtraSupply: freezed == apiExtraSupply
          ? _value.apiExtraSupply
          : apiExtraSupply // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiOssSetting: freezed == apiOssSetting
          ? _value.apiOssSetting
          : apiOssSetting // ignore: cast_nullable_to_non_nullable
              as GetMemberRequireInfoApiDataApiOssSettingEntity?,
      apiSkinId: null == apiSkinId
          ? _value.apiSkinId
          : apiSkinId // ignore: cast_nullable_to_non_nullable
              as int,
      apiPositionId: null == apiPositionId
          ? _value.apiPositionId
          : apiPositionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> get apiBasic {
    return $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res>(
        _value.apiBasic, (value) {
      return _then(_value.copyWith(apiBasic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res>?
      get apiOssSetting {
    if (_value.apiOssSetting == null) {
      return null;
    }

    return $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res>(
        _value.apiOssSetting!, (value) {
      return _then(_value.copyWith(apiOssSetting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataEntityCopyWith(
          _$_GetMemberRequireInfoApiDataEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataEntity) then) =
      __$$_GetMemberRequireInfoApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_basic')
      GetMemberRequireInfoApiDataApiBasicEntity apiBasic,
      @JsonKey(name: 'api_slot_item')
      List<GetMemberRequireInfoApiDataApiSlotItemEntity>? apiSlotItem,
      @JsonKey(name: 'api_unsetslot') dynamic apiUnsetslot,
      @JsonKey(name: 'api_kdock')
      List<GetMemberRequireInfoApiDataApiKdockEntity>? apiKdock,
      @JsonKey(name: 'api_useitem')
      List<GetMemberRequireInfoApiDataApiUseitemEntity>? apiUseitem,
      @JsonKey(name: 'api_furniture')
      List<GetMemberRequireInfoApiDataApiFurnitureEntity>? apiFurniture,
      @JsonKey(name: 'api_extra_supply') List<int>? apiExtraSupply,
      @JsonKey(name: 'api_oss_setting')
      GetMemberRequireInfoApiDataApiOssSettingEntity? apiOssSetting,
      @JsonKey(name: 'api_skin_id') int apiSkinId,
      @JsonKey(name: 'api_position_id') int apiPositionId});

  @override
  $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> get apiBasic;
  @override
  $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res>?
      get apiOssSetting;
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataEntity>
    implements _$$_GetMemberRequireInfoApiDataEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiBasic = null,
    Object? apiSlotItem = freezed,
    Object? apiUnsetslot = freezed,
    Object? apiKdock = freezed,
    Object? apiUseitem = freezed,
    Object? apiFurniture = freezed,
    Object? apiExtraSupply = freezed,
    Object? apiOssSetting = freezed,
    Object? apiSkinId = null,
    Object? apiPositionId = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataEntity(
      apiBasic: null == apiBasic
          ? _value.apiBasic
          : apiBasic // ignore: cast_nullable_to_non_nullable
              as GetMemberRequireInfoApiDataApiBasicEntity,
      apiSlotItem: freezed == apiSlotItem
          ? _value.apiSlotItem
          : apiSlotItem // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiSlotItemEntity>?,
      apiUnsetslot: freezed == apiUnsetslot
          ? _value.apiUnsetslot
          : apiUnsetslot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiKdock: freezed == apiKdock
          ? _value.apiKdock
          : apiKdock // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiKdockEntity>?,
      apiUseitem: freezed == apiUseitem
          ? _value.apiUseitem
          : apiUseitem // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiUseitemEntity>?,
      apiFurniture: freezed == apiFurniture
          ? _value.apiFurniture
          : apiFurniture // ignore: cast_nullable_to_non_nullable
              as List<GetMemberRequireInfoApiDataApiFurnitureEntity>?,
      apiExtraSupply: freezed == apiExtraSupply
          ? _value.apiExtraSupply
          : apiExtraSupply // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiOssSetting: freezed == apiOssSetting
          ? _value.apiOssSetting
          : apiOssSetting // ignore: cast_nullable_to_non_nullable
              as GetMemberRequireInfoApiDataApiOssSettingEntity?,
      apiSkinId: null == apiSkinId
          ? _value.apiSkinId
          : apiSkinId // ignore: cast_nullable_to_non_nullable
              as int,
      apiPositionId: null == apiPositionId
          ? _value.apiPositionId
          : apiPositionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataEntity
    implements _GetMemberRequireInfoApiDataEntity {
  _$_GetMemberRequireInfoApiDataEntity(
      {@JsonKey(name: 'api_basic') required this.apiBasic,
      @JsonKey(name: 'api_slot_item') this.apiSlotItem,
      @JsonKey(name: 'api_unsetslot') this.apiUnsetslot,
      @JsonKey(name: 'api_kdock') this.apiKdock,
      @JsonKey(name: 'api_useitem') this.apiUseitem,
      @JsonKey(name: 'api_furniture') this.apiFurniture,
      @JsonKey(name: 'api_extra_supply') this.apiExtraSupply,
      @JsonKey(name: 'api_oss_setting') this.apiOssSetting,
      @JsonKey(name: 'api_skin_id') required this.apiSkinId,
      @JsonKey(name: 'api_position_id') required this.apiPositionId});

  factory _$_GetMemberRequireInfoApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_basic')
  GetMemberRequireInfoApiDataApiBasicEntity apiBasic;
  @override
  @JsonKey(name: 'api_slot_item')
  List<GetMemberRequireInfoApiDataApiSlotItemEntity>? apiSlotItem;
  @override
  @JsonKey(name: 'api_unsetslot')
  dynamic apiUnsetslot;
  @override
  @JsonKey(name: 'api_kdock')
  List<GetMemberRequireInfoApiDataApiKdockEntity>? apiKdock;
  @override
  @JsonKey(name: 'api_useitem')
  List<GetMemberRequireInfoApiDataApiUseitemEntity>? apiUseitem;
  @override
  @JsonKey(name: 'api_furniture')
  List<GetMemberRequireInfoApiDataApiFurnitureEntity>? apiFurniture;
  @override
  @JsonKey(name: 'api_extra_supply')
  List<int>? apiExtraSupply;
  @override
  @JsonKey(name: 'api_oss_setting')
  GetMemberRequireInfoApiDataApiOssSettingEntity? apiOssSetting;
  @override
  @JsonKey(name: 'api_skin_id')
  int apiSkinId;
  @override
  @JsonKey(name: 'api_position_id')
  int apiPositionId;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataEntity(apiBasic: $apiBasic, apiSlotItem: $apiSlotItem, apiUnsetslot: $apiUnsetslot, apiKdock: $apiKdock, apiUseitem: $apiUseitem, apiFurniture: $apiFurniture, apiExtraSupply: $apiExtraSupply, apiOssSetting: $apiOssSetting, apiSkinId: $apiSkinId, apiPositionId: $apiPositionId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataEntityCopyWith<
          _$_GetMemberRequireInfoApiDataEntity>
      get copyWith => __$$_GetMemberRequireInfoApiDataEntityCopyWithImpl<
          _$_GetMemberRequireInfoApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataEntity
    implements GetMemberRequireInfoApiDataEntity {
  factory _GetMemberRequireInfoApiDataEntity(
          {@JsonKey(name: 'api_basic')
          required GetMemberRequireInfoApiDataApiBasicEntity apiBasic,
          @JsonKey(name: 'api_slot_item')
          List<GetMemberRequireInfoApiDataApiSlotItemEntity>? apiSlotItem,
          @JsonKey(name: 'api_unsetslot') dynamic apiUnsetslot,
          @JsonKey(name: 'api_kdock')
          List<GetMemberRequireInfoApiDataApiKdockEntity>? apiKdock,
          @JsonKey(name: 'api_useitem')
          List<GetMemberRequireInfoApiDataApiUseitemEntity>? apiUseitem,
          @JsonKey(name: 'api_furniture')
          List<GetMemberRequireInfoApiDataApiFurnitureEntity>? apiFurniture,
          @JsonKey(name: 'api_extra_supply') List<int>? apiExtraSupply,
          @JsonKey(name: 'api_oss_setting')
          GetMemberRequireInfoApiDataApiOssSettingEntity? apiOssSetting,
          @JsonKey(name: 'api_skin_id') required int apiSkinId,
          @JsonKey(name: 'api_position_id') required int apiPositionId}) =
      _$_GetMemberRequireInfoApiDataEntity;

  factory _GetMemberRequireInfoApiDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_basic')
  GetMemberRequireInfoApiDataApiBasicEntity get apiBasic;
  @JsonKey(name: 'api_basic')
  set apiBasic(GetMemberRequireInfoApiDataApiBasicEntity value);
  @override
  @JsonKey(name: 'api_slot_item')
  List<GetMemberRequireInfoApiDataApiSlotItemEntity>? get apiSlotItem;
  @JsonKey(name: 'api_slot_item')
  set apiSlotItem(List<GetMemberRequireInfoApiDataApiSlotItemEntity>? value);
  @override
  @JsonKey(name: 'api_unsetslot')
  dynamic get apiUnsetslot;
  @JsonKey(name: 'api_unsetslot')
  set apiUnsetslot(dynamic value);
  @override
  @JsonKey(name: 'api_kdock')
  List<GetMemberRequireInfoApiDataApiKdockEntity>? get apiKdock;
  @JsonKey(name: 'api_kdock')
  set apiKdock(List<GetMemberRequireInfoApiDataApiKdockEntity>? value);
  @override
  @JsonKey(name: 'api_useitem')
  List<GetMemberRequireInfoApiDataApiUseitemEntity>? get apiUseitem;
  @JsonKey(name: 'api_useitem')
  set apiUseitem(List<GetMemberRequireInfoApiDataApiUseitemEntity>? value);
  @override
  @JsonKey(name: 'api_furniture')
  List<GetMemberRequireInfoApiDataApiFurnitureEntity>? get apiFurniture;
  @JsonKey(name: 'api_furniture')
  set apiFurniture(List<GetMemberRequireInfoApiDataApiFurnitureEntity>? value);
  @override
  @JsonKey(name: 'api_extra_supply')
  List<int>? get apiExtraSupply;
  @JsonKey(name: 'api_extra_supply')
  set apiExtraSupply(List<int>? value);
  @override
  @JsonKey(name: 'api_oss_setting')
  GetMemberRequireInfoApiDataApiOssSettingEntity? get apiOssSetting;
  @JsonKey(name: 'api_oss_setting')
  set apiOssSetting(GetMemberRequireInfoApiDataApiOssSettingEntity? value);
  @override
  @JsonKey(name: 'api_skin_id')
  int get apiSkinId;
  @JsonKey(name: 'api_skin_id')
  set apiSkinId(int value);
  @override
  @JsonKey(name: 'api_position_id')
  int get apiPositionId;
  @JsonKey(name: 'api_position_id')
  set apiPositionId(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataEntityCopyWith<
          _$_GetMemberRequireInfoApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiBasicEntity
    _$GetMemberRequireInfoApiDataApiBasicEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiBasicEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiBasicEntity {
  @JsonKey(name: 'api_member_id')
  int get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_firstflag')
  int get apiFirstflag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_firstflag')
  set apiFirstflag(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<
          GetMemberRequireInfoApiDataApiBasicEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiBasicEntityCopyWith(
          GetMemberRequireInfoApiDataApiBasicEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiBasicEntity) then) =
      _$GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiBasicEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_firstflag') int apiFirstflag});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiBasicEntity>
    implements $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiFirstflag = null,
  }) {
    return _then(_value.copyWith(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFirstflag: null == apiFirstflag
          ? _value.apiFirstflag
          : apiFirstflag // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiBasicEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiBasicEntity) then) =
      __$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_firstflag') int apiFirstflag});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiBasicEntity>
    implements _$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiBasicEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiBasicEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiFirstflag = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiBasicEntity(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFirstflag: null == apiFirstflag
          ? _value.apiFirstflag
          : apiFirstflag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataApiBasicEntity
    implements _GetMemberRequireInfoApiDataApiBasicEntity {
  _$_GetMemberRequireInfoApiDataApiBasicEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_firstflag') required this.apiFirstflag});

  factory _$_GetMemberRequireInfoApiDataApiBasicEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiBasicEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  int apiMemberId;
  @override
  @JsonKey(name: 'api_firstflag')
  int apiFirstflag;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataApiBasicEntity(apiMemberId: $apiMemberId, apiFirstflag: $apiFirstflag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiBasicEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWithImpl<
              _$_GetMemberRequireInfoApiDataApiBasicEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiBasicEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiBasicEntity
    implements GetMemberRequireInfoApiDataApiBasicEntity {
  factory _GetMemberRequireInfoApiDataApiBasicEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_firstflag') required int apiFirstflag}) =
      _$_GetMemberRequireInfoApiDataApiBasicEntity;

  factory _GetMemberRequireInfoApiDataApiBasicEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiBasicEntity.fromJson;

  @override
  @JsonKey(name: 'api_member_id')
  int get apiMemberId;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value);
  @override
  @JsonKey(name: 'api_firstflag')
  int get apiFirstflag;
  @JsonKey(name: 'api_firstflag')
  set apiFirstflag(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataApiBasicEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiBasicEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiSlotItemEntity
    _$GetMemberRequireInfoApiDataApiSlotItemEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiSlotItemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiSlotItemEntity {
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
  $GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<
          GetMemberRequireInfoApiDataApiSlotItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith(
          GetMemberRequireInfoApiDataApiSlotItemEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiSlotItemEntity) then) =
      _$GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiSlotItemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_slotitem_id') int apiSlotitemId,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_level') int apiLevel});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiSlotItemEntity>
    implements $GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl(
      this._value, this._then);

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
abstract class _$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiSlotItemEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiSlotItemEntity) then) =
      __$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_slotitem_id') int apiSlotitemId,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_level') int apiLevel});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiSlotItemEntity>
    implements _$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiSlotItemEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiSlotItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSlotitemId = null,
    Object? apiLocked = null,
    Object? apiLevel = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiSlotItemEntity(
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
class _$_GetMemberRequireInfoApiDataApiSlotItemEntity
    implements _GetMemberRequireInfoApiDataApiSlotItemEntity {
  _$_GetMemberRequireInfoApiDataApiSlotItemEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_slotitem_id') required this.apiSlotitemId,
      @JsonKey(name: 'api_locked') required this.apiLocked,
      @JsonKey(name: 'api_level') required this.apiLevel});

  factory _$_GetMemberRequireInfoApiDataApiSlotItemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiSlotItemEntityFromJson(json);

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
    return 'GetMemberRequireInfoApiDataApiSlotItemEntity(apiId: $apiId, apiSlotitemId: $apiSlotitemId, apiLocked: $apiLocked, apiLevel: $apiLevel)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiSlotItemEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWithImpl<
                  _$_GetMemberRequireInfoApiDataApiSlotItemEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiSlotItemEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiSlotItemEntity
    implements GetMemberRequireInfoApiDataApiSlotItemEntity {
  factory _GetMemberRequireInfoApiDataApiSlotItemEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_slotitem_id') required int apiSlotitemId,
          @JsonKey(name: 'api_locked') required int apiLocked,
          @JsonKey(name: 'api_level') required int apiLevel}) =
      _$_GetMemberRequireInfoApiDataApiSlotItemEntity;

  factory _GetMemberRequireInfoApiDataApiSlotItemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiSlotItemEntity.fromJson;

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
  _$$_GetMemberRequireInfoApiDataApiSlotItemEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiSlotItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiKdockEntity
    _$GetMemberRequireInfoApiDataApiKdockEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiKdockEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiKdockEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  int get apiState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  set apiState(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_created_ship_id')
  int get apiCreatedShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_created_ship_id')
  set apiCreatedShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complete_time')
  int get apiCompleteTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complete_time')
  set apiCompleteTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complete_time_str')
  String get apiCompleteTimeStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_complete_time_str')
  set apiCompleteTimeStr(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item1')
  int get apiItem1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item1')
  set apiItem1(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item2')
  int get apiItem2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item2')
  set apiItem2(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item3')
  int get apiItem3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item3')
  set apiItem3(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item4')
  int get apiItem4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item4')
  set apiItem4(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item5')
  int get apiItem5 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item5')
  set apiItem5(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataApiKdockEntityCopyWith<
          GetMemberRequireInfoApiDataApiKdockEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiKdockEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiKdockEntityCopyWith(
          GetMemberRequireInfoApiDataApiKdockEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiKdockEntity) then) =
      _$GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiKdockEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_state') int apiState,
      @JsonKey(name: 'api_created_ship_id') int apiCreatedShipId,
      @JsonKey(name: 'api_complete_time') int apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') String apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') int apiItem1,
      @JsonKey(name: 'api_item2') int apiItem2,
      @JsonKey(name: 'api_item3') int apiItem3,
      @JsonKey(name: 'api_item4') int apiItem4,
      @JsonKey(name: 'api_item5') int apiItem5});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiKdockEntity>
    implements $GetMemberRequireInfoApiDataApiKdockEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiState = null,
    Object? apiCreatedShipId = null,
    Object? apiCompleteTime = null,
    Object? apiCompleteTimeStr = null,
    Object? apiItem1 = null,
    Object? apiItem2 = null,
    Object? apiItem3 = null,
    Object? apiItem4 = null,
    Object? apiItem5 = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
      apiCreatedShipId: null == apiCreatedShipId
          ? _value.apiCreatedShipId
          : apiCreatedShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCompleteTime: null == apiCompleteTime
          ? _value.apiCompleteTime
          : apiCompleteTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiCompleteTimeStr: null == apiCompleteTimeStr
          ? _value.apiCompleteTimeStr
          : apiCompleteTimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem1: null == apiItem1
          ? _value.apiItem1
          : apiItem1 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem2: null == apiItem2
          ? _value.apiItem2
          : apiItem2 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem3: null == apiItem3
          ? _value.apiItem3
          : apiItem3 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem4: null == apiItem4
          ? _value.apiItem4
          : apiItem4 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem5: null == apiItem5
          ? _value.apiItem5
          : apiItem5 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiKdockEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiKdockEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiKdockEntity) then) =
      __$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_state') int apiState,
      @JsonKey(name: 'api_created_ship_id') int apiCreatedShipId,
      @JsonKey(name: 'api_complete_time') int apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') String apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') int apiItem1,
      @JsonKey(name: 'api_item2') int apiItem2,
      @JsonKey(name: 'api_item3') int apiItem3,
      @JsonKey(name: 'api_item4') int apiItem4,
      @JsonKey(name: 'api_item5') int apiItem5});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiKdockEntity>
    implements _$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiKdockEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiKdockEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiState = null,
    Object? apiCreatedShipId = null,
    Object? apiCompleteTime = null,
    Object? apiCompleteTimeStr = null,
    Object? apiItem1 = null,
    Object? apiItem2 = null,
    Object? apiItem3 = null,
    Object? apiItem4 = null,
    Object? apiItem5 = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiKdockEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
      apiCreatedShipId: null == apiCreatedShipId
          ? _value.apiCreatedShipId
          : apiCreatedShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCompleteTime: null == apiCompleteTime
          ? _value.apiCompleteTime
          : apiCompleteTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiCompleteTimeStr: null == apiCompleteTimeStr
          ? _value.apiCompleteTimeStr
          : apiCompleteTimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem1: null == apiItem1
          ? _value.apiItem1
          : apiItem1 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem2: null == apiItem2
          ? _value.apiItem2
          : apiItem2 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem3: null == apiItem3
          ? _value.apiItem3
          : apiItem3 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem4: null == apiItem4
          ? _value.apiItem4
          : apiItem4 // ignore: cast_nullable_to_non_nullable
              as int,
      apiItem5: null == apiItem5
          ? _value.apiItem5
          : apiItem5 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataApiKdockEntity
    implements _GetMemberRequireInfoApiDataApiKdockEntity {
  _$_GetMemberRequireInfoApiDataApiKdockEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_state') required this.apiState,
      @JsonKey(name: 'api_created_ship_id') required this.apiCreatedShipId,
      @JsonKey(name: 'api_complete_time') required this.apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') required this.apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') required this.apiItem1,
      @JsonKey(name: 'api_item2') required this.apiItem2,
      @JsonKey(name: 'api_item3') required this.apiItem3,
      @JsonKey(name: 'api_item4') required this.apiItem4,
      @JsonKey(name: 'api_item5') required this.apiItem5});

  factory _$_GetMemberRequireInfoApiDataApiKdockEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiKdockEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_state')
  int apiState;
  @override
  @JsonKey(name: 'api_created_ship_id')
  int apiCreatedShipId;
  @override
  @JsonKey(name: 'api_complete_time')
  int apiCompleteTime;
  @override
  @JsonKey(name: 'api_complete_time_str')
  String apiCompleteTimeStr;
  @override
  @JsonKey(name: 'api_item1')
  int apiItem1;
  @override
  @JsonKey(name: 'api_item2')
  int apiItem2;
  @override
  @JsonKey(name: 'api_item3')
  int apiItem3;
  @override
  @JsonKey(name: 'api_item4')
  int apiItem4;
  @override
  @JsonKey(name: 'api_item5')
  int apiItem5;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataApiKdockEntity(apiId: $apiId, apiState: $apiState, apiCreatedShipId: $apiCreatedShipId, apiCompleteTime: $apiCompleteTime, apiCompleteTimeStr: $apiCompleteTimeStr, apiItem1: $apiItem1, apiItem2: $apiItem2, apiItem3: $apiItem3, apiItem4: $apiItem4, apiItem5: $apiItem5)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiKdockEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWithImpl<
              _$_GetMemberRequireInfoApiDataApiKdockEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiKdockEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiKdockEntity
    implements GetMemberRequireInfoApiDataApiKdockEntity {
  factory _GetMemberRequireInfoApiDataApiKdockEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_state') required int apiState,
          @JsonKey(name: 'api_created_ship_id') required int apiCreatedShipId,
          @JsonKey(name: 'api_complete_time') required int apiCompleteTime,
          @JsonKey(name: 'api_complete_time_str')
          required String apiCompleteTimeStr,
          @JsonKey(name: 'api_item1') required int apiItem1,
          @JsonKey(name: 'api_item2') required int apiItem2,
          @JsonKey(name: 'api_item3') required int apiItem3,
          @JsonKey(name: 'api_item4') required int apiItem4,
          @JsonKey(name: 'api_item5') required int apiItem5}) =
      _$_GetMemberRequireInfoApiDataApiKdockEntity;

  factory _GetMemberRequireInfoApiDataApiKdockEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiKdockEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_state')
  int get apiState;
  @JsonKey(name: 'api_state')
  set apiState(int value);
  @override
  @JsonKey(name: 'api_created_ship_id')
  int get apiCreatedShipId;
  @JsonKey(name: 'api_created_ship_id')
  set apiCreatedShipId(int value);
  @override
  @JsonKey(name: 'api_complete_time')
  int get apiCompleteTime;
  @JsonKey(name: 'api_complete_time')
  set apiCompleteTime(int value);
  @override
  @JsonKey(name: 'api_complete_time_str')
  String get apiCompleteTimeStr;
  @JsonKey(name: 'api_complete_time_str')
  set apiCompleteTimeStr(String value);
  @override
  @JsonKey(name: 'api_item1')
  int get apiItem1;
  @JsonKey(name: 'api_item1')
  set apiItem1(int value);
  @override
  @JsonKey(name: 'api_item2')
  int get apiItem2;
  @JsonKey(name: 'api_item2')
  set apiItem2(int value);
  @override
  @JsonKey(name: 'api_item3')
  int get apiItem3;
  @JsonKey(name: 'api_item3')
  set apiItem3(int value);
  @override
  @JsonKey(name: 'api_item4')
  int get apiItem4;
  @JsonKey(name: 'api_item4')
  set apiItem4(int value);
  @override
  @JsonKey(name: 'api_item5')
  int get apiItem5;
  @JsonKey(name: 'api_item5')
  set apiItem5(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataApiKdockEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiKdockEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiUseitemEntity
    _$GetMemberRequireInfoApiDataApiUseitemEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiUseitemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiUseitemEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count')
  int get apiCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count')
  set apiCount(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<
          GetMemberRequireInfoApiDataApiUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiUseitemEntityCopyWith(
          GetMemberRequireInfoApiDataApiUseitemEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiUseitemEntity) then) =
      _$GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiUseitemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_count') int apiCount});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiUseitemEntity>
    implements $GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiCount = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCount: null == apiCount
          ? _value.apiCount
          : apiCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiUseitemEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiUseitemEntity) then) =
      __$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_count') int apiCount});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiUseitemEntity>
    implements _$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiUseitemEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiUseitemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiCount = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiUseitemEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCount: null == apiCount
          ? _value.apiCount
          : apiCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataApiUseitemEntity
    implements _GetMemberRequireInfoApiDataApiUseitemEntity {
  _$_GetMemberRequireInfoApiDataApiUseitemEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_count') required this.apiCount});

  factory _$_GetMemberRequireInfoApiDataApiUseitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiUseitemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_count')
  int apiCount;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataApiUseitemEntity(apiId: $apiId, apiCount: $apiCount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiUseitemEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWithImpl<
              _$_GetMemberRequireInfoApiDataApiUseitemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiUseitemEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiUseitemEntity
    implements GetMemberRequireInfoApiDataApiUseitemEntity {
  factory _GetMemberRequireInfoApiDataApiUseitemEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_count') required int apiCount}) =
      _$_GetMemberRequireInfoApiDataApiUseitemEntity;

  factory _GetMemberRequireInfoApiDataApiUseitemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiUseitemEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_count')
  int get apiCount;
  @JsonKey(name: 'api_count')
  set apiCount(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataApiUseitemEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiFurnitureEntity
    _$GetMemberRequireInfoApiDataApiFurnitureEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiFurnitureEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiFurnitureEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_type')
  int get apiFurnitureType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_type')
  set apiFurnitureType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_no')
  int get apiFurnitureNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_no')
  set apiFurnitureNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_id')
  int get apiFurnitureId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture_id')
  set apiFurnitureId(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<
          GetMemberRequireInfoApiDataApiFurnitureEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith(
          GetMemberRequireInfoApiDataApiFurnitureEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiFurnitureEntity) then) =
      _$GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiFurnitureEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_furniture_type') int apiFurnitureType,
      @JsonKey(name: 'api_furniture_no') int apiFurnitureNo,
      @JsonKey(name: 'api_furniture_id') int apiFurnitureId});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiFurnitureEntity>
    implements $GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiFurnitureType = null,
    Object? apiFurnitureNo = null,
    Object? apiFurnitureId = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureType: null == apiFurnitureType
          ? _value.apiFurnitureType
          : apiFurnitureType // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureNo: null == apiFurnitureNo
          ? _value.apiFurnitureNo
          : apiFurnitureNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureId: null == apiFurnitureId
          ? _value.apiFurnitureId
          : apiFurnitureId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiFurnitureEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiFurnitureEntity)
              then) =
      __$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_furniture_type') int apiFurnitureType,
      @JsonKey(name: 'api_furniture_no') int apiFurnitureNo,
      @JsonKey(name: 'api_furniture_id') int apiFurnitureId});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiFurnitureEntity>
    implements _$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiFurnitureEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiFurnitureEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiFurnitureType = null,
    Object? apiFurnitureNo = null,
    Object? apiFurnitureId = null,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiFurnitureEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureType: null == apiFurnitureType
          ? _value.apiFurnitureType
          : apiFurnitureType // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureNo: null == apiFurnitureNo
          ? _value.apiFurnitureNo
          : apiFurnitureNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurnitureId: null == apiFurnitureId
          ? _value.apiFurnitureId
          : apiFurnitureId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataApiFurnitureEntity
    implements _GetMemberRequireInfoApiDataApiFurnitureEntity {
  _$_GetMemberRequireInfoApiDataApiFurnitureEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_furniture_type') required this.apiFurnitureType,
      @JsonKey(name: 'api_furniture_no') required this.apiFurnitureNo,
      @JsonKey(name: 'api_furniture_id') required this.apiFurnitureId});

  factory _$_GetMemberRequireInfoApiDataApiFurnitureEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiFurnitureEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_furniture_type')
  int apiFurnitureType;
  @override
  @JsonKey(name: 'api_furniture_no')
  int apiFurnitureNo;
  @override
  @JsonKey(name: 'api_furniture_id')
  int apiFurnitureId;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataApiFurnitureEntity(apiId: $apiId, apiFurnitureType: $apiFurnitureType, apiFurnitureNo: $apiFurnitureNo, apiFurnitureId: $apiFurnitureId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiFurnitureEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWithImpl<
                  _$_GetMemberRequireInfoApiDataApiFurnitureEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiFurnitureEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiFurnitureEntity
    implements GetMemberRequireInfoApiDataApiFurnitureEntity {
  factory _GetMemberRequireInfoApiDataApiFurnitureEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_furniture_type') required int apiFurnitureType,
          @JsonKey(name: 'api_furniture_no') required int apiFurnitureNo,
          @JsonKey(name: 'api_furniture_id') required int apiFurnitureId}) =
      _$_GetMemberRequireInfoApiDataApiFurnitureEntity;

  factory _GetMemberRequireInfoApiDataApiFurnitureEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiFurnitureEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_furniture_type')
  int get apiFurnitureType;
  @JsonKey(name: 'api_furniture_type')
  set apiFurnitureType(int value);
  @override
  @JsonKey(name: 'api_furniture_no')
  int get apiFurnitureNo;
  @JsonKey(name: 'api_furniture_no')
  set apiFurnitureNo(int value);
  @override
  @JsonKey(name: 'api_furniture_id')
  int get apiFurnitureId;
  @JsonKey(name: 'api_furniture_id')
  set apiFurnitureId(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataApiFurnitureEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiFurnitureEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberRequireInfoApiDataApiOssSettingEntity
    _$GetMemberRequireInfoApiDataApiOssSettingEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberRequireInfoApiDataApiOssSettingEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberRequireInfoApiDataApiOssSettingEntity {
  @JsonKey(name: 'api_language_type')
  int get apiLanguageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_language_type')
  set apiLanguageType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_oss_items')
  List<int>? get apiOssItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_oss_items')
  set apiOssItems(List<int>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<
          GetMemberRequireInfoApiDataApiOssSettingEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res> {
  factory $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith(
          GetMemberRequireInfoApiDataApiOssSettingEntity value,
          $Res Function(GetMemberRequireInfoApiDataApiOssSettingEntity) then) =
      _$GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<$Res,
          GetMemberRequireInfoApiDataApiOssSettingEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_language_type') int apiLanguageType,
      @JsonKey(name: 'api_oss_items') List<int>? apiOssItems});
}

/// @nodoc
class _$GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<$Res,
        $Val extends GetMemberRequireInfoApiDataApiOssSettingEntity>
    implements $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res> {
  _$GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLanguageType = null,
    Object? apiOssItems = freezed,
  }) {
    return _then(_value.copyWith(
      apiLanguageType: null == apiLanguageType
          ? _value.apiLanguageType
          : apiLanguageType // ignore: cast_nullable_to_non_nullable
              as int,
      apiOssItems: freezed == apiOssItems
          ? _value.apiOssItems
          : apiOssItems // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res>
    implements $GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res> {
  factory _$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith(
          _$_GetMemberRequireInfoApiDataApiOssSettingEntity value,
          $Res Function(_$_GetMemberRequireInfoApiDataApiOssSettingEntity)
              then) =
      __$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_language_type') int apiLanguageType,
      @JsonKey(name: 'api_oss_items') List<int>? apiOssItems});
}

/// @nodoc
class __$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<$Res>
    extends _$GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<$Res,
        _$_GetMemberRequireInfoApiDataApiOssSettingEntity>
    implements
        _$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<$Res> {
  __$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl(
      _$_GetMemberRequireInfoApiDataApiOssSettingEntity _value,
      $Res Function(_$_GetMemberRequireInfoApiDataApiOssSettingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLanguageType = null,
    Object? apiOssItems = freezed,
  }) {
    return _then(_$_GetMemberRequireInfoApiDataApiOssSettingEntity(
      apiLanguageType: null == apiLanguageType
          ? _value.apiLanguageType
          : apiLanguageType // ignore: cast_nullable_to_non_nullable
              as int,
      apiOssItems: freezed == apiOssItems
          ? _value.apiOssItems
          : apiOssItems // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberRequireInfoApiDataApiOssSettingEntity
    implements _GetMemberRequireInfoApiDataApiOssSettingEntity {
  _$_GetMemberRequireInfoApiDataApiOssSettingEntity(
      {@JsonKey(name: 'api_language_type') required this.apiLanguageType,
      @JsonKey(name: 'api_oss_items') this.apiOssItems});

  factory _$_GetMemberRequireInfoApiDataApiOssSettingEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberRequireInfoApiDataApiOssSettingEntityFromJson(json);

  @override
  @JsonKey(name: 'api_language_type')
  int apiLanguageType;
  @override
  @JsonKey(name: 'api_oss_items')
  List<int>? apiOssItems;

  @override
  String toString() {
    return 'GetMemberRequireInfoApiDataApiOssSettingEntity(apiLanguageType: $apiLanguageType, apiOssItems: $apiOssItems)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiOssSettingEntity>
      get copyWith =>
          __$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWithImpl<
                  _$_GetMemberRequireInfoApiDataApiOssSettingEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberRequireInfoApiDataApiOssSettingEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberRequireInfoApiDataApiOssSettingEntity
    implements GetMemberRequireInfoApiDataApiOssSettingEntity {
  factory _GetMemberRequireInfoApiDataApiOssSettingEntity(
          {@JsonKey(name: 'api_language_type') required int apiLanguageType,
          @JsonKey(name: 'api_oss_items') List<int>? apiOssItems}) =
      _$_GetMemberRequireInfoApiDataApiOssSettingEntity;

  factory _GetMemberRequireInfoApiDataApiOssSettingEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberRequireInfoApiDataApiOssSettingEntity.fromJson;

  @override
  @JsonKey(name: 'api_language_type')
  int get apiLanguageType;
  @JsonKey(name: 'api_language_type')
  set apiLanguageType(int value);
  @override
  @JsonKey(name: 'api_oss_items')
  List<int>? get apiOssItems;
  @JsonKey(name: 'api_oss_items')
  set apiOssItems(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberRequireInfoApiDataApiOssSettingEntityCopyWith<
          _$_GetMemberRequireInfoApiDataApiOssSettingEntity>
      get copyWith => throw _privateConstructorUsedError;
}
