// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_map_start_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqMapStartEntity _$ReqMapStartEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapStartEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqMapStartApiDataEntity get apiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqMapStartApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapStartEntityCopyWith<ReqMapStartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartEntityCopyWith<$Res> {
  factory $ReqMapStartEntityCopyWith(
          ReqMapStartEntity value, $Res Function(ReqMapStartEntity) then) =
      _$ReqMapStartEntityCopyWithImpl<$Res, ReqMapStartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMapStartApiDataEntity apiData});

  $ReqMapStartApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqMapStartEntityCopyWithImpl<$Res, $Val extends ReqMapStartEntity>
    implements $ReqMapStartEntityCopyWith<$Res> {
  _$ReqMapStartEntityCopyWithImpl(this._value, this._then);

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
              as ReqMapStartApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapStartApiDataEntityCopyWith<$Res> get apiData {
    return $ReqMapStartApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMapStartEntityCopyWith<$Res>
    implements $ReqMapStartEntityCopyWith<$Res> {
  factory _$$_ReqMapStartEntityCopyWith(_$_ReqMapStartEntity value,
          $Res Function(_$_ReqMapStartEntity) then) =
      __$$_ReqMapStartEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqMapStartApiDataEntity apiData});

  @override
  $ReqMapStartApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqMapStartEntityCopyWithImpl<$Res>
    extends _$ReqMapStartEntityCopyWithImpl<$Res, _$_ReqMapStartEntity>
    implements _$$_ReqMapStartEntityCopyWith<$Res> {
  __$$_ReqMapStartEntityCopyWithImpl(
      _$_ReqMapStartEntity _value, $Res Function(_$_ReqMapStartEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqMapStartEntity(
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
              as ReqMapStartApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapStartEntity implements _ReqMapStartEntity {
  _$_ReqMapStartEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqMapStartEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMapStartEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqMapStartApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqMapStartEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartEntityCopyWith<_$_ReqMapStartEntity> get copyWith =>
      __$$_ReqMapStartEntityCopyWithImpl<_$_ReqMapStartEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartEntity implements ReqMapStartEntity {
  factory _ReqMapStartEntity(
      {@JsonKey(name: 'api_result') required int apiResult,
      @JsonKey(name: 'api_result_msg') required String apiResultMsg,
      @JsonKey(name: 'api_data')
      required ReqMapStartApiDataEntity apiData}) = _$_ReqMapStartEntity;

  factory _ReqMapStartEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMapStartEntity.fromJson;

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
  ReqMapStartApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqMapStartApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapStartEntityCopyWith<_$_ReqMapStartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqMapStartApiDataEntity _$ReqMapStartApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqMapStartApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataEntity {
  @JsonKey(name: 'api_cell_data')
  List<ReqMapStartApiDataApiCellDataEntity> get apiCellData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cell_data')
  set apiCellData(List<ReqMapStartApiDataApiCellDataEntity> value) =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: 'api_airsearch')
  ReqMapStartApiDataApiAirsearchEntity get apiAirsearch =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_airsearch')
  set apiAirsearch(ReqMapStartApiDataApiAirsearchEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapStartApiDataApiEDeckInfoEntity>? get apiEDeckInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_deck_info')
  set apiEDeckInfo(List<ReqMapStartApiDataApiEDeckInfoEntity>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eventmap')
  ReqMapStartApiDataApiEventmapEntity? get apiEventmap =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eventmap')
  set apiEventmap(ReqMapStartApiDataApiEventmapEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_select_route')
  ReqMapStartApiDataApiSelectRouteEntity? get apiSelectRoute =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_select_route')
  set apiSelectRoute(ReqMapStartApiDataApiSelectRouteEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_state')
  int get apiLimitState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_limit_state')
  set apiLimitState(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_from_no')
  int get apiFromNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_from_no')
  set apiFromNo(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapStartApiDataEntityCopyWith<ReqMapStartApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataEntityCopyWith(ReqMapStartApiDataEntity value,
          $Res Function(ReqMapStartApiDataEntity) then) =
      _$ReqMapStartApiDataEntityCopyWithImpl<$Res, ReqMapStartApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_cell_data')
      List<ReqMapStartApiDataApiCellDataEntity> apiCellData,
      @JsonKey(name: 'api_rashin_flg') int apiRashinFlg,
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
      @JsonKey(name: 'api_airsearch')
      ReqMapStartApiDataApiAirsearchEntity apiAirsearch,
      @JsonKey(name: 'api_e_deck_info')
      List<ReqMapStartApiDataApiEDeckInfoEntity>? apiEDeckInfo,
      @JsonKey(name: 'api_eventmap')
      ReqMapStartApiDataApiEventmapEntity? apiEventmap,
      @JsonKey(name: 'api_select_route')
      ReqMapStartApiDataApiSelectRouteEntity? apiSelectRoute,
      @JsonKey(name: 'api_limit_state') int apiLimitState,
      @JsonKey(name: 'api_from_no') int apiFromNo});

  $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch;
  $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res>? get apiEventmap;
  $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res>? get apiSelectRoute;
}

/// @nodoc
class _$ReqMapStartApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataEntity>
    implements $ReqMapStartApiDataEntityCopyWith<$Res> {
  _$ReqMapStartApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCellData = null,
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
    Object? apiAirsearch = null,
    Object? apiEDeckInfo = freezed,
    Object? apiEventmap = freezed,
    Object? apiSelectRoute = freezed,
    Object? apiLimitState = null,
    Object? apiFromNo = null,
  }) {
    return _then(_value.copyWith(
      apiCellData: null == apiCellData
          ? _value.apiCellData
          : apiCellData // ignore: cast_nullable_to_non_nullable
              as List<ReqMapStartApiDataApiCellDataEntity>,
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
      apiAirsearch: null == apiAirsearch
          ? _value.apiAirsearch
          : apiAirsearch // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiAirsearchEntity,
      apiEDeckInfo: freezed == apiEDeckInfo
          ? _value.apiEDeckInfo
          : apiEDeckInfo // ignore: cast_nullable_to_non_nullable
              as List<ReqMapStartApiDataApiEDeckInfoEntity>?,
      apiEventmap: freezed == apiEventmap
          ? _value.apiEventmap
          : apiEventmap // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiEventmapEntity?,
      apiSelectRoute: freezed == apiSelectRoute
          ? _value.apiSelectRoute
          : apiSelectRoute // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiSelectRouteEntity?,
      apiLimitState: null == apiLimitState
          ? _value.apiLimitState
          : apiLimitState // ignore: cast_nullable_to_non_nullable
              as int,
      apiFromNo: null == apiFromNo
          ? _value.apiFromNo
          : apiFromNo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch {
    return $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res>(
        _value.apiAirsearch, (value) {
      return _then(_value.copyWith(apiAirsearch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res>? get apiEventmap {
    if (_value.apiEventmap == null) {
      return null;
    }

    return $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res>(
        _value.apiEventmap!, (value) {
      return _then(_value.copyWith(apiEventmap: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res>? get apiSelectRoute {
    if (_value.apiSelectRoute == null) {
      return null;
    }

    return $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res>(
        _value.apiSelectRoute!, (value) {
      return _then(_value.copyWith(apiSelectRoute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqMapStartApiDataEntityCopyWith<$Res>
    implements $ReqMapStartApiDataEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataEntityCopyWith(
          _$_ReqMapStartApiDataEntity value,
          $Res Function(_$_ReqMapStartApiDataEntity) then) =
      __$$_ReqMapStartApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_cell_data')
      List<ReqMapStartApiDataApiCellDataEntity> apiCellData,
      @JsonKey(name: 'api_rashin_flg') int apiRashinFlg,
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
      @JsonKey(name: 'api_airsearch')
      ReqMapStartApiDataApiAirsearchEntity apiAirsearch,
      @JsonKey(name: 'api_e_deck_info')
      List<ReqMapStartApiDataApiEDeckInfoEntity>? apiEDeckInfo,
      @JsonKey(name: 'api_eventmap')
      ReqMapStartApiDataApiEventmapEntity? apiEventmap,
      @JsonKey(name: 'api_select_route')
      ReqMapStartApiDataApiSelectRouteEntity? apiSelectRoute,
      @JsonKey(name: 'api_limit_state') int apiLimitState,
      @JsonKey(name: 'api_from_no') int apiFromNo});

  @override
  $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> get apiAirsearch;
  @override
  $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res>? get apiEventmap;
  @override
  $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res>? get apiSelectRoute;
}

/// @nodoc
class __$$_ReqMapStartApiDataEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataEntity>
    implements _$$_ReqMapStartApiDataEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataEntityCopyWithImpl(_$_ReqMapStartApiDataEntity _value,
      $Res Function(_$_ReqMapStartApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCellData = null,
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
    Object? apiAirsearch = null,
    Object? apiEDeckInfo = freezed,
    Object? apiEventmap = freezed,
    Object? apiSelectRoute = freezed,
    Object? apiLimitState = null,
    Object? apiFromNo = null,
  }) {
    return _then(_$_ReqMapStartApiDataEntity(
      apiCellData: null == apiCellData
          ? _value.apiCellData
          : apiCellData // ignore: cast_nullable_to_non_nullable
              as List<ReqMapStartApiDataApiCellDataEntity>,
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
      apiAirsearch: null == apiAirsearch
          ? _value.apiAirsearch
          : apiAirsearch // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiAirsearchEntity,
      apiEDeckInfo: freezed == apiEDeckInfo
          ? _value.apiEDeckInfo
          : apiEDeckInfo // ignore: cast_nullable_to_non_nullable
              as List<ReqMapStartApiDataApiEDeckInfoEntity>?,
      apiEventmap: freezed == apiEventmap
          ? _value.apiEventmap
          : apiEventmap // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiEventmapEntity?,
      apiSelectRoute: freezed == apiSelectRoute
          ? _value.apiSelectRoute
          : apiSelectRoute // ignore: cast_nullable_to_non_nullable
              as ReqMapStartApiDataApiSelectRouteEntity?,
      apiLimitState: null == apiLimitState
          ? _value.apiLimitState
          : apiLimitState // ignore: cast_nullable_to_non_nullable
              as int,
      apiFromNo: null == apiFromNo
          ? _value.apiFromNo
          : apiFromNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapStartApiDataEntity implements _ReqMapStartApiDataEntity {
  _$_ReqMapStartApiDataEntity(
      {@JsonKey(name: 'api_cell_data') required this.apiCellData,
      @JsonKey(name: 'api_rashin_flg') required this.apiRashinFlg,
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
      @JsonKey(name: 'api_airsearch') required this.apiAirsearch,
      @JsonKey(name: 'api_e_deck_info') this.apiEDeckInfo,
      @JsonKey(name: 'api_eventmap') this.apiEventmap,
      @JsonKey(name: 'api_select_route') this.apiSelectRoute,
      @JsonKey(name: 'api_limit_state') required this.apiLimitState,
      @JsonKey(name: 'api_from_no') required this.apiFromNo});

  factory _$_ReqMapStartApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_cell_data')
  List<ReqMapStartApiDataApiCellDataEntity> apiCellData;
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
  @JsonKey(name: 'api_airsearch')
  ReqMapStartApiDataApiAirsearchEntity apiAirsearch;
  @override
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapStartApiDataApiEDeckInfoEntity>? apiEDeckInfo;
  @override
  @JsonKey(name: 'api_eventmap')
  ReqMapStartApiDataApiEventmapEntity? apiEventmap;
  @override
  @JsonKey(name: 'api_select_route')
  ReqMapStartApiDataApiSelectRouteEntity? apiSelectRoute;
  @override
  @JsonKey(name: 'api_limit_state')
  int apiLimitState;
  @override
  @JsonKey(name: 'api_from_no')
  int apiFromNo;

  @override
  String toString() {
    return 'ReqMapStartApiDataEntity(apiCellData: $apiCellData, apiRashinFlg: $apiRashinFlg, apiRashinId: $apiRashinId, apiMapareaId: $apiMapareaId, apiMapinfoNo: $apiMapinfoNo, apiNo: $apiNo, apiColorNo: $apiColorNo, apiEventId: $apiEventId, apiEventKind: $apiEventKind, apiNext: $apiNext, apiBosscellNo: $apiBosscellNo, apiBosscomp: $apiBosscomp, apiAirsearch: $apiAirsearch, apiEDeckInfo: $apiEDeckInfo, apiEventmap: $apiEventmap, apiSelectRoute: $apiSelectRoute, apiLimitState: $apiLimitState, apiFromNo: $apiFromNo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataEntityCopyWith<_$_ReqMapStartApiDataEntity>
      get copyWith => __$$_ReqMapStartApiDataEntityCopyWithImpl<
          _$_ReqMapStartApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataEntity implements ReqMapStartApiDataEntity {
  factory _ReqMapStartApiDataEntity(
          {@JsonKey(name: 'api_cell_data')
          required List<ReqMapStartApiDataApiCellDataEntity> apiCellData,
          @JsonKey(name: 'api_rashin_flg') required int apiRashinFlg,
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
          @JsonKey(name: 'api_airsearch')
          required ReqMapStartApiDataApiAirsearchEntity apiAirsearch,
          @JsonKey(name: 'api_e_deck_info')
          List<ReqMapStartApiDataApiEDeckInfoEntity>? apiEDeckInfo,
          @JsonKey(name: 'api_eventmap')
          ReqMapStartApiDataApiEventmapEntity? apiEventmap,
          @JsonKey(name: 'api_select_route')
          ReqMapStartApiDataApiSelectRouteEntity? apiSelectRoute,
          @JsonKey(name: 'api_limit_state') required int apiLimitState,
          @JsonKey(name: 'api_from_no') required int apiFromNo}) =
      _$_ReqMapStartApiDataEntity;

  factory _ReqMapStartApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqMapStartApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_cell_data')
  List<ReqMapStartApiDataApiCellDataEntity> get apiCellData;
  @JsonKey(name: 'api_cell_data')
  set apiCellData(List<ReqMapStartApiDataApiCellDataEntity> value);
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
  @JsonKey(name: 'api_airsearch')
  ReqMapStartApiDataApiAirsearchEntity get apiAirsearch;
  @JsonKey(name: 'api_airsearch')
  set apiAirsearch(ReqMapStartApiDataApiAirsearchEntity value);
  @override
  @JsonKey(name: 'api_e_deck_info')
  List<ReqMapStartApiDataApiEDeckInfoEntity>? get apiEDeckInfo;
  @JsonKey(name: 'api_e_deck_info')
  set apiEDeckInfo(List<ReqMapStartApiDataApiEDeckInfoEntity>? value);
  @override
  @JsonKey(name: 'api_eventmap')
  ReqMapStartApiDataApiEventmapEntity? get apiEventmap;
  @JsonKey(name: 'api_eventmap')
  set apiEventmap(ReqMapStartApiDataApiEventmapEntity? value);
  @override
  @JsonKey(name: 'api_select_route')
  ReqMapStartApiDataApiSelectRouteEntity? get apiSelectRoute;
  @JsonKey(name: 'api_select_route')
  set apiSelectRoute(ReqMapStartApiDataApiSelectRouteEntity? value);
  @override
  @JsonKey(name: 'api_limit_state')
  int get apiLimitState;
  @JsonKey(name: 'api_limit_state')
  set apiLimitState(int value);
  @override
  @JsonKey(name: 'api_from_no')
  int get apiFromNo;
  @JsonKey(name: 'api_from_no')
  set apiFromNo(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapStartApiDataEntityCopyWith<_$_ReqMapStartApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapStartApiDataApiCellDataEntity
    _$ReqMapStartApiDataApiCellDataEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapStartApiDataApiCellDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataApiCellDataEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_color_no')
  int get apiColorNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_color_no')
  set apiColorNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_passed')
  int get apiPassed => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_passed')
  set apiPassed(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapStartApiDataApiCellDataEntityCopyWith<
          ReqMapStartApiDataApiCellDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataApiCellDataEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataApiCellDataEntityCopyWith(
          ReqMapStartApiDataApiCellDataEntity value,
          $Res Function(ReqMapStartApiDataApiCellDataEntity) then) =
      _$ReqMapStartApiDataApiCellDataEntityCopyWithImpl<$Res,
          ReqMapStartApiDataApiCellDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_color_no') int apiColorNo,
      @JsonKey(name: 'api_passed') int apiPassed});
}

/// @nodoc
class _$ReqMapStartApiDataApiCellDataEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataApiCellDataEntity>
    implements $ReqMapStartApiDataApiCellDataEntityCopyWith<$Res> {
  _$ReqMapStartApiDataApiCellDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiNo = null,
    Object? apiColorNo = null,
    Object? apiPassed = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiColorNo: null == apiColorNo
          ? _value.apiColorNo
          : apiColorNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiPassed: null == apiPassed
          ? _value.apiPassed
          : apiPassed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMapStartApiDataApiCellDataEntityCopyWith<$Res>
    implements $ReqMapStartApiDataApiCellDataEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataApiCellDataEntityCopyWith(
          _$_ReqMapStartApiDataApiCellDataEntity value,
          $Res Function(_$_ReqMapStartApiDataApiCellDataEntity) then) =
      __$$_ReqMapStartApiDataApiCellDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_color_no') int apiColorNo,
      @JsonKey(name: 'api_passed') int apiPassed});
}

/// @nodoc
class __$$_ReqMapStartApiDataApiCellDataEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataApiCellDataEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataApiCellDataEntity>
    implements _$$_ReqMapStartApiDataApiCellDataEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataApiCellDataEntityCopyWithImpl(
      _$_ReqMapStartApiDataApiCellDataEntity _value,
      $Res Function(_$_ReqMapStartApiDataApiCellDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiNo = null,
    Object? apiColorNo = null,
    Object? apiPassed = null,
  }) {
    return _then(_$_ReqMapStartApiDataApiCellDataEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiColorNo: null == apiColorNo
          ? _value.apiColorNo
          : apiColorNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiPassed: null == apiPassed
          ? _value.apiPassed
          : apiPassed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapStartApiDataApiCellDataEntity
    implements _ReqMapStartApiDataApiCellDataEntity {
  _$_ReqMapStartApiDataApiCellDataEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_color_no') required this.apiColorNo,
      @JsonKey(name: 'api_passed') required this.apiPassed});

  factory _$_ReqMapStartApiDataApiCellDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataApiCellDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_color_no')
  int apiColorNo;
  @override
  @JsonKey(name: 'api_passed')
  int apiPassed;

  @override
  String toString() {
    return 'ReqMapStartApiDataApiCellDataEntity(apiId: $apiId, apiNo: $apiNo, apiColorNo: $apiColorNo, apiPassed: $apiPassed)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataApiCellDataEntityCopyWith<
          _$_ReqMapStartApiDataApiCellDataEntity>
      get copyWith => __$$_ReqMapStartApiDataApiCellDataEntityCopyWithImpl<
          _$_ReqMapStartApiDataApiCellDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataApiCellDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataApiCellDataEntity
    implements ReqMapStartApiDataApiCellDataEntity {
  factory _ReqMapStartApiDataApiCellDataEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_color_no') required int apiColorNo,
          @JsonKey(name: 'api_passed') required int apiPassed}) =
      _$_ReqMapStartApiDataApiCellDataEntity;

  factory _ReqMapStartApiDataApiCellDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapStartApiDataApiCellDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
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
  @JsonKey(name: 'api_passed')
  int get apiPassed;
  @JsonKey(name: 'api_passed')
  set apiPassed(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapStartApiDataApiCellDataEntityCopyWith<
          _$_ReqMapStartApiDataApiCellDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapStartApiDataApiAirsearchEntity
    _$ReqMapStartApiDataApiAirsearchEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapStartApiDataApiAirsearchEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataApiAirsearchEntity {
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
  $ReqMapStartApiDataApiAirsearchEntityCopyWith<
          ReqMapStartApiDataApiAirsearchEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataApiAirsearchEntityCopyWith(
          ReqMapStartApiDataApiAirsearchEntity value,
          $Res Function(ReqMapStartApiDataApiAirsearchEntity) then) =
      _$ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<$Res,
          ReqMapStartApiDataApiAirsearchEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_type') int apiPlaneType,
      @JsonKey(name: 'api_result') int apiResult});
}

/// @nodoc
class _$ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataApiAirsearchEntity>
    implements $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> {
  _$ReqMapStartApiDataApiAirsearchEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res>
    implements $ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataApiAirsearchEntityCopyWith(
          _$_ReqMapStartApiDataApiAirsearchEntity value,
          $Res Function(_$_ReqMapStartApiDataApiAirsearchEntity) then) =
      __$$_ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_type') int apiPlaneType,
      @JsonKey(name: 'api_result') int apiResult});
}

/// @nodoc
class __$$_ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataApiAirsearchEntity>
    implements _$$_ReqMapStartApiDataApiAirsearchEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataApiAirsearchEntityCopyWithImpl(
      _$_ReqMapStartApiDataApiAirsearchEntity _value,
      $Res Function(_$_ReqMapStartApiDataApiAirsearchEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiPlaneType = null,
    Object? apiResult = null,
  }) {
    return _then(_$_ReqMapStartApiDataApiAirsearchEntity(
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
class _$_ReqMapStartApiDataApiAirsearchEntity
    implements _ReqMapStartApiDataApiAirsearchEntity {
  _$_ReqMapStartApiDataApiAirsearchEntity(
      {@JsonKey(name: 'api_plane_type') required this.apiPlaneType,
      @JsonKey(name: 'api_result') required this.apiResult});

  factory _$_ReqMapStartApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataApiAirsearchEntityFromJson(json);

  @override
  @JsonKey(name: 'api_plane_type')
  int apiPlaneType;
  @override
  @JsonKey(name: 'api_result')
  int apiResult;

  @override
  String toString() {
    return 'ReqMapStartApiDataApiAirsearchEntity(apiPlaneType: $apiPlaneType, apiResult: $apiResult)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataApiAirsearchEntityCopyWith<
          _$_ReqMapStartApiDataApiAirsearchEntity>
      get copyWith => __$$_ReqMapStartApiDataApiAirsearchEntityCopyWithImpl<
          _$_ReqMapStartApiDataApiAirsearchEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataApiAirsearchEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataApiAirsearchEntity
    implements ReqMapStartApiDataApiAirsearchEntity {
  factory _ReqMapStartApiDataApiAirsearchEntity(
          {@JsonKey(name: 'api_plane_type') required int apiPlaneType,
          @JsonKey(name: 'api_result') required int apiResult}) =
      _$_ReqMapStartApiDataApiAirsearchEntity;

  factory _ReqMapStartApiDataApiAirsearchEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapStartApiDataApiAirsearchEntity.fromJson;

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
  _$$_ReqMapStartApiDataApiAirsearchEntityCopyWith<
          _$_ReqMapStartApiDataApiAirsearchEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapStartApiDataApiEDeckInfoEntity
    _$ReqMapStartApiDataApiEDeckInfoEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapStartApiDataApiEDeckInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataApiEDeckInfoEntity {
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
  $ReqMapStartApiDataApiEDeckInfoEntityCopyWith<
          ReqMapStartApiDataApiEDeckInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataApiEDeckInfoEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataApiEDeckInfoEntityCopyWith(
          ReqMapStartApiDataApiEDeckInfoEntity value,
          $Res Function(ReqMapStartApiDataApiEDeckInfoEntity) then) =
      _$ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
          ReqMapStartApiDataApiEDeckInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_kind') int apiKind,
      @JsonKey(name: 'api_ship_ids') List<int> apiShipIds});
}

/// @nodoc
class _$ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataApiEDeckInfoEntity>
    implements $ReqMapStartApiDataApiEDeckInfoEntityCopyWith<$Res> {
  _$ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWith<$Res>
    implements $ReqMapStartApiDataApiEDeckInfoEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWith(
          _$_ReqMapStartApiDataApiEDeckInfoEntity value,
          $Res Function(_$_ReqMapStartApiDataApiEDeckInfoEntity) then) =
      __$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_kind') int apiKind,
      @JsonKey(name: 'api_ship_ids') List<int> apiShipIds});
}

/// @nodoc
class __$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataApiEDeckInfoEntity>
    implements _$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl(
      _$_ReqMapStartApiDataApiEDeckInfoEntity _value,
      $Res Function(_$_ReqMapStartApiDataApiEDeckInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKind = null,
    Object? apiShipIds = null,
  }) {
    return _then(_$_ReqMapStartApiDataApiEDeckInfoEntity(
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
class _$_ReqMapStartApiDataApiEDeckInfoEntity
    implements _ReqMapStartApiDataApiEDeckInfoEntity {
  _$_ReqMapStartApiDataApiEDeckInfoEntity(
      {@JsonKey(name: 'api_kind') required this.apiKind,
      @JsonKey(name: 'api_ship_ids') required this.apiShipIds});

  factory _$_ReqMapStartApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataApiEDeckInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'api_kind')
  int apiKind;
  @override
  @JsonKey(name: 'api_ship_ids')
  List<int> apiShipIds;

  @override
  String toString() {
    return 'ReqMapStartApiDataApiEDeckInfoEntity(apiKind: $apiKind, apiShipIds: $apiShipIds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWith<
          _$_ReqMapStartApiDataApiEDeckInfoEntity>
      get copyWith => __$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWithImpl<
          _$_ReqMapStartApiDataApiEDeckInfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataApiEDeckInfoEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataApiEDeckInfoEntity
    implements ReqMapStartApiDataApiEDeckInfoEntity {
  factory _ReqMapStartApiDataApiEDeckInfoEntity(
          {@JsonKey(name: 'api_kind') required int apiKind,
          @JsonKey(name: 'api_ship_ids') required List<int> apiShipIds}) =
      _$_ReqMapStartApiDataApiEDeckInfoEntity;

  factory _ReqMapStartApiDataApiEDeckInfoEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapStartApiDataApiEDeckInfoEntity.fromJson;

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
  _$$_ReqMapStartApiDataApiEDeckInfoEntityCopyWith<
          _$_ReqMapStartApiDataApiEDeckInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapStartApiDataApiEventmapEntity
    _$ReqMapStartApiDataApiEventmapEntityFromJson(Map<String, dynamic> json) {
  return _ReqMapStartApiDataApiEventmapEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataApiEventmapEntity {
  @JsonKey(name: 'api_max_maphp')
  int get apiMaxMaphp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_maphp')
  set apiMaxMaphp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_now_maphp')
  int get apiNowMaphp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_now_maphp')
  set apiNowMaphp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dmg')
  int get apiDmg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dmg')
  set apiDmg(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapStartApiDataApiEventmapEntityCopyWith<
          ReqMapStartApiDataApiEventmapEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataApiEventmapEntityCopyWith(
          ReqMapStartApiDataApiEventmapEntity value,
          $Res Function(ReqMapStartApiDataApiEventmapEntity) then) =
      _$ReqMapStartApiDataApiEventmapEntityCopyWithImpl<$Res,
          ReqMapStartApiDataApiEventmapEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_max_maphp') int apiMaxMaphp,
      @JsonKey(name: 'api_now_maphp') int apiNowMaphp,
      @JsonKey(name: 'api_dmg') int apiDmg});
}

/// @nodoc
class _$ReqMapStartApiDataApiEventmapEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataApiEventmapEntity>
    implements $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res> {
  _$ReqMapStartApiDataApiEventmapEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMaxMaphp = null,
    Object? apiNowMaphp = null,
    Object? apiDmg = null,
  }) {
    return _then(_value.copyWith(
      apiMaxMaphp: null == apiMaxMaphp
          ? _value.apiMaxMaphp
          : apiMaxMaphp // ignore: cast_nullable_to_non_nullable
              as int,
      apiNowMaphp: null == apiNowMaphp
          ? _value.apiNowMaphp
          : apiNowMaphp // ignore: cast_nullable_to_non_nullable
              as int,
      apiDmg: null == apiDmg
          ? _value.apiDmg
          : apiDmg // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMapStartApiDataApiEventmapEntityCopyWith<$Res>
    implements $ReqMapStartApiDataApiEventmapEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataApiEventmapEntityCopyWith(
          _$_ReqMapStartApiDataApiEventmapEntity value,
          $Res Function(_$_ReqMapStartApiDataApiEventmapEntity) then) =
      __$$_ReqMapStartApiDataApiEventmapEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_max_maphp') int apiMaxMaphp,
      @JsonKey(name: 'api_now_maphp') int apiNowMaphp,
      @JsonKey(name: 'api_dmg') int apiDmg});
}

/// @nodoc
class __$$_ReqMapStartApiDataApiEventmapEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataApiEventmapEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataApiEventmapEntity>
    implements _$$_ReqMapStartApiDataApiEventmapEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataApiEventmapEntityCopyWithImpl(
      _$_ReqMapStartApiDataApiEventmapEntity _value,
      $Res Function(_$_ReqMapStartApiDataApiEventmapEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMaxMaphp = null,
    Object? apiNowMaphp = null,
    Object? apiDmg = null,
  }) {
    return _then(_$_ReqMapStartApiDataApiEventmapEntity(
      apiMaxMaphp: null == apiMaxMaphp
          ? _value.apiMaxMaphp
          : apiMaxMaphp // ignore: cast_nullable_to_non_nullable
              as int,
      apiNowMaphp: null == apiNowMaphp
          ? _value.apiNowMaphp
          : apiNowMaphp // ignore: cast_nullable_to_non_nullable
              as int,
      apiDmg: null == apiDmg
          ? _value.apiDmg
          : apiDmg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapStartApiDataApiEventmapEntity
    implements _ReqMapStartApiDataApiEventmapEntity {
  _$_ReqMapStartApiDataApiEventmapEntity(
      {@JsonKey(name: 'api_max_maphp') required this.apiMaxMaphp,
      @JsonKey(name: 'api_now_maphp') required this.apiNowMaphp,
      @JsonKey(name: 'api_dmg') required this.apiDmg});

  factory _$_ReqMapStartApiDataApiEventmapEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataApiEventmapEntityFromJson(json);

  @override
  @JsonKey(name: 'api_max_maphp')
  int apiMaxMaphp;
  @override
  @JsonKey(name: 'api_now_maphp')
  int apiNowMaphp;
  @override
  @JsonKey(name: 'api_dmg')
  int apiDmg;

  @override
  String toString() {
    return 'ReqMapStartApiDataApiEventmapEntity(apiMaxMaphp: $apiMaxMaphp, apiNowMaphp: $apiNowMaphp, apiDmg: $apiDmg)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataApiEventmapEntityCopyWith<
          _$_ReqMapStartApiDataApiEventmapEntity>
      get copyWith => __$$_ReqMapStartApiDataApiEventmapEntityCopyWithImpl<
          _$_ReqMapStartApiDataApiEventmapEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataApiEventmapEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataApiEventmapEntity
    implements ReqMapStartApiDataApiEventmapEntity {
  factory _ReqMapStartApiDataApiEventmapEntity(
          {@JsonKey(name: 'api_max_maphp') required int apiMaxMaphp,
          @JsonKey(name: 'api_now_maphp') required int apiNowMaphp,
          @JsonKey(name: 'api_dmg') required int apiDmg}) =
      _$_ReqMapStartApiDataApiEventmapEntity;

  factory _ReqMapStartApiDataApiEventmapEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapStartApiDataApiEventmapEntity.fromJson;

  @override
  @JsonKey(name: 'api_max_maphp')
  int get apiMaxMaphp;
  @JsonKey(name: 'api_max_maphp')
  set apiMaxMaphp(int value);
  @override
  @JsonKey(name: 'api_now_maphp')
  int get apiNowMaphp;
  @JsonKey(name: 'api_now_maphp')
  set apiNowMaphp(int value);
  @override
  @JsonKey(name: 'api_dmg')
  int get apiDmg;
  @JsonKey(name: 'api_dmg')
  set apiDmg(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapStartApiDataApiEventmapEntityCopyWith<
          _$_ReqMapStartApiDataApiEventmapEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqMapStartApiDataApiSelectRouteEntity
    _$ReqMapStartApiDataApiSelectRouteEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqMapStartApiDataApiSelectRouteEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqMapStartApiDataApiSelectRouteEntity {
  @JsonKey(name: 'api_select_cells')
  List<int> get apiSelectCells => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_select_cells')
  set apiSelectCells(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMapStartApiDataApiSelectRouteEntityCopyWith<
          ReqMapStartApiDataApiSelectRouteEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res> {
  factory $ReqMapStartApiDataApiSelectRouteEntityCopyWith(
          ReqMapStartApiDataApiSelectRouteEntity value,
          $Res Function(ReqMapStartApiDataApiSelectRouteEntity) then) =
      _$ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<$Res,
          ReqMapStartApiDataApiSelectRouteEntity>;
  @useResult
  $Res call({@JsonKey(name: 'api_select_cells') List<int> apiSelectCells});
}

/// @nodoc
class _$ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<$Res,
        $Val extends ReqMapStartApiDataApiSelectRouteEntity>
    implements $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res> {
  _$ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiSelectCells = null,
  }) {
    return _then(_value.copyWith(
      apiSelectCells: null == apiSelectCells
          ? _value.apiSelectCells
          : apiSelectCells // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res>
    implements $ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res> {
  factory _$$_ReqMapStartApiDataApiSelectRouteEntityCopyWith(
          _$_ReqMapStartApiDataApiSelectRouteEntity value,
          $Res Function(_$_ReqMapStartApiDataApiSelectRouteEntity) then) =
      __$$_ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'api_select_cells') List<int> apiSelectCells});
}

/// @nodoc
class __$$_ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<$Res>
    extends _$ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<$Res,
        _$_ReqMapStartApiDataApiSelectRouteEntity>
    implements _$$_ReqMapStartApiDataApiSelectRouteEntityCopyWith<$Res> {
  __$$_ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl(
      _$_ReqMapStartApiDataApiSelectRouteEntity _value,
      $Res Function(_$_ReqMapStartApiDataApiSelectRouteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiSelectCells = null,
  }) {
    return _then(_$_ReqMapStartApiDataApiSelectRouteEntity(
      apiSelectCells: null == apiSelectCells
          ? _value.apiSelectCells
          : apiSelectCells // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMapStartApiDataApiSelectRouteEntity
    implements _ReqMapStartApiDataApiSelectRouteEntity {
  _$_ReqMapStartApiDataApiSelectRouteEntity(
      {@JsonKey(name: 'api_select_cells') required this.apiSelectCells});

  factory _$_ReqMapStartApiDataApiSelectRouteEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqMapStartApiDataApiSelectRouteEntityFromJson(json);

  @override
  @JsonKey(name: 'api_select_cells')
  List<int> apiSelectCells;

  @override
  String toString() {
    return 'ReqMapStartApiDataApiSelectRouteEntity(apiSelectCells: $apiSelectCells)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMapStartApiDataApiSelectRouteEntityCopyWith<
          _$_ReqMapStartApiDataApiSelectRouteEntity>
      get copyWith => __$$_ReqMapStartApiDataApiSelectRouteEntityCopyWithImpl<
          _$_ReqMapStartApiDataApiSelectRouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMapStartApiDataApiSelectRouteEntityToJson(
      this,
    );
  }
}

abstract class _ReqMapStartApiDataApiSelectRouteEntity
    implements ReqMapStartApiDataApiSelectRouteEntity {
  factory _ReqMapStartApiDataApiSelectRouteEntity(
          {@JsonKey(name: 'api_select_cells')
          required List<int> apiSelectCells}) =
      _$_ReqMapStartApiDataApiSelectRouteEntity;

  factory _ReqMapStartApiDataApiSelectRouteEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqMapStartApiDataApiSelectRouteEntity.fromJson;

  @override
  @JsonKey(name: 'api_select_cells')
  List<int> get apiSelectCells;
  @JsonKey(name: 'api_select_cells')
  set apiSelectCells(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqMapStartApiDataApiSelectRouteEntityCopyWith<
          _$_ReqMapStartApiDataApiSelectRouteEntity>
      get copyWith => throw _privateConstructorUsedError;
}
