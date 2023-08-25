// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_map_next_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqMapNextEntity _$ReqMapNextEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapNextEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapNextEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqMapNextApiDataEntity get apiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqMapNextApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapNextEntityCopyWith<ReqMapNextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapNextEntityCopyWith<$Res> {
  factory $ReqMapNextEntityCopyWith(
          ReqMapNextEntity value, $Res Function(ReqMapNextEntity) then) =
      _$ReqMapNextEntityCopyWithImpl<$Res, ReqMapNextEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMapNextApiDataEntity apiData});

  $ReqMapNextApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqMapNextEntityCopyWithImpl<$Res, $Val extends ReqMapNextEntity>
    implements $ReqMapNextEntityCopyWith<$Res> {
  _$ReqMapNextEntityCopyWithImpl(this._value, this._then);

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
              as ReqMapNextApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapNextApiDataEntityCopyWith<$Res> get apiData {
    return $ReqMapNextApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMapNextEntityCopyWith<$Res>
    implements $ReqMapNextEntityCopyWith<$Res> {
  factory _$$_ReqMapNextEntityCopyWith(
          _$_ReqMapNextEntity value, $Res Function(_$_ReqMapNextEntity) then) =
      __$$_ReqMapNextEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMapNextApiDataEntity apiData});

  @override
  $ReqMapNextApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqMapNextEntityCopyWithImpl<$Res>
    extends _$ReqMapNextEntityCopyWithImpl<$Res, _$_ReqMapNextEntity>
    implements _$$_ReqMapNextEntityCopyWith<$Res> {
  __$$_ReqMapNextEntityCopyWithImpl(
      _$_ReqMapNextEntity _value, $Res Function(_$_ReqMapNextEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqMapNextEntity(
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
              as ReqMapNextApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapNextEntity implements _ReqMapNextEntity {
  _$_ReqMapNextEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqMapNextEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMapNextEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqMapNextApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqMapNextEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapNextEntityCopyWith<_$_ReqMapNextEntity> get copyWith =>
      __$$_ReqMapNextEntityCopyWithImpl<_$_ReqMapNextEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapNextEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapNextEntity implements ReqMapNextEntity {
  factory _ReqMapNextEntity(
      {@JsonKey(name: 'api_result') required int apiResult,
      @JsonKey(name: 'api_result_msg') required String apiResultMsg,
      @JsonKey(name: 'api_data')
      required ReqMapNextApiDataEntity apiData}) = _$_ReqMapNextEntity;

  factory _ReqMapNextEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMapNextEntity.fromJson;

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
  ReqMapNextApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqMapNextApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapNextEntityCopyWith<_$_ReqMapNextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqMapNextApiDataEntity _$ReqMapNextApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMapNextApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapNextApiDataEntity {
  @JsonKey(name: 'api_rashin_flg')
  int get apiRashinFlg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rashin_flg')
  set apiRashinFlg(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rashin_id')
  int get apiRashinId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rashin_id')
  set apiRashinId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mapinfo_no')
  int get apiMapinfoNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mapinfo_no')
  set apiMapinfoNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_color_no')
  int get apiColorNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_color_no')
  set apiColorNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_event_id')
  int get apiEventId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_event_id')
  set apiEventId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_event_kind')
  int get apiEventKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_event_kind')
  set apiEventKind(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_next')
  int get apiNext => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_next')
  set apiNext(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bosscell_no')
  int get apiBosscellNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bosscell_no')
  set apiBosscellNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bosscomp')
  int get apiBosscomp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bosscomp')
  set apiBosscomp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment_kind')
  int get apiCommentKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment_kind')
  set apiCommentKind(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_production_kind')
  int get apiProductionKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_production_kind')
  set apiProductionKind(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_airsearch')
  ReqMapNextApiDataApiAirsearchEntity get apiAirsearch =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_airsearch')
  set apiAirsearch(ReqMapNextApiDataApiAirsearchEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapNextApiDataApiEDeckInfoEntity> get apiEDeckInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_deck_info')
  set apiEDeckInfo(List<ReqMapNextApiDataApiEDeckInfoEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_state')
  int get apiLimitState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_state')
  set apiLimitState(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ration_flag')
  int? get apiRationFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ration_flag')
  set apiRationFlag(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapNextApiDataEntityCopyWith<ReqMapNextApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapNextApiDataEntityCopyWith<$Res> {
  factory $ReqMapNextApiDataEntityCopyWith(ReqMapNextApiDataEntity value,
          $Res Function(ReqMapNextApiDataEntity) then) =
      _$ReqMapNextApiDataEntityCopyWithImpl<$Res, ReqMapNextApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_rashin_flg') int apiRashinFlg,
      @JsonKey(name: 'api_rashin_id') int apiRashinId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_mapinfo_no') int apiMapinfoNo,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_color_no') int apiColorNo,
      @JsonKey(name: 'api_event_id') int apiEventId,
      @JsonKey(name: 'api_event_kind') int apiEventKind,
      @JsonKey(name: 'api_next') int apiNext,
      @JsonKey(name: 'api_bosscell_no') int apiBosscellNo,
      @JsonKey(name: 'api_bosscomp') int apiBosscomp,
      @JsonKey(name: 'api_comment_kind') int apiCommentKind,
      @JsonKey(name: 'api_production_kind') int apiProductionKind,
      @JsonKey(name: 'api_airsearch')
      ReqMapNextApiDataApiAirsearchEntity apiAirsearch,
      @JsonKey(name: 'api_e_deck_info')
      List<ReqMapNextApiDataApiEDeckInfoEntity> apiEDeckInfo,
      @JsonKey(name: 'api_limit_state') int apiLimitState,
      @JsonKey(name: 'api_ration_flag') int? apiRationFlag});

  $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch;
}

/// @nodoc
class _$ReqMapNextApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqMapNextApiDataEntity>
    implements $ReqMapNextApiDataEntityCopyWith<$Res> {
  _$ReqMapNextApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRashinFlg = null,
    Object? apiRashinId = null,
    Object? apiMapareaId = null,
    Object? apiMapinfoNo = null,
    Object? apiNo = null,
    Object? apiColorNo = null,
    Object? apiEventId = null,
    Object? apiEventKind = null,
    Object? apiNext = null,
    Object? apiBosscellNo = null,
    Object? apiBosscomp = null,
    Object? apiCommentKind = null,
    Object? apiProductionKind = null,
    Object? apiAirsearch = null,
    Object? apiEDeckInfo = null,
    Object? apiLimitState = null,
    Object? apiRationFlag = freezed,
  }) {
    return _then(_value.copyWith(
      apiRashinFlg: null == apiRashinFlg
          ? _value.apiRashinFlg
          : apiRashinFlg // ignore: cast_nullable_to_non_nullable
              as int,
      apiRashinId: null == apiRashinId
          ? _value.apiRashinId
          : apiRashinId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapinfoNo: null == apiMapinfoNo
          ? _value.apiMapinfoNo
          : apiMapinfoNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiColorNo: null == apiColorNo
          ? _value.apiColorNo
          : apiColorNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiEventId: null == apiEventId
          ? _value.apiEventId
          : apiEventId // ignore: cast_nullable_to_non_nullable
              as int,
      apiEventKind: null == apiEventKind
          ? _value.apiEventKind
          : apiEventKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiNext: null == apiNext
          ? _value.apiNext
          : apiNext // ignore: cast_nullable_to_non_nullable
              as int,
      apiBosscellNo: null == apiBosscellNo
          ? _value.apiBosscellNo
          : apiBosscellNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiBosscomp: null == apiBosscomp
          ? _value.apiBosscomp
          : apiBosscomp // ignore: cast_nullable_to_non_nullable
              as int,
      apiCommentKind: null == apiCommentKind
          ? _value.apiCommentKind
          : apiCommentKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiProductionKind: null == apiProductionKind
          ? _value.apiProductionKind
          : apiProductionKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiAirsearch: null == apiAirsearch
          ? _value.apiAirsearch
          : apiAirsearch // ignore: cast_nullable_to_non_nullable
              as ReqMapNextApiDataApiAirsearchEntity,
      apiEDeckInfo: null == apiEDeckInfo
          ? _value.apiEDeckInfo
          : apiEDeckInfo // ignore: cast_nullable_to_non_nullable
              as List<ReqMapNextApiDataApiEDeckInfoEntity>,
      apiLimitState: null == apiLimitState
          ? _value.apiLimitState
          : apiLimitState // ignore: cast_nullable_to_non_nullable
              as int,
      apiRationFlag: freezed == apiRationFlag
          ? _value.apiRationFlag
          : apiRationFlag // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch {
    return $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res>(
        _value.apiAirsearch, (value) {
      return _then(_value.copyWith(apiAirsearch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMapNextApiDataEntityCopyWith<$Res>
    implements $ReqMapNextApiDataEntityCopyWith<$Res> {
  factory _$$_ReqMapNextApiDataEntityCopyWith(_$_ReqMapNextApiDataEntity value,
          $Res Function(_$_ReqMapNextApiDataEntity) then) =
      __$$_ReqMapNextApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_rashin_flg') int apiRashinFlg,
      @JsonKey(name: 'api_rashin_id') int apiRashinId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_mapinfo_no') int apiMapinfoNo,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_color_no') int apiColorNo,
      @JsonKey(name: 'api_event_id') int apiEventId,
      @JsonKey(name: 'api_event_kind') int apiEventKind,
      @JsonKey(name: 'api_next') int apiNext,
      @JsonKey(name: 'api_bosscell_no') int apiBosscellNo,
      @JsonKey(name: 'api_bosscomp') int apiBosscomp,
      @JsonKey(name: 'api_comment_kind') int apiCommentKind,
      @JsonKey(name: 'api_production_kind') int apiProductionKind,
      @JsonKey(name: 'api_airsearch')
      ReqMapNextApiDataApiAirsearchEntity apiAirsearch,
      @JsonKey(name: 'api_e_deck_info')
      List<ReqMapNextApiDataApiEDeckInfoEntity> apiEDeckInfo,
      @JsonKey(name: 'api_limit_state') int apiLimitState,
      @JsonKey(name: 'api_ration_flag') int? apiRationFlag});

  @override
  $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch;
}

/// @nodoc
class __$$_ReqMapNextApiDataEntityCopyWithImpl<$Res>
    extends _$ReqMapNextApiDataEntityCopyWithImpl<$Res,
        _$_ReqMapNextApiDataEntity>
    implements _$$_ReqMapNextApiDataEntityCopyWith<$Res> {
  __$$_ReqMapNextApiDataEntityCopyWithImpl(_$_ReqMapNextApiDataEntity _value,
      $Res Function(_$_ReqMapNextApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRashinFlg = null,
    Object? apiRashinId = null,
    Object? apiMapareaId = null,
    Object? apiMapinfoNo = null,
    Object? apiNo = null,
    Object? apiColorNo = null,
    Object? apiEventId = null,
    Object? apiEventKind = null,
    Object? apiNext = null,
    Object? apiBosscellNo = null,
    Object? apiBosscomp = null,
    Object? apiCommentKind = null,
    Object? apiProductionKind = null,
    Object? apiAirsearch = null,
    Object? apiEDeckInfo = null,
    Object? apiLimitState = null,
    Object? apiRationFlag = freezed,
  }) {
    return _then(_$_ReqMapNextApiDataEntity(
      apiRashinFlg: null == apiRashinFlg
          ? _value.apiRashinFlg
          : apiRashinFlg // ignore: cast_nullable_to_non_nullable
              as int,
      apiRashinId: null == apiRashinId
          ? _value.apiRashinId
          : apiRashinId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapinfoNo: null == apiMapinfoNo
          ? _value.apiMapinfoNo
          : apiMapinfoNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiColorNo: null == apiColorNo
          ? _value.apiColorNo
          : apiColorNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiEventId: null == apiEventId
          ? _value.apiEventId
          : apiEventId // ignore: cast_nullable_to_non_nullable
              as int,
      apiEventKind: null == apiEventKind
          ? _value.apiEventKind
          : apiEventKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiNext: null == apiNext
          ? _value.apiNext
          : apiNext // ignore: cast_nullable_to_non_nullable
              as int,
      apiBosscellNo: null == apiBosscellNo
          ? _value.apiBosscellNo
          : apiBosscellNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiBosscomp: null == apiBosscomp
          ? _value.apiBosscomp
          : apiBosscomp // ignore: cast_nullable_to_non_nullable
              as int,
      apiCommentKind: null == apiCommentKind
          ? _value.apiCommentKind
          : apiCommentKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiProductionKind: null == apiProductionKind
          ? _value.apiProductionKind
          : apiProductionKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiAirsearch: null == apiAirsearch
          ? _value.apiAirsearch
          : apiAirsearch // ignore: cast_nullable_to_non_nullable
              as ReqMapNextApiDataApiAirsearchEntity,
      apiEDeckInfo: null == apiEDeckInfo
          ? _value.apiEDeckInfo
          : apiEDeckInfo // ignore: cast_nullable_to_non_nullable
              as List<ReqMapNextApiDataApiEDeckInfoEntity>,
      apiLimitState: null == apiLimitState
          ? _value.apiLimitState
          : apiLimitState // ignore: cast_nullable_to_non_nullable
              as int,
      apiRationFlag: freezed == apiRationFlag
          ? _value.apiRationFlag
          : apiRationFlag // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapNextApiDataEntity implements _ReqMapNextApiDataEntity {
  _$_ReqMapNextApiDataEntity(
      {@JsonKey(name: 'api_rashin_flg') required this.apiRashinFlg,
      @JsonKey(name: 'api_rashin_id') required this.apiRashinId,
      @JsonKey(name: 'api_maparea_id') required this.apiMapareaId,
      @JsonKey(name: 'api_mapinfo_no') required this.apiMapinfoNo,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_color_no') required this.apiColorNo,
      @JsonKey(name: 'api_event_id') required this.apiEventId,
      @JsonKey(name: 'api_event_kind') required this.apiEventKind,
      @JsonKey(name: 'api_next') required this.apiNext,
      @JsonKey(name: 'api_bosscell_no') required this.apiBosscellNo,
      @JsonKey(name: 'api_bosscomp') required this.apiBosscomp,
      @JsonKey(name: 'api_comment_kind') required this.apiCommentKind,
      @JsonKey(name: 'api_production_kind') required this.apiProductionKind,
      @JsonKey(name: 'api_airsearch') required this.apiAirsearch,
      @JsonKey(name: 'api_e_deck_info') required this.apiEDeckInfo,
      @JsonKey(name: 'api_limit_state') required this.apiLimitState,
      @JsonKey(name: 'api_ration_flag') this.apiRationFlag});

  factory _$_ReqMapNextApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMapNextApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_rashin_flg')
  int apiRashinFlg;
  @override
  @JsonKey(name: 'api_rashin_id')
  int apiRashinId;
  @override
  @JsonKey(name: 'api_maparea_id')
  int apiMapareaId;
  @override
  @JsonKey(name: 'api_mapinfo_no')
  int apiMapinfoNo;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_color_no')
  int apiColorNo;
  @override
  @JsonKey(name: 'api_event_id')
  int apiEventId;
  @override
  @JsonKey(name: 'api_event_kind')
  int apiEventKind;
  @override
  @JsonKey(name: 'api_next')
  int apiNext;
  @override
  @JsonKey(name: 'api_bosscell_no')
  int apiBosscellNo;
  @override
  @JsonKey(name: 'api_bosscomp')
  int apiBosscomp;
  @override
  @JsonKey(name: 'api_comment_kind')
  int apiCommentKind;
  @override
  @JsonKey(name: 'api_production_kind')
  int apiProductionKind;
  @override
  @JsonKey(name: 'api_airsearch')
  ReqMapNextApiDataApiAirsearchEntity apiAirsearch;
  @override
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapNextApiDataApiEDeckInfoEntity> apiEDeckInfo;
  @override
  @JsonKey(name: 'api_limit_state')
  int apiLimitState;
  @override
  @JsonKey(name: 'api_ration_flag')
  int? apiRationFlag;

  @override
  String toString() {
    return 'ReqMapNextApiDataEntity(apiRashinFlg: $apiRashinFlg, apiRashinId: $apiRashinId, apiMapareaId: $apiMapareaId, apiMapinfoNo: $apiMapinfoNo, apiNo: $apiNo, apiColorNo: $apiColorNo, apiEventId: $apiEventId, apiEventKind: $apiEventKind, apiNext: $apiNext, apiBosscellNo: $apiBosscellNo, apiBosscomp: $apiBosscomp, apiCommentKind: $apiCommentKind, apiProductionKind: $apiProductionKind, apiAirsearch: $apiAirsearch, apiEDeckInfo: $apiEDeckInfo, apiLimitState: $apiLimitState, apiRationFlag: $apiRationFlag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapNextApiDataEntityCopyWith<_$_ReqMapNextApiDataEntity>
      get copyWith =>
          __$$_ReqMapNextApiDataEntityCopyWithImpl<_$_ReqMapNextApiDataEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapNextApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapNextApiDataEntity implements ReqMapNextApiDataEntity {
  factory _ReqMapNextApiDataEntity(
          {@JsonKey(name: 'api_rashin_flg') required int apiRashinFlg,
          @JsonKey(name: 'api_rashin_id') required int apiRashinId,
          @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
          @JsonKey(name: 'api_mapinfo_no') required int apiMapinfoNo,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_color_no') required int apiColorNo,
          @JsonKey(name: 'api_event_id') required int apiEventId,
          @JsonKey(name: 'api_event_kind') required int apiEventKind,
          @JsonKey(name: 'api_next') required int apiNext,
          @JsonKey(name: 'api_bosscell_no') required int apiBosscellNo,
          @JsonKey(name: 'api_bosscomp') required int apiBosscomp,
          @JsonKey(name: 'api_comment_kind') required int apiCommentKind,
          @JsonKey(name: 'api_production_kind') required int apiProductionKind,
          @JsonKey(name: 'api_airsearch')
          required ReqMapNextApiDataApiAirsearchEntity apiAirsearch,
          @JsonKey(name: 'api_e_deck_info')
          required List<ReqMapNextApiDataApiEDeckInfoEntity> apiEDeckInfo,
          @JsonKey(name: 'api_limit_state') required int apiLimitState,
          @JsonKey(name: 'api_ration_flag') int? apiRationFlag}) =
      _$_ReqMapNextApiDataEntity;

  factory _ReqMapNextApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMapNextApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_rashin_flg')
  int get apiRashinFlg;
  @JsonKey(name: 'api_rashin_flg')
  set apiRashinFlg(int value);
  @override
  @JsonKey(name: 'api_rashin_id')
  int get apiRashinId;
  @JsonKey(name: 'api_rashin_id')
  set apiRashinId(int value);
  @override
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value);
  @override
  @JsonKey(name: 'api_mapinfo_no')
  int get apiMapinfoNo;
  @JsonKey(name: 'api_mapinfo_no')
  set apiMapinfoNo(int value);
  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_color_no')
  int get apiColorNo;
  @JsonKey(name: 'api_color_no')
  set apiColorNo(int value);
  @override
  @JsonKey(name: 'api_event_id')
  int get apiEventId;
  @JsonKey(name: 'api_event_id')
  set apiEventId(int value);
  @override
  @JsonKey(name: 'api_event_kind')
  int get apiEventKind;
  @JsonKey(name: 'api_event_kind')
  set apiEventKind(int value);
  @override
  @JsonKey(name: 'api_next')
  int get apiNext;
  @JsonKey(name: 'api_next')
  set apiNext(int value);
  @override
  @JsonKey(name: 'api_bosscell_no')
  int get apiBosscellNo;
  @JsonKey(name: 'api_bosscell_no')
  set apiBosscellNo(int value);
  @override
  @JsonKey(name: 'api_bosscomp')
  int get apiBosscomp;
  @JsonKey(name: 'api_bosscomp')
  set apiBosscomp(int value);
  @override
  @JsonKey(name: 'api_comment_kind')
  int get apiCommentKind;
  @JsonKey(name: 'api_comment_kind')
  set apiCommentKind(int value);
  @override
  @JsonKey(name: 'api_production_kind')
  int get apiProductionKind;
  @JsonKey(name: 'api_production_kind')
  set apiProductionKind(int value);
  @override
  @JsonKey(name: 'api_airsearch')
  ReqMapNextApiDataApiAirsearchEntity get apiAirsearch;
  @JsonKey(name: 'api_airsearch')
  set apiAirsearch(ReqMapNextApiDataApiAirsearchEntity value);
  @override
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapNextApiDataApiEDeckInfoEntity> get apiEDeckInfo;
  @JsonKey(name: 'api_e_deck_info')
  set apiEDeckInfo(List<ReqMapNextApiDataApiEDeckInfoEntity> value);
  @override
  @JsonKey(name: 'api_limit_state')
  int get apiLimitState;
  @JsonKey(name: 'api_limit_state')
  set apiLimitState(int value);
  @override
  @JsonKey(name: 'api_ration_flag')
  int? get apiRationFlag;
  @JsonKey(name: 'api_ration_flag')
  set apiRationFlag(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapNextApiDataEntityCopyWith<_$_ReqMapNextApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapNextApiDataApiAirsearchEntity
    _$ReqMapNextApiDataApiAirsearchEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapNextApiDataApiAirsearchEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapNextApiDataApiAirsearchEntity {
  @JsonKey(name: 'api_plane_type')
  int get apiPlaneType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_plane_type')
  set apiPlaneType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapNextApiDataApiAirsearchEntityCopyWith<
          ReqMapNextApiDataApiAirsearchEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> {
  factory $ReqMapNextApiDataApiAirsearchEntityCopyWith(
          ReqMapNextApiDataApiAirsearchEntity value,
          $Res Function(ReqMapNextApiDataApiAirsearchEntity) then) =
      _$ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<$Res,
          ReqMapNextApiDataApiAirsearchEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_type') int apiPlaneType,
      @JsonKey(name: 'api_result') int apiResult});
}

/// @nodoc
class _$ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<$Res,
        $Val extends ReqMapNextApiDataApiAirsearchEntity>
    implements $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> {
  _$ReqMapNextApiDataApiAirsearchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiPlaneType = null,
    Object? apiResult = null,
  }) {
    return _then(_value.copyWith(
      apiPlaneType: null == apiPlaneType
          ? _value.apiPlaneType
          : apiPlaneType // ignore: cast_nullable_to_non_nullable
              as int,
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res>
    implements $ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> {
  factory _$$_ReqMapNextApiDataApiAirsearchEntityCopyWith(
          _$_ReqMapNextApiDataApiAirsearchEntity value,
          $Res Function(_$_ReqMapNextApiDataApiAirsearchEntity) then) =
      __$$_ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_type') int apiPlaneType,
      @JsonKey(name: 'api_result') int apiResult});
}

/// @nodoc
class __$$_ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<$Res>
    extends _$ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<$Res,
        _$_ReqMapNextApiDataApiAirsearchEntity>
    implements _$$_ReqMapNextApiDataApiAirsearchEntityCopyWith<$Res> {
  __$$_ReqMapNextApiDataApiAirsearchEntityCopyWithImpl(
      _$_ReqMapNextApiDataApiAirsearchEntity _value,
      $Res Function(_$_ReqMapNextApiDataApiAirsearchEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiPlaneType = null,
    Object? apiResult = null,
  }) {
    return _then(_$_ReqMapNextApiDataApiAirsearchEntity(
      apiPlaneType: null == apiPlaneType
          ? _value.apiPlaneType
          : apiPlaneType // ignore: cast_nullable_to_non_nullable
              as int,
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapNextApiDataApiAirsearchEntity
    implements _ReqMapNextApiDataApiAirsearchEntity {
  _$_ReqMapNextApiDataApiAirsearchEntity(
      {@JsonKey(name: 'api_plane_type') required this.apiPlaneType,
      @JsonKey(name: 'api_result') required this.apiResult});

  factory _$_ReqMapNextApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapNextApiDataApiAirsearchEntityFromJson(json);

  @override
  @JsonKey(name: 'api_plane_type')
  int apiPlaneType;
  @override
  @JsonKey(name: 'api_result')
  int apiResult;

  @override
  String toString() {
    return 'ReqMapNextApiDataApiAirsearchEntity(apiPlaneType: $apiPlaneType, apiResult: $apiResult)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapNextApiDataApiAirsearchEntityCopyWith<
          _$_ReqMapNextApiDataApiAirsearchEntity>
      get copyWith => __$$_ReqMapNextApiDataApiAirsearchEntityCopyWithImpl<
          _$_ReqMapNextApiDataApiAirsearchEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapNextApiDataApiAirsearchEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapNextApiDataApiAirsearchEntity
    implements ReqMapNextApiDataApiAirsearchEntity {
  factory _ReqMapNextApiDataApiAirsearchEntity(
          {@JsonKey(name: 'api_plane_type') required int apiPlaneType,
          @JsonKey(name: 'api_result') required int apiResult}) =
      _$_ReqMapNextApiDataApiAirsearchEntity;

  factory _ReqMapNextApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapNextApiDataApiAirsearchEntity.fromJson;

  @override
  @JsonKey(name: 'api_plane_type')
  int get apiPlaneType;
  @JsonKey(name: 'api_plane_type')
  set apiPlaneType(int value);
  @override
  @JsonKey(name: 'api_result')
  int get apiResult;
  @JsonKey(name: 'api_result')
  set apiResult(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapNextApiDataApiAirsearchEntityCopyWith<
          _$_ReqMapNextApiDataApiAirsearchEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapNextApiDataApiEDeckInfoEntity
    _$ReqMapNextApiDataApiEDeckInfoEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapNextApiDataApiEDeckInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapNextApiDataApiEDeckInfoEntity {
  @JsonKey(name: 'api_kind')
  int get apiKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kind')
  set apiKind(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_ids')
  List<int> get apiShipIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_ids')
  set apiShipIds(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapNextApiDataApiEDeckInfoEntityCopyWith<
          ReqMapNextApiDataApiEDeckInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapNextApiDataApiEDeckInfoEntityCopyWith<$Res> {
  factory $ReqMapNextApiDataApiEDeckInfoEntityCopyWith(
          ReqMapNextApiDataApiEDeckInfoEntity value,
          $Res Function(ReqMapNextApiDataApiEDeckInfoEntity) then) =
      _$ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
          ReqMapNextApiDataApiEDeckInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_kind') int apiKind,
      @JsonKey(name: 'api_ship_ids') List<int> apiShipIds});
}

/// @nodoc
class _$ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
        $Val extends ReqMapNextApiDataApiEDeckInfoEntity>
    implements $ReqMapNextApiDataApiEDeckInfoEntityCopyWith<$Res> {
  _$ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKind = null,
    Object? apiShipIds = null,
  }) {
    return _then(_value.copyWith(
      apiKind: null == apiKind
          ? _value.apiKind
          : apiKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipIds: null == apiShipIds
          ? _value.apiShipIds
          : apiShipIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWith<$Res>
    implements $ReqMapNextApiDataApiEDeckInfoEntityCopyWith<$Res> {
  factory _$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWith(
          _$_ReqMapNextApiDataApiEDeckInfoEntity value,
          $Res Function(_$_ReqMapNextApiDataApiEDeckInfoEntity) then) =
      __$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_kind') int apiKind,
      @JsonKey(name: 'api_ship_ids') List<int> apiShipIds});
}

/// @nodoc
class __$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<$Res>
    extends _$ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
        _$_ReqMapNextApiDataApiEDeckInfoEntity>
    implements _$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWith<$Res> {
  __$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl(
      _$_ReqMapNextApiDataApiEDeckInfoEntity _value,
      $Res Function(_$_ReqMapNextApiDataApiEDeckInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKind = null,
    Object? apiShipIds = null,
  }) {
    return _then(_$_ReqMapNextApiDataApiEDeckInfoEntity(
      apiKind: null == apiKind
          ? _value.apiKind
          : apiKind // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipIds: null == apiShipIds
          ? _value.apiShipIds
          : apiShipIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapNextApiDataApiEDeckInfoEntity
    implements _ReqMapNextApiDataApiEDeckInfoEntity {
  _$_ReqMapNextApiDataApiEDeckInfoEntity(
      {@JsonKey(name: 'api_kind') required this.apiKind,
      @JsonKey(name: 'api_ship_ids') required this.apiShipIds});

  factory _$_ReqMapNextApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapNextApiDataApiEDeckInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'api_kind')
  int apiKind;
  @override
  @JsonKey(name: 'api_ship_ids')
  List<int> apiShipIds;

  @override
  String toString() {
    return 'ReqMapNextApiDataApiEDeckInfoEntity(apiKind: $apiKind, apiShipIds: $apiShipIds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWith<
          _$_ReqMapNextApiDataApiEDeckInfoEntity>
      get copyWith => __$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWithImpl<
          _$_ReqMapNextApiDataApiEDeckInfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapNextApiDataApiEDeckInfoEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapNextApiDataApiEDeckInfoEntity
    implements ReqMapNextApiDataApiEDeckInfoEntity {
  factory _ReqMapNextApiDataApiEDeckInfoEntity(
          {@JsonKey(name: 'api_kind') required int apiKind,
          @JsonKey(name: 'api_ship_ids') required List<int> apiShipIds}) =
      _$_ReqMapNextApiDataApiEDeckInfoEntity;

  factory _ReqMapNextApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapNextApiDataApiEDeckInfoEntity.fromJson;

  @override
  @JsonKey(name: 'api_kind')
  int get apiKind;
  @JsonKey(name: 'api_kind')
  set apiKind(int value);
  @override
  @JsonKey(name: 'api_ship_ids')
  List<int> get apiShipIds;
  @JsonKey(name: 'api_ship_ids')
  set apiShipIds(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapNextApiDataApiEDeckInfoEntityCopyWith<
          _$_ReqMapNextApiDataApiEDeckInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}
