// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_sortie_battle_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqSortieBattleEntity _$ReqSortieBattleEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqSortieBattleEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqSortieBattleApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqSortieBattleApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleEntityCopyWith<ReqSortieBattleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleEntityCopyWith<$Res> {
  factory $ReqSortieBattleEntityCopyWith(ReqSortieBattleEntity value,
          $Res Function(ReqSortieBattleEntity) then) =
      _$ReqSortieBattleEntityCopyWithImpl<$Res, ReqSortieBattleEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqSortieBattleApiDataEntity apiData});

  $ReqSortieBattleApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqSortieBattleEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleEntity>
    implements $ReqSortieBattleEntityCopyWith<$Res> {
  _$ReqSortieBattleEntityCopyWithImpl(this._value, this._then);

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
              as ReqSortieBattleApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataEntityCopyWith<$Res> get apiData {
    return $ReqSortieBattleApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleEntityCopyWith<$Res>
    implements $ReqSortieBattleEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleEntityCopyWith(_$_ReqSortieBattleEntity value,
          $Res Function(_$_ReqSortieBattleEntity) then) =
      __$$_ReqSortieBattleEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqSortieBattleApiDataEntity apiData});

  @override
  $ReqSortieBattleApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqSortieBattleEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleEntityCopyWithImpl<$Res, _$_ReqSortieBattleEntity>
    implements _$$_ReqSortieBattleEntityCopyWith<$Res> {
  __$$_ReqSortieBattleEntityCopyWithImpl(_$_ReqSortieBattleEntity _value,
      $Res Function(_$_ReqSortieBattleEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqSortieBattleEntity(
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
              as ReqSortieBattleApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleEntity implements _ReqSortieBattleEntity {
  _$_ReqSortieBattleEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqSortieBattleEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqSortieBattleEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqSortieBattleApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqSortieBattleEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleEntityCopyWith<_$_ReqSortieBattleEntity> get copyWith =>
      __$$_ReqSortieBattleEntityCopyWithImpl<_$_ReqSortieBattleEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleEntity implements ReqSortieBattleEntity {
  factory _ReqSortieBattleEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required ReqSortieBattleApiDataEntity apiData}) =
      _$_ReqSortieBattleEntity;

  factory _ReqSortieBattleEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqSortieBattleEntity.fromJson;

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
  ReqSortieBattleApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqSortieBattleApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleEntityCopyWith<_$_ReqSortieBattleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqSortieBattleApiDataEntity _$ReqSortieBattleApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqSortieBattleApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleApiDataEntity {
  @JsonKey(name: 'api_deck_id')
  int get apiDeckId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_id')
  set apiDeckId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_formation')
  List<int> get apiFormation => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_formation')
  set apiFormation(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_f_nowhps')
  List<int> get apiFNowhps => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_f_nowhps')
  set apiFNowhps(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_f_maxhps')
  List<int> get apiFMaxhps => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_f_maxhps')
  set apiFMaxhps(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fParam')
  List<dynamic> get apiFParam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fParam')
  set apiFParam(List<dynamic> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_ke')
  List<int> get apiShipKe => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_ke')
  set apiShipKe(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_lv')
  List<int> get apiShipLv => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_lv')
  set apiShipLv(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_nowhps')
  List<int> get apiENowhps => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_nowhps')
  set apiENowhps(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_maxhps')
  List<int> get apiEMaxhps => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_e_maxhps')
  set apiEMaxhps(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eSlot')
  List<dynamic> get apiESlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eSlot')
  set apiESlot(List<dynamic> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eParam')
  List<dynamic> get apiEParam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eParam')
  set apiEParam(List<dynamic> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_smoke_type')
  int get apiSmokeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_smoke_type')
  set apiSmokeType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_midnight_flag')
  int get apiMidnightFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_midnight_flag')
  set apiMidnightFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_search')
  List<int> get apiSearch => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_search')
  set apiSearch(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage_flag')
  List<int> get apiStageFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage_flag')
  set apiStageFlag(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kouku')
  ReqSortieBattleApiDataApiKoukuEntity get apiKouku =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kouku')
  set apiKouku(ReqSortieBattleApiDataApiKoukuEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_support_flag')
  int get apiSupportFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_support_flag')
  set apiSupportFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_support_info')
  dynamic get apiSupportInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_support_info')
  set apiSupportInfo(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_taisen_flag')
  int get apiOpeningTaisenFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_taisen_flag')
  set apiOpeningTaisenFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_taisen')
  ReqSortieBattleApiDataApiHougekiEntity? get apiOpeningTaisen =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_taisen')
  set apiOpeningTaisen(ReqSortieBattleApiDataApiHougekiEntity? value) =>
      throw _privateConstructorUsedError; // antisub use same format with gunfire
  @JsonKey(name: 'api_opening_flag')
  int get apiOpeningFlag =>
      throw _privateConstructorUsedError; // antisub use same format with gunfire
  @JsonKey(name: 'api_opening_flag')
  set apiOpeningFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_atack')
  ReqSortieBattleApiDataApiRaigekiEntity? get apiOpeningAtack =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opening_atack')
  set apiOpeningAtack(ReqSortieBattleApiDataApiRaigekiEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hourai_flag')
  List<int> get apiHouraiFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hourai_flag')
  set apiHouraiFlag(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki1')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki1 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki1')
  set apiHougeki1(ReqSortieBattleApiDataApiHougekiEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki2')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki2 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki2')
  set apiHougeki2(ReqSortieBattleApiDataApiHougekiEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki3')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki3 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_hougeki3')
  set apiHougeki3(ReqSortieBattleApiDataApiHougekiEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raigeki')
  ReqSortieBattleApiDataApiRaigekiEntity? get apiRaigeki =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raigeki')
  set apiRaigeki(ReqSortieBattleApiDataApiRaigekiEntity? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleApiDataEntityCopyWith<ReqSortieBattleApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleApiDataEntityCopyWith<$Res> {
  factory $ReqSortieBattleApiDataEntityCopyWith(
          ReqSortieBattleApiDataEntity value,
          $Res Function(ReqSortieBattleApiDataEntity) then) =
      _$ReqSortieBattleApiDataEntityCopyWithImpl<$Res,
          ReqSortieBattleApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_deck_id') int apiDeckId,
      @JsonKey(name: 'api_formation') List<int> apiFormation,
      @JsonKey(name: 'api_f_nowhps') List<int> apiFNowhps,
      @JsonKey(name: 'api_f_maxhps') List<int> apiFMaxhps,
      @JsonKey(name: 'api_fParam') List<dynamic> apiFParam,
      @JsonKey(name: 'api_ship_ke') List<int> apiShipKe,
      @JsonKey(name: 'api_ship_lv') List<int> apiShipLv,
      @JsonKey(name: 'api_e_nowhps') List<int> apiENowhps,
      @JsonKey(name: 'api_e_maxhps') List<int> apiEMaxhps,
      @JsonKey(name: 'api_eSlot') List<dynamic> apiESlot,
      @JsonKey(name: 'api_eParam') List<dynamic> apiEParam,
      @JsonKey(name: 'api_smoke_type') int apiSmokeType,
      @JsonKey(name: 'api_midnight_flag') int apiMidnightFlag,
      @JsonKey(name: 'api_search') List<int> apiSearch,
      @JsonKey(name: 'api_stage_flag') List<int> apiStageFlag,
      @JsonKey(name: 'api_kouku') ReqSortieBattleApiDataApiKoukuEntity apiKouku,
      @JsonKey(name: 'api_support_flag') int apiSupportFlag,
      @JsonKey(name: 'api_support_info') dynamic apiSupportInfo,
      @JsonKey(name: 'api_opening_taisen_flag') int apiOpeningTaisenFlag,
      @JsonKey(name: 'api_opening_taisen')
      ReqSortieBattleApiDataApiHougekiEntity? apiOpeningTaisen,
      @JsonKey(name: 'api_opening_flag') int apiOpeningFlag,
      @JsonKey(name: 'api_opening_atack')
      ReqSortieBattleApiDataApiRaigekiEntity? apiOpeningAtack,
      @JsonKey(name: 'api_hourai_flag') List<int> apiHouraiFlag,
      @JsonKey(name: 'api_hougeki1')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki1,
      @JsonKey(name: 'api_hougeki2')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki2,
      @JsonKey(name: 'api_hougeki3')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki3,
      @JsonKey(name: 'api_raigeki')
      ReqSortieBattleApiDataApiRaigekiEntity? apiRaigeki});

  $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> get apiKouku;
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiOpeningTaisen;
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiOpeningAtack;
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki1;
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki2;
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki3;
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiRaigeki;
}

/// @nodoc
class _$ReqSortieBattleApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleApiDataEntity>
    implements $ReqSortieBattleApiDataEntityCopyWith<$Res> {
  _$ReqSortieBattleApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiDeckId = null,
    Object? apiFormation = null,
    Object? apiFNowhps = null,
    Object? apiFMaxhps = null,
    Object? apiFParam = null,
    Object? apiShipKe = null,
    Object? apiShipLv = null,
    Object? apiENowhps = null,
    Object? apiEMaxhps = null,
    Object? apiESlot = null,
    Object? apiEParam = null,
    Object? apiSmokeType = null,
    Object? apiMidnightFlag = null,
    Object? apiSearch = null,
    Object? apiStageFlag = null,
    Object? apiKouku = null,
    Object? apiSupportFlag = null,
    Object? apiSupportInfo = freezed,
    Object? apiOpeningTaisenFlag = null,
    Object? apiOpeningTaisen = freezed,
    Object? apiOpeningFlag = null,
    Object? apiOpeningAtack = freezed,
    Object? apiHouraiFlag = null,
    Object? apiHougeki1 = freezed,
    Object? apiHougeki2 = freezed,
    Object? apiHougeki3 = freezed,
    Object? apiRaigeki = freezed,
  }) {
    return _then(_value.copyWith(
      apiDeckId: null == apiDeckId
          ? _value.apiDeckId
          : apiDeckId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFormation: null == apiFormation
          ? _value.apiFormation
          : apiFormation // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFNowhps: null == apiFNowhps
          ? _value.apiFNowhps
          : apiFNowhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFMaxhps: null == apiFMaxhps
          ? _value.apiFMaxhps
          : apiFMaxhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFParam: null == apiFParam
          ? _value.apiFParam
          : apiFParam // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiShipKe: null == apiShipKe
          ? _value.apiShipKe
          : apiShipKe // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiShipLv: null == apiShipLv
          ? _value.apiShipLv
          : apiShipLv // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiENowhps: null == apiENowhps
          ? _value.apiENowhps
          : apiENowhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEMaxhps: null == apiEMaxhps
          ? _value.apiEMaxhps
          : apiEMaxhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiESlot: null == apiESlot
          ? _value.apiESlot
          : apiESlot // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiEParam: null == apiEParam
          ? _value.apiEParam
          : apiEParam // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiSmokeType: null == apiSmokeType
          ? _value.apiSmokeType
          : apiSmokeType // ignore: cast_nullable_to_non_nullable
              as int,
      apiMidnightFlag: null == apiMidnightFlag
          ? _value.apiMidnightFlag
          : apiMidnightFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSearch: null == apiSearch
          ? _value.apiSearch
          : apiSearch // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiStageFlag: null == apiStageFlag
          ? _value.apiStageFlag
          : apiStageFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiKouku: null == apiKouku
          ? _value.apiKouku
          : apiKouku // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiKoukuEntity,
      apiSupportFlag: null == apiSupportFlag
          ? _value.apiSupportFlag
          : apiSupportFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSupportInfo: freezed == apiSupportInfo
          ? _value.apiSupportInfo
          : apiSupportInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiOpeningTaisenFlag: null == apiOpeningTaisenFlag
          ? _value.apiOpeningTaisenFlag
          : apiOpeningTaisenFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpeningTaisen: freezed == apiOpeningTaisen
          ? _value.apiOpeningTaisen
          : apiOpeningTaisen // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiOpeningFlag: null == apiOpeningFlag
          ? _value.apiOpeningFlag
          : apiOpeningFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpeningAtack: freezed == apiOpeningAtack
          ? _value.apiOpeningAtack
          : apiOpeningAtack // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiRaigekiEntity?,
      apiHouraiFlag: null == apiHouraiFlag
          ? _value.apiHouraiFlag
          : apiHouraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiHougeki1: freezed == apiHougeki1
          ? _value.apiHougeki1
          : apiHougeki1 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiHougeki2: freezed == apiHougeki2
          ? _value.apiHougeki2
          : apiHougeki2 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiHougeki3: freezed == apiHougeki3
          ? _value.apiHougeki3
          : apiHougeki3 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiRaigeki: freezed == apiRaigeki
          ? _value.apiRaigeki
          : apiRaigeki // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiRaigekiEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> get apiKouku {
    return $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res>(_value.apiKouku,
        (value) {
      return _then(_value.copyWith(apiKouku: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiOpeningTaisen {
    if (_value.apiOpeningTaisen == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>(
        _value.apiOpeningTaisen!, (value) {
      return _then(_value.copyWith(apiOpeningTaisen: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiOpeningAtack {
    if (_value.apiOpeningAtack == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>(
        _value.apiOpeningAtack!, (value) {
      return _then(_value.copyWith(apiOpeningAtack: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki1 {
    if (_value.apiHougeki1 == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>(
        _value.apiHougeki1!, (value) {
      return _then(_value.copyWith(apiHougeki1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki2 {
    if (_value.apiHougeki2 == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>(
        _value.apiHougeki2!, (value) {
      return _then(_value.copyWith(apiHougeki2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki3 {
    if (_value.apiHougeki3 == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>(
        _value.apiHougeki3!, (value) {
      return _then(_value.copyWith(apiHougeki3: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiRaigeki {
    if (_value.apiRaigeki == null) {
      return null;
    }

    return $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>(
        _value.apiRaigeki!, (value) {
      return _then(_value.copyWith(apiRaigeki: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleApiDataEntityCopyWith<$Res>
    implements $ReqSortieBattleApiDataEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleApiDataEntityCopyWith(
          _$_ReqSortieBattleApiDataEntity value,
          $Res Function(_$_ReqSortieBattleApiDataEntity) then) =
      __$$_ReqSortieBattleApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_deck_id') int apiDeckId,
      @JsonKey(name: 'api_formation') List<int> apiFormation,
      @JsonKey(name: 'api_f_nowhps') List<int> apiFNowhps,
      @JsonKey(name: 'api_f_maxhps') List<int> apiFMaxhps,
      @JsonKey(name: 'api_fParam') List<dynamic> apiFParam,
      @JsonKey(name: 'api_ship_ke') List<int> apiShipKe,
      @JsonKey(name: 'api_ship_lv') List<int> apiShipLv,
      @JsonKey(name: 'api_e_nowhps') List<int> apiENowhps,
      @JsonKey(name: 'api_e_maxhps') List<int> apiEMaxhps,
      @JsonKey(name: 'api_eSlot') List<dynamic> apiESlot,
      @JsonKey(name: 'api_eParam') List<dynamic> apiEParam,
      @JsonKey(name: 'api_smoke_type') int apiSmokeType,
      @JsonKey(name: 'api_midnight_flag') int apiMidnightFlag,
      @JsonKey(name: 'api_search') List<int> apiSearch,
      @JsonKey(name: 'api_stage_flag') List<int> apiStageFlag,
      @JsonKey(name: 'api_kouku') ReqSortieBattleApiDataApiKoukuEntity apiKouku,
      @JsonKey(name: 'api_support_flag') int apiSupportFlag,
      @JsonKey(name: 'api_support_info') dynamic apiSupportInfo,
      @JsonKey(name: 'api_opening_taisen_flag') int apiOpeningTaisenFlag,
      @JsonKey(name: 'api_opening_taisen')
      ReqSortieBattleApiDataApiHougekiEntity? apiOpeningTaisen,
      @JsonKey(name: 'api_opening_flag') int apiOpeningFlag,
      @JsonKey(name: 'api_opening_atack')
      ReqSortieBattleApiDataApiRaigekiEntity? apiOpeningAtack,
      @JsonKey(name: 'api_hourai_flag') List<int> apiHouraiFlag,
      @JsonKey(name: 'api_hougeki1')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki1,
      @JsonKey(name: 'api_hougeki2')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki2,
      @JsonKey(name: 'api_hougeki3')
      ReqSortieBattleApiDataApiHougekiEntity? apiHougeki3,
      @JsonKey(name: 'api_raigeki')
      ReqSortieBattleApiDataApiRaigekiEntity? apiRaigeki});

  @override
  $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> get apiKouku;
  @override
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiOpeningTaisen;
  @override
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiOpeningAtack;
  @override
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki1;
  @override
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki2;
  @override
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>? get apiHougeki3;
  @override
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>? get apiRaigeki;
}

/// @nodoc
class __$$_ReqSortieBattleApiDataEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleApiDataEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleApiDataEntity>
    implements _$$_ReqSortieBattleApiDataEntityCopyWith<$Res> {
  __$$_ReqSortieBattleApiDataEntityCopyWithImpl(
      _$_ReqSortieBattleApiDataEntity _value,
      $Res Function(_$_ReqSortieBattleApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiDeckId = null,
    Object? apiFormation = null,
    Object? apiFNowhps = null,
    Object? apiFMaxhps = null,
    Object? apiFParam = null,
    Object? apiShipKe = null,
    Object? apiShipLv = null,
    Object? apiENowhps = null,
    Object? apiEMaxhps = null,
    Object? apiESlot = null,
    Object? apiEParam = null,
    Object? apiSmokeType = null,
    Object? apiMidnightFlag = null,
    Object? apiSearch = null,
    Object? apiStageFlag = null,
    Object? apiKouku = null,
    Object? apiSupportFlag = null,
    Object? apiSupportInfo = freezed,
    Object? apiOpeningTaisenFlag = null,
    Object? apiOpeningTaisen = freezed,
    Object? apiOpeningFlag = null,
    Object? apiOpeningAtack = freezed,
    Object? apiHouraiFlag = null,
    Object? apiHougeki1 = freezed,
    Object? apiHougeki2 = freezed,
    Object? apiHougeki3 = freezed,
    Object? apiRaigeki = freezed,
  }) {
    return _then(_$_ReqSortieBattleApiDataEntity(
      apiDeckId: null == apiDeckId
          ? _value.apiDeckId
          : apiDeckId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFormation: null == apiFormation
          ? _value.apiFormation
          : apiFormation // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFNowhps: null == apiFNowhps
          ? _value.apiFNowhps
          : apiFNowhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFMaxhps: null == apiFMaxhps
          ? _value.apiFMaxhps
          : apiFMaxhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFParam: null == apiFParam
          ? _value.apiFParam
          : apiFParam // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiShipKe: null == apiShipKe
          ? _value.apiShipKe
          : apiShipKe // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiShipLv: null == apiShipLv
          ? _value.apiShipLv
          : apiShipLv // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiENowhps: null == apiENowhps
          ? _value.apiENowhps
          : apiENowhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEMaxhps: null == apiEMaxhps
          ? _value.apiEMaxhps
          : apiEMaxhps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiESlot: null == apiESlot
          ? _value.apiESlot
          : apiESlot // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiEParam: null == apiEParam
          ? _value.apiEParam
          : apiEParam // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiSmokeType: null == apiSmokeType
          ? _value.apiSmokeType
          : apiSmokeType // ignore: cast_nullable_to_non_nullable
              as int,
      apiMidnightFlag: null == apiMidnightFlag
          ? _value.apiMidnightFlag
          : apiMidnightFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSearch: null == apiSearch
          ? _value.apiSearch
          : apiSearch // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiStageFlag: null == apiStageFlag
          ? _value.apiStageFlag
          : apiStageFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiKouku: null == apiKouku
          ? _value.apiKouku
          : apiKouku // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiKoukuEntity,
      apiSupportFlag: null == apiSupportFlag
          ? _value.apiSupportFlag
          : apiSupportFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSupportInfo: freezed == apiSupportInfo
          ? _value.apiSupportInfo
          : apiSupportInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiOpeningTaisenFlag: null == apiOpeningTaisenFlag
          ? _value.apiOpeningTaisenFlag
          : apiOpeningTaisenFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpeningTaisen: freezed == apiOpeningTaisen
          ? _value.apiOpeningTaisen
          : apiOpeningTaisen // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiOpeningFlag: null == apiOpeningFlag
          ? _value.apiOpeningFlag
          : apiOpeningFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpeningAtack: freezed == apiOpeningAtack
          ? _value.apiOpeningAtack
          : apiOpeningAtack // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiRaigekiEntity?,
      apiHouraiFlag: null == apiHouraiFlag
          ? _value.apiHouraiFlag
          : apiHouraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiHougeki1: freezed == apiHougeki1
          ? _value.apiHougeki1
          : apiHougeki1 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiHougeki2: freezed == apiHougeki2
          ? _value.apiHougeki2
          : apiHougeki2 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiHougeki3: freezed == apiHougeki3
          ? _value.apiHougeki3
          : apiHougeki3 // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiHougekiEntity?,
      apiRaigeki: freezed == apiRaigeki
          ? _value.apiRaigeki
          : apiRaigeki // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleApiDataApiRaigekiEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleApiDataEntity implements _ReqSortieBattleApiDataEntity {
  _$_ReqSortieBattleApiDataEntity(
      {@JsonKey(name: 'api_deck_id') required this.apiDeckId,
      @JsonKey(name: 'api_formation') required this.apiFormation,
      @JsonKey(name: 'api_f_nowhps') required this.apiFNowhps,
      @JsonKey(name: 'api_f_maxhps') required this.apiFMaxhps,
      @JsonKey(name: 'api_fParam') required this.apiFParam,
      @JsonKey(name: 'api_ship_ke') required this.apiShipKe,
      @JsonKey(name: 'api_ship_lv') required this.apiShipLv,
      @JsonKey(name: 'api_e_nowhps') required this.apiENowhps,
      @JsonKey(name: 'api_e_maxhps') required this.apiEMaxhps,
      @JsonKey(name: 'api_eSlot') required this.apiESlot,
      @JsonKey(name: 'api_eParam') required this.apiEParam,
      @JsonKey(name: 'api_smoke_type') required this.apiSmokeType,
      @JsonKey(name: 'api_midnight_flag') required this.apiMidnightFlag,
      @JsonKey(name: 'api_search') required this.apiSearch,
      @JsonKey(name: 'api_stage_flag') required this.apiStageFlag,
      @JsonKey(name: 'api_kouku') required this.apiKouku,
      @JsonKey(name: 'api_support_flag') required this.apiSupportFlag,
      @JsonKey(name: 'api_support_info') required this.apiSupportInfo,
      @JsonKey(name: 'api_opening_taisen_flag')
      required this.apiOpeningTaisenFlag,
      @JsonKey(name: 'api_opening_taisen') this.apiOpeningTaisen,
      @JsonKey(name: 'api_opening_flag') required this.apiOpeningFlag,
      @JsonKey(name: 'api_opening_atack') this.apiOpeningAtack,
      @JsonKey(name: 'api_hourai_flag') required this.apiHouraiFlag,
      @JsonKey(name: 'api_hougeki1') this.apiHougeki1,
      @JsonKey(name: 'api_hougeki2') this.apiHougeki2,
      @JsonKey(name: 'api_hougeki3') this.apiHougeki3,
      @JsonKey(name: 'api_raigeki') this.apiRaigeki});

  factory _$_ReqSortieBattleApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqSortieBattleApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_deck_id')
  int apiDeckId;
  @override
  @JsonKey(name: 'api_formation')
  List<int> apiFormation;
  @override
  @JsonKey(name: 'api_f_nowhps')
  List<int> apiFNowhps;
  @override
  @JsonKey(name: 'api_f_maxhps')
  List<int> apiFMaxhps;
  @override
  @JsonKey(name: 'api_fParam')
  List<dynamic> apiFParam;
  @override
  @JsonKey(name: 'api_ship_ke')
  List<int> apiShipKe;
  @override
  @JsonKey(name: 'api_ship_lv')
  List<int> apiShipLv;
  @override
  @JsonKey(name: 'api_e_nowhps')
  List<int> apiENowhps;
  @override
  @JsonKey(name: 'api_e_maxhps')
  List<int> apiEMaxhps;
  @override
  @JsonKey(name: 'api_eSlot')
  List<dynamic> apiESlot;
  @override
  @JsonKey(name: 'api_eParam')
  List<dynamic> apiEParam;
  @override
  @JsonKey(name: 'api_smoke_type')
  int apiSmokeType;
  @override
  @JsonKey(name: 'api_midnight_flag')
  int apiMidnightFlag;
  @override
  @JsonKey(name: 'api_search')
  List<int> apiSearch;
  @override
  @JsonKey(name: 'api_stage_flag')
  List<int> apiStageFlag;
  @override
  @JsonKey(name: 'api_kouku')
  ReqSortieBattleApiDataApiKoukuEntity apiKouku;
  @override
  @JsonKey(name: 'api_support_flag')
  int apiSupportFlag;
  @override
  @JsonKey(name: 'api_support_info')
  dynamic apiSupportInfo;
  @override
  @JsonKey(name: 'api_opening_taisen_flag')
  int apiOpeningTaisenFlag;
  @override
  @JsonKey(name: 'api_opening_taisen')
  ReqSortieBattleApiDataApiHougekiEntity? apiOpeningTaisen;
// antisub use same format with gunfire
  @override
  @JsonKey(name: 'api_opening_flag')
  int apiOpeningFlag;
  @override
  @JsonKey(name: 'api_opening_atack')
  ReqSortieBattleApiDataApiRaigekiEntity? apiOpeningAtack;
  @override
  @JsonKey(name: 'api_hourai_flag')
  List<int> apiHouraiFlag;
  @override
  @JsonKey(name: 'api_hougeki1')
  ReqSortieBattleApiDataApiHougekiEntity? apiHougeki1;
  @override
  @JsonKey(name: 'api_hougeki2')
  ReqSortieBattleApiDataApiHougekiEntity? apiHougeki2;
  @override
  @JsonKey(name: 'api_hougeki3')
  ReqSortieBattleApiDataApiHougekiEntity? apiHougeki3;
  @override
  @JsonKey(name: 'api_raigeki')
  ReqSortieBattleApiDataApiRaigekiEntity? apiRaigeki;

  @override
  String toString() {
    return 'ReqSortieBattleApiDataEntity(apiDeckId: $apiDeckId, apiFormation: $apiFormation, apiFNowhps: $apiFNowhps, apiFMaxhps: $apiFMaxhps, apiFParam: $apiFParam, apiShipKe: $apiShipKe, apiShipLv: $apiShipLv, apiENowhps: $apiENowhps, apiEMaxhps: $apiEMaxhps, apiESlot: $apiESlot, apiEParam: $apiEParam, apiSmokeType: $apiSmokeType, apiMidnightFlag: $apiMidnightFlag, apiSearch: $apiSearch, apiStageFlag: $apiStageFlag, apiKouku: $apiKouku, apiSupportFlag: $apiSupportFlag, apiSupportInfo: $apiSupportInfo, apiOpeningTaisenFlag: $apiOpeningTaisenFlag, apiOpeningTaisen: $apiOpeningTaisen, apiOpeningFlag: $apiOpeningFlag, apiOpeningAtack: $apiOpeningAtack, apiHouraiFlag: $apiHouraiFlag, apiHougeki1: $apiHougeki1, apiHougeki2: $apiHougeki2, apiHougeki3: $apiHougeki3, apiRaigeki: $apiRaigeki)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleApiDataEntityCopyWith<_$_ReqSortieBattleApiDataEntity>
      get copyWith => __$$_ReqSortieBattleApiDataEntityCopyWithImpl<
          _$_ReqSortieBattleApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleApiDataEntity
    implements ReqSortieBattleApiDataEntity {
  factory _ReqSortieBattleApiDataEntity(
          {@JsonKey(name: 'api_deck_id') required int apiDeckId,
          @JsonKey(name: 'api_formation') required List<int> apiFormation,
          @JsonKey(name: 'api_f_nowhps') required List<int> apiFNowhps,
          @JsonKey(name: 'api_f_maxhps') required List<int> apiFMaxhps,
          @JsonKey(name: 'api_fParam') required List<dynamic> apiFParam,
          @JsonKey(name: 'api_ship_ke') required List<int> apiShipKe,
          @JsonKey(name: 'api_ship_lv') required List<int> apiShipLv,
          @JsonKey(name: 'api_e_nowhps') required List<int> apiENowhps,
          @JsonKey(name: 'api_e_maxhps') required List<int> apiEMaxhps,
          @JsonKey(name: 'api_eSlot') required List<dynamic> apiESlot,
          @JsonKey(name: 'api_eParam') required List<dynamic> apiEParam,
          @JsonKey(name: 'api_smoke_type') required int apiSmokeType,
          @JsonKey(name: 'api_midnight_flag') required int apiMidnightFlag,
          @JsonKey(name: 'api_search') required List<int> apiSearch,
          @JsonKey(name: 'api_stage_flag') required List<int> apiStageFlag,
          @JsonKey(name: 'api_kouku')
          required ReqSortieBattleApiDataApiKoukuEntity apiKouku,
          @JsonKey(name: 'api_support_flag') required int apiSupportFlag,
          @JsonKey(name: 'api_support_info') required dynamic apiSupportInfo,
          @JsonKey(name: 'api_opening_taisen_flag')
          required int apiOpeningTaisenFlag,
          @JsonKey(name: 'api_opening_taisen')
          ReqSortieBattleApiDataApiHougekiEntity? apiOpeningTaisen,
          @JsonKey(name: 'api_opening_flag') required int apiOpeningFlag,
          @JsonKey(name: 'api_opening_atack')
          ReqSortieBattleApiDataApiRaigekiEntity? apiOpeningAtack,
          @JsonKey(name: 'api_hourai_flag') required List<int> apiHouraiFlag,
          @JsonKey(name: 'api_hougeki1')
          ReqSortieBattleApiDataApiHougekiEntity? apiHougeki1,
          @JsonKey(name: 'api_hougeki2')
          ReqSortieBattleApiDataApiHougekiEntity? apiHougeki2,
          @JsonKey(name: 'api_hougeki3')
          ReqSortieBattleApiDataApiHougekiEntity? apiHougeki3,
          @JsonKey(name: 'api_raigeki')
          ReqSortieBattleApiDataApiRaigekiEntity? apiRaigeki}) =
      _$_ReqSortieBattleApiDataEntity;

  factory _ReqSortieBattleApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqSortieBattleApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_deck_id')
  int get apiDeckId;
  @JsonKey(name: 'api_deck_id')
  set apiDeckId(int value);
  @override
  @JsonKey(name: 'api_formation')
  List<int> get apiFormation;
  @JsonKey(name: 'api_formation')
  set apiFormation(List<int> value);
  @override
  @JsonKey(name: 'api_f_nowhps')
  List<int> get apiFNowhps;
  @JsonKey(name: 'api_f_nowhps')
  set apiFNowhps(List<int> value);
  @override
  @JsonKey(name: 'api_f_maxhps')
  List<int> get apiFMaxhps;
  @JsonKey(name: 'api_f_maxhps')
  set apiFMaxhps(List<int> value);
  @override
  @JsonKey(name: 'api_fParam')
  List<dynamic> get apiFParam;
  @JsonKey(name: 'api_fParam')
  set apiFParam(List<dynamic> value);
  @override
  @JsonKey(name: 'api_ship_ke')
  List<int> get apiShipKe;
  @JsonKey(name: 'api_ship_ke')
  set apiShipKe(List<int> value);
  @override
  @JsonKey(name: 'api_ship_lv')
  List<int> get apiShipLv;
  @JsonKey(name: 'api_ship_lv')
  set apiShipLv(List<int> value);
  @override
  @JsonKey(name: 'api_e_nowhps')
  List<int> get apiENowhps;
  @JsonKey(name: 'api_e_nowhps')
  set apiENowhps(List<int> value);
  @override
  @JsonKey(name: 'api_e_maxhps')
  List<int> get apiEMaxhps;
  @JsonKey(name: 'api_e_maxhps')
  set apiEMaxhps(List<int> value);
  @override
  @JsonKey(name: 'api_eSlot')
  List<dynamic> get apiESlot;
  @JsonKey(name: 'api_eSlot')
  set apiESlot(List<dynamic> value);
  @override
  @JsonKey(name: 'api_eParam')
  List<dynamic> get apiEParam;
  @JsonKey(name: 'api_eParam')
  set apiEParam(List<dynamic> value);
  @override
  @JsonKey(name: 'api_smoke_type')
  int get apiSmokeType;
  @JsonKey(name: 'api_smoke_type')
  set apiSmokeType(int value);
  @override
  @JsonKey(name: 'api_midnight_flag')
  int get apiMidnightFlag;
  @JsonKey(name: 'api_midnight_flag')
  set apiMidnightFlag(int value);
  @override
  @JsonKey(name: 'api_search')
  List<int> get apiSearch;
  @JsonKey(name: 'api_search')
  set apiSearch(List<int> value);
  @override
  @JsonKey(name: 'api_stage_flag')
  List<int> get apiStageFlag;
  @JsonKey(name: 'api_stage_flag')
  set apiStageFlag(List<int> value);
  @override
  @JsonKey(name: 'api_kouku')
  ReqSortieBattleApiDataApiKoukuEntity get apiKouku;
  @JsonKey(name: 'api_kouku')
  set apiKouku(ReqSortieBattleApiDataApiKoukuEntity value);
  @override
  @JsonKey(name: 'api_support_flag')
  int get apiSupportFlag;
  @JsonKey(name: 'api_support_flag')
  set apiSupportFlag(int value);
  @override
  @JsonKey(name: 'api_support_info')
  dynamic get apiSupportInfo;
  @JsonKey(name: 'api_support_info')
  set apiSupportInfo(dynamic value);
  @override
  @JsonKey(name: 'api_opening_taisen_flag')
  int get apiOpeningTaisenFlag;
  @JsonKey(name: 'api_opening_taisen_flag')
  set apiOpeningTaisenFlag(int value);
  @override
  @JsonKey(name: 'api_opening_taisen')
  ReqSortieBattleApiDataApiHougekiEntity? get apiOpeningTaisen;
  @JsonKey(name: 'api_opening_taisen')
  set apiOpeningTaisen(ReqSortieBattleApiDataApiHougekiEntity? value);
  @override // antisub use same format with gunfire
  @JsonKey(name: 'api_opening_flag')
  int get apiOpeningFlag; // antisub use same format with gunfire
  @JsonKey(name: 'api_opening_flag')
  set apiOpeningFlag(int value);
  @override
  @JsonKey(name: 'api_opening_atack')
  ReqSortieBattleApiDataApiRaigekiEntity? get apiOpeningAtack;
  @JsonKey(name: 'api_opening_atack')
  set apiOpeningAtack(ReqSortieBattleApiDataApiRaigekiEntity? value);
  @override
  @JsonKey(name: 'api_hourai_flag')
  List<int> get apiHouraiFlag;
  @JsonKey(name: 'api_hourai_flag')
  set apiHouraiFlag(List<int> value);
  @override
  @JsonKey(name: 'api_hougeki1')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki1;
  @JsonKey(name: 'api_hougeki1')
  set apiHougeki1(ReqSortieBattleApiDataApiHougekiEntity? value);
  @override
  @JsonKey(name: 'api_hougeki2')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki2;
  @JsonKey(name: 'api_hougeki2')
  set apiHougeki2(ReqSortieBattleApiDataApiHougekiEntity? value);
  @override
  @JsonKey(name: 'api_hougeki3')
  ReqSortieBattleApiDataApiHougekiEntity? get apiHougeki3;
  @JsonKey(name: 'api_hougeki3')
  set apiHougeki3(ReqSortieBattleApiDataApiHougekiEntity? value);
  @override
  @JsonKey(name: 'api_raigeki')
  ReqSortieBattleApiDataApiRaigekiEntity? get apiRaigeki;
  @JsonKey(name: 'api_raigeki')
  set apiRaigeki(ReqSortieBattleApiDataApiRaigekiEntity? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleApiDataEntityCopyWith<_$_ReqSortieBattleApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleApiDataApiKoukuEntity
    _$ReqSortieBattleApiDataApiKoukuEntityFromJson(Map<String, dynamic> json) {
  return _ReqSortieBattleApiDataApiKoukuEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleApiDataApiKoukuEntity {
  @JsonKey(name: 'api_plane_from')
  List<List<int>?> get apiPlaneFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_plane_from')
  set apiPlaneFrom(List<List<int>?> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage1')
  BattleDataAircraftRoundStage1 get apiStage1 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage1')
  set apiStage1(BattleDataAircraftRoundStage1 value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage2')
  BattleDataAircraftRoundStage2? get apiStage2 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage2')
  set apiStage2(BattleDataAircraftRoundStage2? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage3')
  BattleDataAircraftRoundStage3? get apiStage3 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stage3')
  set apiStage3(BattleDataAircraftRoundStage3? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleApiDataApiKoukuEntityCopyWith<
          ReqSortieBattleApiDataApiKoukuEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> {
  factory $ReqSortieBattleApiDataApiKoukuEntityCopyWith(
          ReqSortieBattleApiDataApiKoukuEntity value,
          $Res Function(ReqSortieBattleApiDataApiKoukuEntity) then) =
      _$ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<$Res,
          ReqSortieBattleApiDataApiKoukuEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_from') List<List<int>?> apiPlaneFrom,
      @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1 apiStage1,
      @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
      @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3});

  $BattleDataAircraftRoundStage1CopyWith<$Res> get apiStage1;
  $BattleDataAircraftRoundStage2CopyWith<$Res>? get apiStage2;
  $BattleDataAircraftRoundStage3CopyWith<$Res>? get apiStage3;
}

/// @nodoc
class _$ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleApiDataApiKoukuEntity>
    implements $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> {
  _$ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiPlaneFrom = null,
    Object? apiStage1 = null,
    Object? apiStage2 = freezed,
    Object? apiStage3 = freezed,
  }) {
    return _then(_value.copyWith(
      apiPlaneFrom: null == apiPlaneFrom
          ? _value.apiPlaneFrom
          : apiPlaneFrom // ignore: cast_nullable_to_non_nullable
              as List<List<int>?>,
      apiStage1: null == apiStage1
          ? _value.apiStage1
          : apiStage1 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage1,
      apiStage2: freezed == apiStage2
          ? _value.apiStage2
          : apiStage2 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage2?,
      apiStage3: freezed == apiStage3
          ? _value.apiStage3
          : apiStage3 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage3?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BattleDataAircraftRoundStage1CopyWith<$Res> get apiStage1 {
    return $BattleDataAircraftRoundStage1CopyWith<$Res>(_value.apiStage1,
        (value) {
      return _then(_value.copyWith(apiStage1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BattleDataAircraftRoundStage2CopyWith<$Res>? get apiStage2 {
    if (_value.apiStage2 == null) {
      return null;
    }

    return $BattleDataAircraftRoundStage2CopyWith<$Res>(_value.apiStage2!,
        (value) {
      return _then(_value.copyWith(apiStage2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BattleDataAircraftRoundStage3CopyWith<$Res>? get apiStage3 {
    if (_value.apiStage3 == null) {
      return null;
    }

    return $BattleDataAircraftRoundStage3CopyWith<$Res>(_value.apiStage3!,
        (value) {
      return _then(_value.copyWith(apiStage3: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res>
    implements $ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleApiDataApiKoukuEntityCopyWith(
          _$_ReqSortieBattleApiDataApiKoukuEntity value,
          $Res Function(_$_ReqSortieBattleApiDataApiKoukuEntity) then) =
      __$$_ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_plane_from') List<List<int>?> apiPlaneFrom,
      @JsonKey(name: 'api_stage1') BattleDataAircraftRoundStage1 apiStage1,
      @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
      @JsonKey(name: 'api_stage3') BattleDataAircraftRoundStage3? apiStage3});

  @override
  $BattleDataAircraftRoundStage1CopyWith<$Res> get apiStage1;
  @override
  $BattleDataAircraftRoundStage2CopyWith<$Res>? get apiStage2;
  @override
  $BattleDataAircraftRoundStage3CopyWith<$Res>? get apiStage3;
}

/// @nodoc
class __$$_ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleApiDataApiKoukuEntity>
    implements _$$_ReqSortieBattleApiDataApiKoukuEntityCopyWith<$Res> {
  __$$_ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl(
      _$_ReqSortieBattleApiDataApiKoukuEntity _value,
      $Res Function(_$_ReqSortieBattleApiDataApiKoukuEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiPlaneFrom = null,
    Object? apiStage1 = null,
    Object? apiStage2 = freezed,
    Object? apiStage3 = freezed,
  }) {
    return _then(_$_ReqSortieBattleApiDataApiKoukuEntity(
      apiPlaneFrom: null == apiPlaneFrom
          ? _value.apiPlaneFrom
          : apiPlaneFrom // ignore: cast_nullable_to_non_nullable
              as List<List<int>?>,
      apiStage1: null == apiStage1
          ? _value.apiStage1
          : apiStage1 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage1,
      apiStage2: freezed == apiStage2
          ? _value.apiStage2
          : apiStage2 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage2?,
      apiStage3: freezed == apiStage3
          ? _value.apiStage3
          : apiStage3 // ignore: cast_nullable_to_non_nullable
              as BattleDataAircraftRoundStage3?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleApiDataApiKoukuEntity
    implements _ReqSortieBattleApiDataApiKoukuEntity {
  _$_ReqSortieBattleApiDataApiKoukuEntity(
      {@JsonKey(name: 'api_plane_from') required this.apiPlaneFrom,
      @JsonKey(name: 'api_stage1') required this.apiStage1,
      @JsonKey(name: 'api_stage2') this.apiStage2,
      @JsonKey(name: 'api_stage3') this.apiStage3});

  factory _$_ReqSortieBattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleApiDataApiKoukuEntityFromJson(json);

  @override
  @JsonKey(name: 'api_plane_from')
  List<List<int>?> apiPlaneFrom;
  @override
  @JsonKey(name: 'api_stage1')
  BattleDataAircraftRoundStage1 apiStage1;
  @override
  @JsonKey(name: 'api_stage2')
  BattleDataAircraftRoundStage2? apiStage2;
  @override
  @JsonKey(name: 'api_stage3')
  BattleDataAircraftRoundStage3? apiStage3;

  @override
  String toString() {
    return 'ReqSortieBattleApiDataApiKoukuEntity(apiPlaneFrom: $apiPlaneFrom, apiStage1: $apiStage1, apiStage2: $apiStage2, apiStage3: $apiStage3)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleApiDataApiKoukuEntityCopyWith<
          _$_ReqSortieBattleApiDataApiKoukuEntity>
      get copyWith => __$$_ReqSortieBattleApiDataApiKoukuEntityCopyWithImpl<
          _$_ReqSortieBattleApiDataApiKoukuEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleApiDataApiKoukuEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleApiDataApiKoukuEntity
    implements ReqSortieBattleApiDataApiKoukuEntity {
  factory _ReqSortieBattleApiDataApiKoukuEntity(
      {@JsonKey(name: 'api_plane_from') required List<List<int>?> apiPlaneFrom,
      @JsonKey(name: 'api_stage1')
      required BattleDataAircraftRoundStage1 apiStage1,
      @JsonKey(name: 'api_stage2') BattleDataAircraftRoundStage2? apiStage2,
      @JsonKey(name: 'api_stage3')
      BattleDataAircraftRoundStage3?
          apiStage3}) = _$_ReqSortieBattleApiDataApiKoukuEntity;

  factory _ReqSortieBattleApiDataApiKoukuEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleApiDataApiKoukuEntity.fromJson;

  @override
  @JsonKey(name: 'api_plane_from')
  List<List<int>?> get apiPlaneFrom;
  @JsonKey(name: 'api_plane_from')
  set apiPlaneFrom(List<List<int>?> value);
  @override
  @JsonKey(name: 'api_stage1')
  BattleDataAircraftRoundStage1 get apiStage1;
  @JsonKey(name: 'api_stage1')
  set apiStage1(BattleDataAircraftRoundStage1 value);
  @override
  @JsonKey(name: 'api_stage2')
  BattleDataAircraftRoundStage2? get apiStage2;
  @JsonKey(name: 'api_stage2')
  set apiStage2(BattleDataAircraftRoundStage2? value);
  @override
  @JsonKey(name: 'api_stage3')
  BattleDataAircraftRoundStage3? get apiStage3;
  @JsonKey(name: 'api_stage3')
  set apiStage3(BattleDataAircraftRoundStage3? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleApiDataApiKoukuEntityCopyWith<
          _$_ReqSortieBattleApiDataApiKoukuEntity>
      get copyWith => throw _privateConstructorUsedError;
}

BattleDataAircraftRoundStage1 _$BattleDataAircraftRoundStage1FromJson(
    Map<String, dynamic> json) {
  return _BattleDataAircraftRoundStage1.fromJson(json);
}

/// @nodoc
mixin _$BattleDataAircraftRoundStage1 {
  int get apiFCount => throw _privateConstructorUsedError;
  set apiFCount(int value) => throw _privateConstructorUsedError;
  int get apiFLostcount => throw _privateConstructorUsedError;
  set apiFLostcount(int value) => throw _privateConstructorUsedError;
  int get apiECount => throw _privateConstructorUsedError;
  set apiECount(int value) => throw _privateConstructorUsedError;
  int get apiELostcount => throw _privateConstructorUsedError;
  set apiELostcount(int value) => throw _privateConstructorUsedError;
  int get apiDispSeiku => throw _privateConstructorUsedError;
  set apiDispSeiku(int value) => throw _privateConstructorUsedError;
  List<int> get apiTouchPlane => throw _privateConstructorUsedError;
  set apiTouchPlane(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleDataAircraftRoundStage1CopyWith<BattleDataAircraftRoundStage1>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleDataAircraftRoundStage1CopyWith<$Res> {
  factory $BattleDataAircraftRoundStage1CopyWith(
          BattleDataAircraftRoundStage1 value,
          $Res Function(BattleDataAircraftRoundStage1) then) =
      _$BattleDataAircraftRoundStage1CopyWithImpl<$Res,
          BattleDataAircraftRoundStage1>;
  @useResult
  $Res call(
      {int apiFCount,
      int apiFLostcount,
      int apiECount,
      int apiELostcount,
      int apiDispSeiku,
      List<int> apiTouchPlane});
}

/// @nodoc
class _$BattleDataAircraftRoundStage1CopyWithImpl<$Res,
        $Val extends BattleDataAircraftRoundStage1>
    implements $BattleDataAircraftRoundStage1CopyWith<$Res> {
  _$BattleDataAircraftRoundStage1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFCount = null,
    Object? apiFLostcount = null,
    Object? apiECount = null,
    Object? apiELostcount = null,
    Object? apiDispSeiku = null,
    Object? apiTouchPlane = null,
  }) {
    return _then(_value.copyWith(
      apiFCount: null == apiFCount
          ? _value.apiFCount
          : apiFCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiFLostcount: null == apiFLostcount
          ? _value.apiFLostcount
          : apiFLostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiECount: null == apiECount
          ? _value.apiECount
          : apiECount // ignore: cast_nullable_to_non_nullable
              as int,
      apiELostcount: null == apiELostcount
          ? _value.apiELostcount
          : apiELostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiDispSeiku: null == apiDispSeiku
          ? _value.apiDispSeiku
          : apiDispSeiku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTouchPlane: null == apiTouchPlane
          ? _value.apiTouchPlane
          : apiTouchPlane // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattleDataAircraftRoundStage1CopyWith<$Res>
    implements $BattleDataAircraftRoundStage1CopyWith<$Res> {
  factory _$$_BattleDataAircraftRoundStage1CopyWith(
          _$_BattleDataAircraftRoundStage1 value,
          $Res Function(_$_BattleDataAircraftRoundStage1) then) =
      __$$_BattleDataAircraftRoundStage1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int apiFCount,
      int apiFLostcount,
      int apiECount,
      int apiELostcount,
      int apiDispSeiku,
      List<int> apiTouchPlane});
}

/// @nodoc
class __$$_BattleDataAircraftRoundStage1CopyWithImpl<$Res>
    extends _$BattleDataAircraftRoundStage1CopyWithImpl<$Res,
        _$_BattleDataAircraftRoundStage1>
    implements _$$_BattleDataAircraftRoundStage1CopyWith<$Res> {
  __$$_BattleDataAircraftRoundStage1CopyWithImpl(
      _$_BattleDataAircraftRoundStage1 _value,
      $Res Function(_$_BattleDataAircraftRoundStage1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFCount = null,
    Object? apiFLostcount = null,
    Object? apiECount = null,
    Object? apiELostcount = null,
    Object? apiDispSeiku = null,
    Object? apiTouchPlane = null,
  }) {
    return _then(_$_BattleDataAircraftRoundStage1(
      apiFCount: null == apiFCount
          ? _value.apiFCount
          : apiFCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiFLostcount: null == apiFLostcount
          ? _value.apiFLostcount
          : apiFLostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiECount: null == apiECount
          ? _value.apiECount
          : apiECount // ignore: cast_nullable_to_non_nullable
              as int,
      apiELostcount: null == apiELostcount
          ? _value.apiELostcount
          : apiELostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiDispSeiku: null == apiDispSeiku
          ? _value.apiDispSeiku
          : apiDispSeiku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTouchPlane: null == apiTouchPlane
          ? _value.apiTouchPlane
          : apiTouchPlane // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BattleDataAircraftRoundStage1
    implements _BattleDataAircraftRoundStage1 {
  _$_BattleDataAircraftRoundStage1(
      {required this.apiFCount,
      required this.apiFLostcount,
      required this.apiECount,
      required this.apiELostcount,
      required this.apiDispSeiku,
      required this.apiTouchPlane});

  factory _$_BattleDataAircraftRoundStage1.fromJson(
          Map<String, dynamic> json) =>
      _$$_BattleDataAircraftRoundStage1FromJson(json);

  @override
  int apiFCount;
  @override
  int apiFLostcount;
  @override
  int apiECount;
  @override
  int apiELostcount;
  @override
  int apiDispSeiku;
  @override
  List<int> apiTouchPlane;

  @override
  String toString() {
    return 'BattleDataAircraftRoundStage1(apiFCount: $apiFCount, apiFLostcount: $apiFLostcount, apiECount: $apiECount, apiELostcount: $apiELostcount, apiDispSeiku: $apiDispSeiku, apiTouchPlane: $apiTouchPlane)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleDataAircraftRoundStage1CopyWith<_$_BattleDataAircraftRoundStage1>
      get copyWith => __$$_BattleDataAircraftRoundStage1CopyWithImpl<
          _$_BattleDataAircraftRoundStage1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleDataAircraftRoundStage1ToJson(
      this,
    );
  }
}

abstract class _BattleDataAircraftRoundStage1
    implements BattleDataAircraftRoundStage1 {
  factory _BattleDataAircraftRoundStage1(
      {required int apiFCount,
      required int apiFLostcount,
      required int apiECount,
      required int apiELostcount,
      required int apiDispSeiku,
      required List<int> apiTouchPlane}) = _$_BattleDataAircraftRoundStage1;

  factory _BattleDataAircraftRoundStage1.fromJson(Map<String, dynamic> json) =
      _$_BattleDataAircraftRoundStage1.fromJson;

  @override
  int get apiFCount;
  set apiFCount(int value);
  @override
  int get apiFLostcount;
  set apiFLostcount(int value);
  @override
  int get apiECount;
  set apiECount(int value);
  @override
  int get apiELostcount;
  set apiELostcount(int value);
  @override
  int get apiDispSeiku;
  set apiDispSeiku(int value);
  @override
  List<int> get apiTouchPlane;
  set apiTouchPlane(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_BattleDataAircraftRoundStage1CopyWith<_$_BattleDataAircraftRoundStage1>
      get copyWith => throw _privateConstructorUsedError;
}

BattleDataAircraftRoundStage2 _$BattleDataAircraftRoundStage2FromJson(
    Map<String, dynamic> json) {
  return _BattleDataAircraftRoundStage2.fromJson(json);
}

/// @nodoc
mixin _$BattleDataAircraftRoundStage2 {
  int get apiFCount => throw _privateConstructorUsedError;
  set apiFCount(int value) => throw _privateConstructorUsedError;
  int get apiFLostcount => throw _privateConstructorUsedError;
  set apiFLostcount(int value) => throw _privateConstructorUsedError;
  int get apiECount => throw _privateConstructorUsedError;
  set apiECount(int value) => throw _privateConstructorUsedError;
  int get apiELostcount => throw _privateConstructorUsedError;
  set apiELostcount(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleDataAircraftRoundStage2CopyWith<BattleDataAircraftRoundStage2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleDataAircraftRoundStage2CopyWith<$Res> {
  factory $BattleDataAircraftRoundStage2CopyWith(
          BattleDataAircraftRoundStage2 value,
          $Res Function(BattleDataAircraftRoundStage2) then) =
      _$BattleDataAircraftRoundStage2CopyWithImpl<$Res,
          BattleDataAircraftRoundStage2>;
  @useResult
  $Res call(
      {int apiFCount, int apiFLostcount, int apiECount, int apiELostcount});
}

/// @nodoc
class _$BattleDataAircraftRoundStage2CopyWithImpl<$Res,
        $Val extends BattleDataAircraftRoundStage2>
    implements $BattleDataAircraftRoundStage2CopyWith<$Res> {
  _$BattleDataAircraftRoundStage2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFCount = null,
    Object? apiFLostcount = null,
    Object? apiECount = null,
    Object? apiELostcount = null,
  }) {
    return _then(_value.copyWith(
      apiFCount: null == apiFCount
          ? _value.apiFCount
          : apiFCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiFLostcount: null == apiFLostcount
          ? _value.apiFLostcount
          : apiFLostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiECount: null == apiECount
          ? _value.apiECount
          : apiECount // ignore: cast_nullable_to_non_nullable
              as int,
      apiELostcount: null == apiELostcount
          ? _value.apiELostcount
          : apiELostcount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattleDataAircraftRoundStage2CopyWith<$Res>
    implements $BattleDataAircraftRoundStage2CopyWith<$Res> {
  factory _$$_BattleDataAircraftRoundStage2CopyWith(
          _$_BattleDataAircraftRoundStage2 value,
          $Res Function(_$_BattleDataAircraftRoundStage2) then) =
      __$$_BattleDataAircraftRoundStage2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int apiFCount, int apiFLostcount, int apiECount, int apiELostcount});
}

/// @nodoc
class __$$_BattleDataAircraftRoundStage2CopyWithImpl<$Res>
    extends _$BattleDataAircraftRoundStage2CopyWithImpl<$Res,
        _$_BattleDataAircraftRoundStage2>
    implements _$$_BattleDataAircraftRoundStage2CopyWith<$Res> {
  __$$_BattleDataAircraftRoundStage2CopyWithImpl(
      _$_BattleDataAircraftRoundStage2 _value,
      $Res Function(_$_BattleDataAircraftRoundStage2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFCount = null,
    Object? apiFLostcount = null,
    Object? apiECount = null,
    Object? apiELostcount = null,
  }) {
    return _then(_$_BattleDataAircraftRoundStage2(
      apiFCount: null == apiFCount
          ? _value.apiFCount
          : apiFCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiFLostcount: null == apiFLostcount
          ? _value.apiFLostcount
          : apiFLostcount // ignore: cast_nullable_to_non_nullable
              as int,
      apiECount: null == apiECount
          ? _value.apiECount
          : apiECount // ignore: cast_nullable_to_non_nullable
              as int,
      apiELostcount: null == apiELostcount
          ? _value.apiELostcount
          : apiELostcount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BattleDataAircraftRoundStage2
    implements _BattleDataAircraftRoundStage2 {
  _$_BattleDataAircraftRoundStage2(
      {required this.apiFCount,
      required this.apiFLostcount,
      required this.apiECount,
      required this.apiELostcount});

  factory _$_BattleDataAircraftRoundStage2.fromJson(
          Map<String, dynamic> json) =>
      _$$_BattleDataAircraftRoundStage2FromJson(json);

  @override
  int apiFCount;
  @override
  int apiFLostcount;
  @override
  int apiECount;
  @override
  int apiELostcount;

  @override
  String toString() {
    return 'BattleDataAircraftRoundStage2(apiFCount: $apiFCount, apiFLostcount: $apiFLostcount, apiECount: $apiECount, apiELostcount: $apiELostcount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleDataAircraftRoundStage2CopyWith<_$_BattleDataAircraftRoundStage2>
      get copyWith => __$$_BattleDataAircraftRoundStage2CopyWithImpl<
          _$_BattleDataAircraftRoundStage2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleDataAircraftRoundStage2ToJson(
      this,
    );
  }
}

abstract class _BattleDataAircraftRoundStage2
    implements BattleDataAircraftRoundStage2 {
  factory _BattleDataAircraftRoundStage2(
      {required int apiFCount,
      required int apiFLostcount,
      required int apiECount,
      required int apiELostcount}) = _$_BattleDataAircraftRoundStage2;

  factory _BattleDataAircraftRoundStage2.fromJson(Map<String, dynamic> json) =
      _$_BattleDataAircraftRoundStage2.fromJson;

  @override
  int get apiFCount;
  set apiFCount(int value);
  @override
  int get apiFLostcount;
  set apiFLostcount(int value);
  @override
  int get apiECount;
  set apiECount(int value);
  @override
  int get apiELostcount;
  set apiELostcount(int value);
  @override
  @JsonKey(ignore: true)
  _$$_BattleDataAircraftRoundStage2CopyWith<_$_BattleDataAircraftRoundStage2>
      get copyWith => throw _privateConstructorUsedError;
}

BattleDataAircraftRoundStage3 _$BattleDataAircraftRoundStage3FromJson(
    Map<String, dynamic> json) {
  return _BattleDataAircraftRoundStage3.fromJson(json);
}

/// @nodoc
mixin _$BattleDataAircraftRoundStage3 {
  List<int> get apiFraiFlag => throw _privateConstructorUsedError;
  set apiFraiFlag(List<int> value) => throw _privateConstructorUsedError;
  List<int> get apiEraiFlag => throw _privateConstructorUsedError;
  set apiEraiFlag(List<int> value) => throw _privateConstructorUsedError;
  List<int> get apiFbakFlag => throw _privateConstructorUsedError;
  set apiFbakFlag(List<int> value) => throw _privateConstructorUsedError;
  List<int> get apiEbakFlag => throw _privateConstructorUsedError;
  set apiEbakFlag(List<int> value) => throw _privateConstructorUsedError;
  List<int> get apiFclFlag => throw _privateConstructorUsedError;
  set apiFclFlag(List<int> value) => throw _privateConstructorUsedError;
  List<int> get apiEclFlag => throw _privateConstructorUsedError;
  set apiEclFlag(List<int> value) => throw _privateConstructorUsedError;
  List<num> get apiFdam => throw _privateConstructorUsedError;
  set apiFdam(List<num> value) => throw _privateConstructorUsedError;
  List<num> get apiEdam => throw _privateConstructorUsedError;
  set apiEdam(List<num> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleDataAircraftRoundStage3CopyWith<BattleDataAircraftRoundStage3>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleDataAircraftRoundStage3CopyWith<$Res> {
  factory $BattleDataAircraftRoundStage3CopyWith(
          BattleDataAircraftRoundStage3 value,
          $Res Function(BattleDataAircraftRoundStage3) then) =
      _$BattleDataAircraftRoundStage3CopyWithImpl<$Res,
          BattleDataAircraftRoundStage3>;
  @useResult
  $Res call(
      {List<int> apiFraiFlag,
      List<int> apiEraiFlag,
      List<int> apiFbakFlag,
      List<int> apiEbakFlag,
      List<int> apiFclFlag,
      List<int> apiEclFlag,
      List<num> apiFdam,
      List<num> apiEdam});
}

/// @nodoc
class _$BattleDataAircraftRoundStage3CopyWithImpl<$Res,
        $Val extends BattleDataAircraftRoundStage3>
    implements $BattleDataAircraftRoundStage3CopyWith<$Res> {
  _$BattleDataAircraftRoundStage3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFraiFlag = null,
    Object? apiEraiFlag = null,
    Object? apiFbakFlag = null,
    Object? apiEbakFlag = null,
    Object? apiFclFlag = null,
    Object? apiEclFlag = null,
    Object? apiFdam = null,
    Object? apiEdam = null,
  }) {
    return _then(_value.copyWith(
      apiFraiFlag: null == apiFraiFlag
          ? _value.apiFraiFlag
          : apiFraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEraiFlag: null == apiEraiFlag
          ? _value.apiEraiFlag
          : apiEraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFbakFlag: null == apiFbakFlag
          ? _value.apiFbakFlag
          : apiFbakFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEbakFlag: null == apiEbakFlag
          ? _value.apiEbakFlag
          : apiEbakFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFclFlag: null == apiFclFlag
          ? _value.apiFclFlag
          : apiFclFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEclFlag: null == apiEclFlag
          ? _value.apiEclFlag
          : apiEclFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFdam: null == apiFdam
          ? _value.apiFdam
          : apiFdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEdam: null == apiEdam
          ? _value.apiEdam
          : apiEdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattleDataAircraftRoundStage3CopyWith<$Res>
    implements $BattleDataAircraftRoundStage3CopyWith<$Res> {
  factory _$$_BattleDataAircraftRoundStage3CopyWith(
          _$_BattleDataAircraftRoundStage3 value,
          $Res Function(_$_BattleDataAircraftRoundStage3) then) =
      __$$_BattleDataAircraftRoundStage3CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> apiFraiFlag,
      List<int> apiEraiFlag,
      List<int> apiFbakFlag,
      List<int> apiEbakFlag,
      List<int> apiFclFlag,
      List<int> apiEclFlag,
      List<num> apiFdam,
      List<num> apiEdam});
}

/// @nodoc
class __$$_BattleDataAircraftRoundStage3CopyWithImpl<$Res>
    extends _$BattleDataAircraftRoundStage3CopyWithImpl<$Res,
        _$_BattleDataAircraftRoundStage3>
    implements _$$_BattleDataAircraftRoundStage3CopyWith<$Res> {
  __$$_BattleDataAircraftRoundStage3CopyWithImpl(
      _$_BattleDataAircraftRoundStage3 _value,
      $Res Function(_$_BattleDataAircraftRoundStage3) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFraiFlag = null,
    Object? apiEraiFlag = null,
    Object? apiFbakFlag = null,
    Object? apiEbakFlag = null,
    Object? apiFclFlag = null,
    Object? apiEclFlag = null,
    Object? apiFdam = null,
    Object? apiEdam = null,
  }) {
    return _then(_$_BattleDataAircraftRoundStage3(
      apiFraiFlag: null == apiFraiFlag
          ? _value.apiFraiFlag
          : apiFraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEraiFlag: null == apiEraiFlag
          ? _value.apiEraiFlag
          : apiEraiFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFbakFlag: null == apiFbakFlag
          ? _value.apiFbakFlag
          : apiFbakFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEbakFlag: null == apiEbakFlag
          ? _value.apiEbakFlag
          : apiEbakFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFclFlag: null == apiFclFlag
          ? _value.apiFclFlag
          : apiFclFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEclFlag: null == apiEclFlag
          ? _value.apiEclFlag
          : apiEclFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFdam: null == apiFdam
          ? _value.apiFdam
          : apiFdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEdam: null == apiEdam
          ? _value.apiEdam
          : apiEdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BattleDataAircraftRoundStage3
    implements _BattleDataAircraftRoundStage3 {
  _$_BattleDataAircraftRoundStage3(
      {required this.apiFraiFlag,
      required this.apiEraiFlag,
      required this.apiFbakFlag,
      required this.apiEbakFlag,
      required this.apiFclFlag,
      required this.apiEclFlag,
      required this.apiFdam,
      required this.apiEdam});

  factory _$_BattleDataAircraftRoundStage3.fromJson(
          Map<String, dynamic> json) =>
      _$$_BattleDataAircraftRoundStage3FromJson(json);

  @override
  List<int> apiFraiFlag;
  @override
  List<int> apiEraiFlag;
  @override
  List<int> apiFbakFlag;
  @override
  List<int> apiEbakFlag;
  @override
  List<int> apiFclFlag;
  @override
  List<int> apiEclFlag;
  @override
  List<num> apiFdam;
  @override
  List<num> apiEdam;

  @override
  String toString() {
    return 'BattleDataAircraftRoundStage3(apiFraiFlag: $apiFraiFlag, apiEraiFlag: $apiEraiFlag, apiFbakFlag: $apiFbakFlag, apiEbakFlag: $apiEbakFlag, apiFclFlag: $apiFclFlag, apiEclFlag: $apiEclFlag, apiFdam: $apiFdam, apiEdam: $apiEdam)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleDataAircraftRoundStage3CopyWith<_$_BattleDataAircraftRoundStage3>
      get copyWith => __$$_BattleDataAircraftRoundStage3CopyWithImpl<
          _$_BattleDataAircraftRoundStage3>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleDataAircraftRoundStage3ToJson(
      this,
    );
  }
}

abstract class _BattleDataAircraftRoundStage3
    implements BattleDataAircraftRoundStage3 {
  factory _BattleDataAircraftRoundStage3(
      {required List<int> apiFraiFlag,
      required List<int> apiEraiFlag,
      required List<int> apiFbakFlag,
      required List<int> apiEbakFlag,
      required List<int> apiFclFlag,
      required List<int> apiEclFlag,
      required List<num> apiFdam,
      required List<num> apiEdam}) = _$_BattleDataAircraftRoundStage3;

  factory _BattleDataAircraftRoundStage3.fromJson(Map<String, dynamic> json) =
      _$_BattleDataAircraftRoundStage3.fromJson;

  @override
  List<int> get apiFraiFlag;
  set apiFraiFlag(List<int> value);
  @override
  List<int> get apiEraiFlag;
  set apiEraiFlag(List<int> value);
  @override
  List<int> get apiFbakFlag;
  set apiFbakFlag(List<int> value);
  @override
  List<int> get apiEbakFlag;
  set apiEbakFlag(List<int> value);
  @override
  List<int> get apiFclFlag;
  set apiFclFlag(List<int> value);
  @override
  List<int> get apiEclFlag;
  set apiEclFlag(List<int> value);
  @override
  List<num> get apiFdam;
  set apiFdam(List<num> value);
  @override
  List<num> get apiEdam;
  set apiEdam(List<num> value);
  @override
  @JsonKey(ignore: true)
  _$$_BattleDataAircraftRoundStage3CopyWith<_$_BattleDataAircraftRoundStage3>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleApiDataApiHougekiEntity
    _$ReqSortieBattleApiDataApiHougekiEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqSortieBattleApiDataApiHougekiEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleApiDataApiHougekiEntity {
  @JsonKey(name: 'api_at_eflag')
  List<int>? get apiAtEflag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_at_eflag')
  set apiAtEflag(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_at_list')
  List<int>? get apiAtList => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_at_list')
  set apiAtList(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_at_type')
  List<int>? get apiAtType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_at_type')
  set apiAtType(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_df_list')
  List<List<int>>? get apiDfList => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_df_list')
  set apiDfList(List<List<int>>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_si_list')
  List<dynamic>? get apiSiList => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_si_list')
  set apiSiList(List<dynamic>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cl_list')
  List<List<int>>? get apiClList => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cl_list')
  set apiClList(List<List<int>>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_damage')
  List<List<num>>? get apiDamage => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_damage')
  set apiDamage(List<List<num>>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleApiDataApiHougekiEntityCopyWith<
          ReqSortieBattleApiDataApiHougekiEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res> {
  factory $ReqSortieBattleApiDataApiHougekiEntityCopyWith(
          ReqSortieBattleApiDataApiHougekiEntity value,
          $Res Function(ReqSortieBattleApiDataApiHougekiEntity) then) =
      _$ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<$Res,
          ReqSortieBattleApiDataApiHougekiEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
      @JsonKey(name: 'api_at_list') List<int>? apiAtList,
      @JsonKey(name: 'api_at_type') List<int>? apiAtType,
      @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
      @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
      @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
      @JsonKey(name: 'api_damage') List<List<num>>? apiDamage});
}

/// @nodoc
class _$ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleApiDataApiHougekiEntity>
    implements $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res> {
  _$ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiAtEflag = freezed,
    Object? apiAtList = freezed,
    Object? apiAtType = freezed,
    Object? apiDfList = freezed,
    Object? apiSiList = freezed,
    Object? apiClList = freezed,
    Object? apiDamage = freezed,
  }) {
    return _then(_value.copyWith(
      apiAtEflag: freezed == apiAtEflag
          ? _value.apiAtEflag
          : apiAtEflag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiAtList: freezed == apiAtList
          ? _value.apiAtList
          : apiAtList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiAtType: freezed == apiAtType
          ? _value.apiAtType
          : apiAtType // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiDfList: freezed == apiDfList
          ? _value.apiDfList
          : apiDfList // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      apiSiList: freezed == apiSiList
          ? _value.apiSiList
          : apiSiList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      apiClList: freezed == apiClList
          ? _value.apiClList
          : apiClList // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      apiDamage: freezed == apiDamage
          ? _value.apiDamage
          : apiDamage // ignore: cast_nullable_to_non_nullable
              as List<List<num>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res>
    implements $ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleApiDataApiHougekiEntityCopyWith(
          _$_ReqSortieBattleApiDataApiHougekiEntity value,
          $Res Function(_$_ReqSortieBattleApiDataApiHougekiEntity) then) =
      __$$_ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
      @JsonKey(name: 'api_at_list') List<int>? apiAtList,
      @JsonKey(name: 'api_at_type') List<int>? apiAtType,
      @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
      @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
      @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
      @JsonKey(name: 'api_damage') List<List<num>>? apiDamage});
}

/// @nodoc
class __$$_ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleApiDataApiHougekiEntity>
    implements _$$_ReqSortieBattleApiDataApiHougekiEntityCopyWith<$Res> {
  __$$_ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl(
      _$_ReqSortieBattleApiDataApiHougekiEntity _value,
      $Res Function(_$_ReqSortieBattleApiDataApiHougekiEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiAtEflag = freezed,
    Object? apiAtList = freezed,
    Object? apiAtType = freezed,
    Object? apiDfList = freezed,
    Object? apiSiList = freezed,
    Object? apiClList = freezed,
    Object? apiDamage = freezed,
  }) {
    return _then(_$_ReqSortieBattleApiDataApiHougekiEntity(
      apiAtEflag: freezed == apiAtEflag
          ? _value.apiAtEflag
          : apiAtEflag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiAtList: freezed == apiAtList
          ? _value.apiAtList
          : apiAtList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiAtType: freezed == apiAtType
          ? _value.apiAtType
          : apiAtType // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiDfList: freezed == apiDfList
          ? _value.apiDfList
          : apiDfList // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      apiSiList: freezed == apiSiList
          ? _value.apiSiList
          : apiSiList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      apiClList: freezed == apiClList
          ? _value.apiClList
          : apiClList // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      apiDamage: freezed == apiDamage
          ? _value.apiDamage
          : apiDamage // ignore: cast_nullable_to_non_nullable
              as List<List<num>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleApiDataApiHougekiEntity
    implements _ReqSortieBattleApiDataApiHougekiEntity {
  _$_ReqSortieBattleApiDataApiHougekiEntity(
      {@JsonKey(name: 'api_at_eflag') this.apiAtEflag,
      @JsonKey(name: 'api_at_list') this.apiAtList,
      @JsonKey(name: 'api_at_type') this.apiAtType,
      @JsonKey(name: 'api_df_list') this.apiDfList,
      @JsonKey(name: 'api_si_list') this.apiSiList,
      @JsonKey(name: 'api_cl_list') this.apiClList,
      @JsonKey(name: 'api_damage') this.apiDamage});

  factory _$_ReqSortieBattleApiDataApiHougekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleApiDataApiHougekiEntityFromJson(json);

  @override
  @JsonKey(name: 'api_at_eflag')
  List<int>? apiAtEflag;
  @override
  @JsonKey(name: 'api_at_list')
  List<int>? apiAtList;
  @override
  @JsonKey(name: 'api_at_type')
  List<int>? apiAtType;
  @override
  @JsonKey(name: 'api_df_list')
  List<List<int>>? apiDfList;
  @override
  @JsonKey(name: 'api_si_list')
  List<dynamic>? apiSiList;
  @override
  @JsonKey(name: 'api_cl_list')
  List<List<int>>? apiClList;
  @override
  @JsonKey(name: 'api_damage')
  List<List<num>>? apiDamage;

  @override
  String toString() {
    return 'ReqSortieBattleApiDataApiHougekiEntity(apiAtEflag: $apiAtEflag, apiAtList: $apiAtList, apiAtType: $apiAtType, apiDfList: $apiDfList, apiSiList: $apiSiList, apiClList: $apiClList, apiDamage: $apiDamage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleApiDataApiHougekiEntityCopyWith<
          _$_ReqSortieBattleApiDataApiHougekiEntity>
      get copyWith => __$$_ReqSortieBattleApiDataApiHougekiEntityCopyWithImpl<
          _$_ReqSortieBattleApiDataApiHougekiEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleApiDataApiHougekiEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleApiDataApiHougekiEntity
    implements ReqSortieBattleApiDataApiHougekiEntity {
  factory _ReqSortieBattleApiDataApiHougekiEntity(
          {@JsonKey(name: 'api_at_eflag') List<int>? apiAtEflag,
          @JsonKey(name: 'api_at_list') List<int>? apiAtList,
          @JsonKey(name: 'api_at_type') List<int>? apiAtType,
          @JsonKey(name: 'api_df_list') List<List<int>>? apiDfList,
          @JsonKey(name: 'api_si_list') List<dynamic>? apiSiList,
          @JsonKey(name: 'api_cl_list') List<List<int>>? apiClList,
          @JsonKey(name: 'api_damage') List<List<num>>? apiDamage}) =
      _$_ReqSortieBattleApiDataApiHougekiEntity;

  factory _ReqSortieBattleApiDataApiHougekiEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleApiDataApiHougekiEntity.fromJson;

  @override
  @JsonKey(name: 'api_at_eflag')
  List<int>? get apiAtEflag;
  @JsonKey(name: 'api_at_eflag')
  set apiAtEflag(List<int>? value);
  @override
  @JsonKey(name: 'api_at_list')
  List<int>? get apiAtList;
  @JsonKey(name: 'api_at_list')
  set apiAtList(List<int>? value);
  @override
  @JsonKey(name: 'api_at_type')
  List<int>? get apiAtType;
  @JsonKey(name: 'api_at_type')
  set apiAtType(List<int>? value);
  @override
  @JsonKey(name: 'api_df_list')
  List<List<int>>? get apiDfList;
  @JsonKey(name: 'api_df_list')
  set apiDfList(List<List<int>>? value);
  @override
  @JsonKey(name: 'api_si_list')
  List<dynamic>? get apiSiList;
  @JsonKey(name: 'api_si_list')
  set apiSiList(List<dynamic>? value);
  @override
  @JsonKey(name: 'api_cl_list')
  List<List<int>>? get apiClList;
  @JsonKey(name: 'api_cl_list')
  set apiClList(List<List<int>>? value);
  @override
  @JsonKey(name: 'api_damage')
  List<List<num>>? get apiDamage;
  @JsonKey(name: 'api_damage')
  set apiDamage(List<List<num>>? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleApiDataApiHougekiEntityCopyWith<
          _$_ReqSortieBattleApiDataApiHougekiEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleApiDataApiRaigekiEntity
    _$ReqSortieBattleApiDataApiRaigekiEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqSortieBattleApiDataApiRaigekiEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleApiDataApiRaigekiEntity {
  @JsonKey(name: 'api_frai')
  List<int> get apiFrai => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_frai')
  set apiFrai(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fcl')
  List<num> get apiFcl => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fcl')
  set apiFcl(List<num> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fdam')
  List<num> get apiFdam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fdam')
  set apiFdam(List<num> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fydam')
  List<num> get apiFydam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fydam')
  set apiFydam(List<num> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_erai')
  List<int> get apiErai => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_erai')
  set apiErai(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ecl')
  List<num> get apiEcl => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ecl')
  set apiEcl(List<num> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_edam')
  List<num> get apiEdam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_edam')
  set apiEdam(List<num> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eydam')
  List<num> get apiEydam => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_eydam')
  set apiEydam(List<num> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<
          ReqSortieBattleApiDataApiRaigekiEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res> {
  factory $ReqSortieBattleApiDataApiRaigekiEntityCopyWith(
          ReqSortieBattleApiDataApiRaigekiEntity value,
          $Res Function(ReqSortieBattleApiDataApiRaigekiEntity) then) =
      _$ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<$Res,
          ReqSortieBattleApiDataApiRaigekiEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_frai') List<int> apiFrai,
      @JsonKey(name: 'api_fcl') List<num> apiFcl,
      @JsonKey(name: 'api_fdam') List<num> apiFdam,
      @JsonKey(name: 'api_fydam') List<num> apiFydam,
      @JsonKey(name: 'api_erai') List<int> apiErai,
      @JsonKey(name: 'api_ecl') List<num> apiEcl,
      @JsonKey(name: 'api_edam') List<num> apiEdam,
      @JsonKey(name: 'api_eydam') List<num> apiEydam});
}

/// @nodoc
class _$ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleApiDataApiRaigekiEntity>
    implements $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res> {
  _$ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFrai = null,
    Object? apiFcl = null,
    Object? apiFdam = null,
    Object? apiFydam = null,
    Object? apiErai = null,
    Object? apiEcl = null,
    Object? apiEdam = null,
    Object? apiEydam = null,
  }) {
    return _then(_value.copyWith(
      apiFrai: null == apiFrai
          ? _value.apiFrai
          : apiFrai // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFcl: null == apiFcl
          ? _value.apiFcl
          : apiFcl // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiFdam: null == apiFdam
          ? _value.apiFdam
          : apiFdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiFydam: null == apiFydam
          ? _value.apiFydam
          : apiFydam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiErai: null == apiErai
          ? _value.apiErai
          : apiErai // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEcl: null == apiEcl
          ? _value.apiEcl
          : apiEcl // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEdam: null == apiEdam
          ? _value.apiEdam
          : apiEdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEydam: null == apiEydam
          ? _value.apiEydam
          : apiEydam // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res>
    implements $ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWith(
          _$_ReqSortieBattleApiDataApiRaigekiEntity value,
          $Res Function(_$_ReqSortieBattleApiDataApiRaigekiEntity) then) =
      __$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_frai') List<int> apiFrai,
      @JsonKey(name: 'api_fcl') List<num> apiFcl,
      @JsonKey(name: 'api_fdam') List<num> apiFdam,
      @JsonKey(name: 'api_fydam') List<num> apiFydam,
      @JsonKey(name: 'api_erai') List<int> apiErai,
      @JsonKey(name: 'api_ecl') List<num> apiEcl,
      @JsonKey(name: 'api_edam') List<num> apiEdam,
      @JsonKey(name: 'api_eydam') List<num> apiEydam});
}

/// @nodoc
class __$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleApiDataApiRaigekiEntity>
    implements _$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWith<$Res> {
  __$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl(
      _$_ReqSortieBattleApiDataApiRaigekiEntity _value,
      $Res Function(_$_ReqSortieBattleApiDataApiRaigekiEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFrai = null,
    Object? apiFcl = null,
    Object? apiFdam = null,
    Object? apiFydam = null,
    Object? apiErai = null,
    Object? apiEcl = null,
    Object? apiEdam = null,
    Object? apiEydam = null,
  }) {
    return _then(_$_ReqSortieBattleApiDataApiRaigekiEntity(
      apiFrai: null == apiFrai
          ? _value.apiFrai
          : apiFrai // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiFcl: null == apiFcl
          ? _value.apiFcl
          : apiFcl // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiFdam: null == apiFdam
          ? _value.apiFdam
          : apiFdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiFydam: null == apiFydam
          ? _value.apiFydam
          : apiFydam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiErai: null == apiErai
          ? _value.apiErai
          : apiErai // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiEcl: null == apiEcl
          ? _value.apiEcl
          : apiEcl // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEdam: null == apiEdam
          ? _value.apiEdam
          : apiEdam // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apiEydam: null == apiEydam
          ? _value.apiEydam
          : apiEydam // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleApiDataApiRaigekiEntity
    implements _ReqSortieBattleApiDataApiRaigekiEntity {
  _$_ReqSortieBattleApiDataApiRaigekiEntity(
      {@JsonKey(name: 'api_frai') required this.apiFrai,
      @JsonKey(name: 'api_fcl') required this.apiFcl,
      @JsonKey(name: 'api_fdam') required this.apiFdam,
      @JsonKey(name: 'api_fydam') required this.apiFydam,
      @JsonKey(name: 'api_erai') required this.apiErai,
      @JsonKey(name: 'api_ecl') required this.apiEcl,
      @JsonKey(name: 'api_edam') required this.apiEdam,
      @JsonKey(name: 'api_eydam') required this.apiEydam});

  factory _$_ReqSortieBattleApiDataApiRaigekiEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleApiDataApiRaigekiEntityFromJson(json);

  @override
  @JsonKey(name: 'api_frai')
  List<int> apiFrai;
  @override
  @JsonKey(name: 'api_fcl')
  List<num> apiFcl;
  @override
  @JsonKey(name: 'api_fdam')
  List<num> apiFdam;
  @override
  @JsonKey(name: 'api_fydam')
  List<num> apiFydam;
  @override
  @JsonKey(name: 'api_erai')
  List<int> apiErai;
  @override
  @JsonKey(name: 'api_ecl')
  List<num> apiEcl;
  @override
  @JsonKey(name: 'api_edam')
  List<num> apiEdam;
  @override
  @JsonKey(name: 'api_eydam')
  List<num> apiEydam;

  @override
  String toString() {
    return 'ReqSortieBattleApiDataApiRaigekiEntity(apiFrai: $apiFrai, apiFcl: $apiFcl, apiFdam: $apiFdam, apiFydam: $apiFydam, apiErai: $apiErai, apiEcl: $apiEcl, apiEdam: $apiEdam, apiEydam: $apiEydam)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWith<
          _$_ReqSortieBattleApiDataApiRaigekiEntity>
      get copyWith => __$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWithImpl<
          _$_ReqSortieBattleApiDataApiRaigekiEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleApiDataApiRaigekiEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleApiDataApiRaigekiEntity
    implements ReqSortieBattleApiDataApiRaigekiEntity {
  factory _ReqSortieBattleApiDataApiRaigekiEntity(
          {@JsonKey(name: 'api_frai') required List<int> apiFrai,
          @JsonKey(name: 'api_fcl') required List<num> apiFcl,
          @JsonKey(name: 'api_fdam') required List<num> apiFdam,
          @JsonKey(name: 'api_fydam') required List<num> apiFydam,
          @JsonKey(name: 'api_erai') required List<int> apiErai,
          @JsonKey(name: 'api_ecl') required List<num> apiEcl,
          @JsonKey(name: 'api_edam') required List<num> apiEdam,
          @JsonKey(name: 'api_eydam') required List<num> apiEydam}) =
      _$_ReqSortieBattleApiDataApiRaigekiEntity;

  factory _ReqSortieBattleApiDataApiRaigekiEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleApiDataApiRaigekiEntity.fromJson;

  @override
  @JsonKey(name: 'api_frai')
  List<int> get apiFrai;
  @JsonKey(name: 'api_frai')
  set apiFrai(List<int> value);
  @override
  @JsonKey(name: 'api_fcl')
  List<num> get apiFcl;
  @JsonKey(name: 'api_fcl')
  set apiFcl(List<num> value);
  @override
  @JsonKey(name: 'api_fdam')
  List<num> get apiFdam;
  @JsonKey(name: 'api_fdam')
  set apiFdam(List<num> value);
  @override
  @JsonKey(name: 'api_fydam')
  List<num> get apiFydam;
  @JsonKey(name: 'api_fydam')
  set apiFydam(List<num> value);
  @override
  @JsonKey(name: 'api_erai')
  List<int> get apiErai;
  @JsonKey(name: 'api_erai')
  set apiErai(List<int> value);
  @override
  @JsonKey(name: 'api_ecl')
  List<num> get apiEcl;
  @JsonKey(name: 'api_ecl')
  set apiEcl(List<num> value);
  @override
  @JsonKey(name: 'api_edam')
  List<num> get apiEdam;
  @JsonKey(name: 'api_edam')
  set apiEdam(List<num> value);
  @override
  @JsonKey(name: 'api_eydam')
  List<num> get apiEydam;
  @JsonKey(name: 'api_eydam')
  set apiEydam(List<num> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleApiDataApiRaigekiEntityCopyWith<
          _$_ReqSortieBattleApiDataApiRaigekiEntity>
      get copyWith => throw _privateConstructorUsedError;
}
