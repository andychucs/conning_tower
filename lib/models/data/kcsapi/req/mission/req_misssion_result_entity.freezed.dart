// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_misssion_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqMisssionResultEntity _$ReqMisssionResultEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMisssionResultEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMisssionResultEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqMisssionResultApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqMisssionResultApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMisssionResultEntityCopyWith<ReqMisssionResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMisssionResultEntityCopyWith<$Res> {
  factory $ReqMisssionResultEntityCopyWith(ReqMisssionResultEntity value,
          $Res Function(ReqMisssionResultEntity) then) =
      _$ReqMisssionResultEntityCopyWithImpl<$Res, ReqMisssionResultEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMisssionResultApiDataEntity apiData});

  $ReqMisssionResultApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqMisssionResultEntityCopyWithImpl<$Res,
        $Val extends ReqMisssionResultEntity>
    implements $ReqMisssionResultEntityCopyWith<$Res> {
  _$ReqMisssionResultEntityCopyWithImpl(this._value, this._then);

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
              as ReqMisssionResultApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMisssionResultApiDataEntityCopyWith<$Res> get apiData {
    return $ReqMisssionResultApiDataEntityCopyWith<$Res>(_value.apiData,
        (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMisssionResultEntityCopyWith<$Res>
    implements $ReqMisssionResultEntityCopyWith<$Res> {
  factory _$$_ReqMisssionResultEntityCopyWith(_$_ReqMisssionResultEntity value,
          $Res Function(_$_ReqMisssionResultEntity) then) =
      __$$_ReqMisssionResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMisssionResultApiDataEntity apiData});

  @override
  $ReqMisssionResultApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqMisssionResultEntityCopyWithImpl<$Res>
    extends _$ReqMisssionResultEntityCopyWithImpl<$Res,
        _$_ReqMisssionResultEntity>
    implements _$$_ReqMisssionResultEntityCopyWith<$Res> {
  __$$_ReqMisssionResultEntityCopyWithImpl(_$_ReqMisssionResultEntity _value,
      $Res Function(_$_ReqMisssionResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqMisssionResultEntity(
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
              as ReqMisssionResultApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMisssionResultEntity implements _ReqMisssionResultEntity {
  _$_ReqMisssionResultEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqMisssionResultEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMisssionResultEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqMisssionResultApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqMisssionResultEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMisssionResultEntityCopyWith<_$_ReqMisssionResultEntity>
      get copyWith =>
          __$$_ReqMisssionResultEntityCopyWithImpl<_$_ReqMisssionResultEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMisssionResultEntityToJson(
      this,
    );
  }
}

abstract class _ReqMisssionResultEntity implements ReqMisssionResultEntity {
  factory _ReqMisssionResultEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required ReqMisssionResultApiDataEntity apiData}) =
      _$_ReqMisssionResultEntity;

  factory _ReqMisssionResultEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMisssionResultEntity.fromJson;

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
  ReqMisssionResultApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqMisssionResultApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMisssionResultEntityCopyWith<_$_ReqMisssionResultEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMisssionResultApiDataEntity _$ReqMisssionResultApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMisssionResultApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMisssionResultApiDataEntity {
  @JsonKey(name: 'api_ship_id')
  List<int> get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_clear_result')
  int get apiClearResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_clear_result')
  set apiClearResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp')
  int get apiGetExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp')
  set apiGetExp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_lv')
  int get apiMemberLv => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_lv')
  set apiMemberLv(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_exp')
  int get apiMemberExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_exp')
  set apiMemberExp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship_exp')
  List<int> get apiGetShipExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship_exp')
  set apiGetShipExp(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp_lvup')
  List<dynamic> get apiGetExpLvup => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp_lvup')
  set apiGetExpLvup(List<dynamic> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_name')
  String get apiMapareaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_name')
  set apiMapareaName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_detail')
  String get apiDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_detail')
  set apiDetail(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_name')
  String get apiQuestName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_name')
  set apiQuestName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_level')
  int get apiQuestLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_level')
  set apiQuestLevel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_material')
  int get apiGetMaterial => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_material')
  set apiGetMaterial(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem_flag')
  List<int> get apiUseitemFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem_flag')
  set apiUseitemFlag(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMisssionResultApiDataEntityCopyWith<ReqMisssionResultApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMisssionResultApiDataEntityCopyWith<$Res> {
  factory $ReqMisssionResultApiDataEntityCopyWith(
          ReqMisssionResultApiDataEntity value,
          $Res Function(ReqMisssionResultApiDataEntity) then) =
      _$ReqMisssionResultApiDataEntityCopyWithImpl<$Res,
          ReqMisssionResultApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') List<int> apiShipId,
      @JsonKey(name: 'api_clear_result') int apiClearResult,
      @JsonKey(name: 'api_get_exp') int apiGetExp,
      @JsonKey(name: 'api_member_lv') int apiMemberLv,
      @JsonKey(name: 'api_member_exp') int apiMemberExp,
      @JsonKey(name: 'api_get_ship_exp') List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_maparea_name') String apiMapareaName,
      @JsonKey(name: 'api_detail') String apiDetail,
      @JsonKey(name: 'api_quest_name') String apiQuestName,
      @JsonKey(name: 'api_quest_level') int apiQuestLevel,
      @JsonKey(name: 'api_get_material') int apiGetMaterial,
      @JsonKey(name: 'api_useitem_flag') List<int> apiUseitemFlag});
}

/// @nodoc
class _$ReqMisssionResultApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqMisssionResultApiDataEntity>
    implements $ReqMisssionResultApiDataEntityCopyWith<$Res> {
  _$ReqMisssionResultApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiClearResult = null,
    Object? apiGetExp = null,
    Object? apiMemberLv = null,
    Object? apiMemberExp = null,
    Object? apiGetShipExp = null,
    Object? apiGetExpLvup = null,
    Object? apiMapareaName = null,
    Object? apiDetail = null,
    Object? apiQuestName = null,
    Object? apiQuestLevel = null,
    Object? apiGetMaterial = null,
    Object? apiUseitemFlag = null,
  }) {
    return _then(_value.copyWith(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiClearResult: null == apiClearResult
          ? _value.apiClearResult
          : apiClearResult // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetExp: null == apiGetExp
          ? _value.apiGetExp
          : apiGetExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberLv: null == apiMemberLv
          ? _value.apiMemberLv
          : apiMemberLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberExp: null == apiMemberExp
          ? _value.apiMemberExp
          : apiMemberExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetShipExp: null == apiGetShipExp
          ? _value.apiGetShipExp
          : apiGetShipExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiGetExpLvup: null == apiGetExpLvup
          ? _value.apiGetExpLvup
          : apiGetExpLvup // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiMapareaName: null == apiMapareaName
          ? _value.apiMapareaName
          : apiMapareaName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDetail: null == apiDetail
          ? _value.apiDetail
          : apiDetail // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestName: null == apiQuestName
          ? _value.apiQuestName
          : apiQuestName // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestLevel: null == apiQuestLevel
          ? _value.apiQuestLevel
          : apiQuestLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetMaterial: null == apiGetMaterial
          ? _value.apiGetMaterial
          : apiGetMaterial // ignore: cast_nullable_to_non_nullable
              as int,
      apiUseitemFlag: null == apiUseitemFlag
          ? _value.apiUseitemFlag
          : apiUseitemFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMisssionResultApiDataEntityCopyWith<$Res>
    implements $ReqMisssionResultApiDataEntityCopyWith<$Res> {
  factory _$$_ReqMisssionResultApiDataEntityCopyWith(
          _$_ReqMisssionResultApiDataEntity value,
          $Res Function(_$_ReqMisssionResultApiDataEntity) then) =
      __$$_ReqMisssionResultApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') List<int> apiShipId,
      @JsonKey(name: 'api_clear_result') int apiClearResult,
      @JsonKey(name: 'api_get_exp') int apiGetExp,
      @JsonKey(name: 'api_member_lv') int apiMemberLv,
      @JsonKey(name: 'api_member_exp') int apiMemberExp,
      @JsonKey(name: 'api_get_ship_exp') List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_maparea_name') String apiMapareaName,
      @JsonKey(name: 'api_detail') String apiDetail,
      @JsonKey(name: 'api_quest_name') String apiQuestName,
      @JsonKey(name: 'api_quest_level') int apiQuestLevel,
      @JsonKey(name: 'api_get_material') int apiGetMaterial,
      @JsonKey(name: 'api_useitem_flag') List<int> apiUseitemFlag});
}

/// @nodoc
class __$$_ReqMisssionResultApiDataEntityCopyWithImpl<$Res>
    extends _$ReqMisssionResultApiDataEntityCopyWithImpl<$Res,
        _$_ReqMisssionResultApiDataEntity>
    implements _$$_ReqMisssionResultApiDataEntityCopyWith<$Res> {
  __$$_ReqMisssionResultApiDataEntityCopyWithImpl(
      _$_ReqMisssionResultApiDataEntity _value,
      $Res Function(_$_ReqMisssionResultApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiClearResult = null,
    Object? apiGetExp = null,
    Object? apiMemberLv = null,
    Object? apiMemberExp = null,
    Object? apiGetShipExp = null,
    Object? apiGetExpLvup = null,
    Object? apiMapareaName = null,
    Object? apiDetail = null,
    Object? apiQuestName = null,
    Object? apiQuestLevel = null,
    Object? apiGetMaterial = null,
    Object? apiUseitemFlag = null,
  }) {
    return _then(_$_ReqMisssionResultApiDataEntity(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiClearResult: null == apiClearResult
          ? _value.apiClearResult
          : apiClearResult // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetExp: null == apiGetExp
          ? _value.apiGetExp
          : apiGetExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberLv: null == apiMemberLv
          ? _value.apiMemberLv
          : apiMemberLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberExp: null == apiMemberExp
          ? _value.apiMemberExp
          : apiMemberExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetShipExp: null == apiGetShipExp
          ? _value.apiGetShipExp
          : apiGetShipExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiGetExpLvup: null == apiGetExpLvup
          ? _value.apiGetExpLvup
          : apiGetExpLvup // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiMapareaName: null == apiMapareaName
          ? _value.apiMapareaName
          : apiMapareaName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDetail: null == apiDetail
          ? _value.apiDetail
          : apiDetail // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestName: null == apiQuestName
          ? _value.apiQuestName
          : apiQuestName // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestLevel: null == apiQuestLevel
          ? _value.apiQuestLevel
          : apiQuestLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetMaterial: null == apiGetMaterial
          ? _value.apiGetMaterial
          : apiGetMaterial // ignore: cast_nullable_to_non_nullable
              as int,
      apiUseitemFlag: null == apiUseitemFlag
          ? _value.apiUseitemFlag
          : apiUseitemFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMisssionResultApiDataEntity
    implements _ReqMisssionResultApiDataEntity {
  _$_ReqMisssionResultApiDataEntity(
      {@JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_clear_result') required this.apiClearResult,
      @JsonKey(name: 'api_get_exp') required this.apiGetExp,
      @JsonKey(name: 'api_member_lv') required this.apiMemberLv,
      @JsonKey(name: 'api_member_exp') required this.apiMemberExp,
      @JsonKey(name: 'api_get_ship_exp') required this.apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') required this.apiGetExpLvup,
      @JsonKey(name: 'api_maparea_name') required this.apiMapareaName,
      @JsonKey(name: 'api_detail') required this.apiDetail,
      @JsonKey(name: 'api_quest_name') required this.apiQuestName,
      @JsonKey(name: 'api_quest_level') required this.apiQuestLevel,
      @JsonKey(name: 'api_get_material') required this.apiGetMaterial,
      @JsonKey(name: 'api_useitem_flag') required this.apiUseitemFlag});

  factory _$_ReqMisssionResultApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMisssionResultApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_ship_id')
  List<int> apiShipId;
  @override
  @JsonKey(name: 'api_clear_result')
  int apiClearResult;
  @override
  @JsonKey(name: 'api_get_exp')
  int apiGetExp;
  @override
  @JsonKey(name: 'api_member_lv')
  int apiMemberLv;
  @override
  @JsonKey(name: 'api_member_exp')
  int apiMemberExp;
  @override
  @JsonKey(name: 'api_get_ship_exp')
  List<int> apiGetShipExp;
  @override
  @JsonKey(name: 'api_get_exp_lvup')
  List<dynamic> apiGetExpLvup;
  @override
  @JsonKey(name: 'api_maparea_name')
  String apiMapareaName;
  @override
  @JsonKey(name: 'api_detail')
  String apiDetail;
  @override
  @JsonKey(name: 'api_quest_name')
  String apiQuestName;
  @override
  @JsonKey(name: 'api_quest_level')
  int apiQuestLevel;
  @override
  @JsonKey(name: 'api_get_material')
  int apiGetMaterial;
  @override
  @JsonKey(name: 'api_useitem_flag')
  List<int> apiUseitemFlag;

  @override
  String toString() {
    return 'ReqMisssionResultApiDataEntity(apiShipId: $apiShipId, apiClearResult: $apiClearResult, apiGetExp: $apiGetExp, apiMemberLv: $apiMemberLv, apiMemberExp: $apiMemberExp, apiGetShipExp: $apiGetShipExp, apiGetExpLvup: $apiGetExpLvup, apiMapareaName: $apiMapareaName, apiDetail: $apiDetail, apiQuestName: $apiQuestName, apiQuestLevel: $apiQuestLevel, apiGetMaterial: $apiGetMaterial, apiUseitemFlag: $apiUseitemFlag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMisssionResultApiDataEntityCopyWith<_$_ReqMisssionResultApiDataEntity>
      get copyWith => __$$_ReqMisssionResultApiDataEntityCopyWithImpl<
          _$_ReqMisssionResultApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMisssionResultApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMisssionResultApiDataEntity
    implements ReqMisssionResultApiDataEntity {
  factory _ReqMisssionResultApiDataEntity(
      {@JsonKey(name: 'api_ship_id') required List<int> apiShipId,
      @JsonKey(name: 'api_clear_result') required int apiClearResult,
      @JsonKey(name: 'api_get_exp') required int apiGetExp,
      @JsonKey(name: 'api_member_lv') required int apiMemberLv,
      @JsonKey(name: 'api_member_exp') required int apiMemberExp,
      @JsonKey(name: 'api_get_ship_exp') required List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') required List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_maparea_name') required String apiMapareaName,
      @JsonKey(name: 'api_detail') required String apiDetail,
      @JsonKey(name: 'api_quest_name') required String apiQuestName,
      @JsonKey(name: 'api_quest_level') required int apiQuestLevel,
      @JsonKey(name: 'api_get_material') required int apiGetMaterial,
      @JsonKey(name: 'api_useitem_flag')
      required List<int> apiUseitemFlag}) = _$_ReqMisssionResultApiDataEntity;

  factory _ReqMisssionResultApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMisssionResultApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_ship_id')
  List<int> get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(List<int> value);
  @override
  @JsonKey(name: 'api_clear_result')
  int get apiClearResult;
  @JsonKey(name: 'api_clear_result')
  set apiClearResult(int value);
  @override
  @JsonKey(name: 'api_get_exp')
  int get apiGetExp;
  @JsonKey(name: 'api_get_exp')
  set apiGetExp(int value);
  @override
  @JsonKey(name: 'api_member_lv')
  int get apiMemberLv;
  @JsonKey(name: 'api_member_lv')
  set apiMemberLv(int value);
  @override
  @JsonKey(name: 'api_member_exp')
  int get apiMemberExp;
  @JsonKey(name: 'api_member_exp')
  set apiMemberExp(int value);
  @override
  @JsonKey(name: 'api_get_ship_exp')
  List<int> get apiGetShipExp;
  @JsonKey(name: 'api_get_ship_exp')
  set apiGetShipExp(List<int> value);
  @override
  @JsonKey(name: 'api_get_exp_lvup')
  List<dynamic> get apiGetExpLvup;
  @JsonKey(name: 'api_get_exp_lvup')
  set apiGetExpLvup(List<dynamic> value);
  @override
  @JsonKey(name: 'api_maparea_name')
  String get apiMapareaName;
  @JsonKey(name: 'api_maparea_name')
  set apiMapareaName(String value);
  @override
  @JsonKey(name: 'api_detail')
  String get apiDetail;
  @JsonKey(name: 'api_detail')
  set apiDetail(String value);
  @override
  @JsonKey(name: 'api_quest_name')
  String get apiQuestName;
  @JsonKey(name: 'api_quest_name')
  set apiQuestName(String value);
  @override
  @JsonKey(name: 'api_quest_level')
  int get apiQuestLevel;
  @JsonKey(name: 'api_quest_level')
  set apiQuestLevel(int value);
  @override
  @JsonKey(name: 'api_get_material')
  int get apiGetMaterial;
  @JsonKey(name: 'api_get_material')
  set apiGetMaterial(int value);
  @override
  @JsonKey(name: 'api_useitem_flag')
  List<int> get apiUseitemFlag;
  @JsonKey(name: 'api_useitem_flag')
  set apiUseitemFlag(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMisssionResultApiDataEntityCopyWith<_$_ReqMisssionResultApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
