// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_sortie_battle_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqSortieBattleResultEntity _$ReqSortieBattleResultEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqSortieBattleResultEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleResultEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  ReqSortieBattleResultApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(ReqSortieBattleResultApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleResultEntityCopyWith<ReqSortieBattleResultEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleResultEntityCopyWith<$Res> {
  factory $ReqSortieBattleResultEntityCopyWith(
          ReqSortieBattleResultEntity value,
          $Res Function(ReqSortieBattleResultEntity) then) =
      _$ReqSortieBattleResultEntityCopyWithImpl<$Res,
          ReqSortieBattleResultEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqSortieBattleResultApiDataEntity apiData});

  $ReqSortieBattleResultApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$ReqSortieBattleResultEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleResultEntity>
    implements $ReqSortieBattleResultEntityCopyWith<$Res> {
  _$ReqSortieBattleResultEntityCopyWithImpl(this._value, this._then);

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
              as ReqSortieBattleResultApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleResultApiDataEntityCopyWith<$Res> get apiData {
    return $ReqSortieBattleResultApiDataEntityCopyWith<$Res>(_value.apiData,
        (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleResultEntityCopyWith<$Res>
    implements $ReqSortieBattleResultEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleResultEntityCopyWith(
          _$_ReqSortieBattleResultEntity value,
          $Res Function(_$_ReqSortieBattleResultEntity) then) =
      __$$_ReqSortieBattleResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') ReqSortieBattleResultApiDataEntity apiData});

  @override
  $ReqSortieBattleResultApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_ReqSortieBattleResultEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleResultEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleResultEntity>
    implements _$$_ReqSortieBattleResultEntityCopyWith<$Res> {
  __$$_ReqSortieBattleResultEntityCopyWithImpl(
      _$_ReqSortieBattleResultEntity _value,
      $Res Function(_$_ReqSortieBattleResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_ReqSortieBattleResultEntity(
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
              as ReqSortieBattleResultApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleResultEntity implements _ReqSortieBattleResultEntity {
  _$_ReqSortieBattleResultEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_ReqSortieBattleResultEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ReqSortieBattleResultEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  ReqSortieBattleResultApiDataEntity apiData;

  @override
  String toString() {
    return 'ReqSortieBattleResultEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleResultEntityCopyWith<_$_ReqSortieBattleResultEntity>
      get copyWith => __$$_ReqSortieBattleResultEntityCopyWithImpl<
          _$_ReqSortieBattleResultEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleResultEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleResultEntity
    implements ReqSortieBattleResultEntity {
  factory _ReqSortieBattleResultEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required ReqSortieBattleResultApiDataEntity apiData}) =
      _$_ReqSortieBattleResultEntity;

  factory _ReqSortieBattleResultEntity.fromJson(Map<String, dynamic> json) =
      _$_ReqSortieBattleResultEntity.fromJson;

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
  ReqSortieBattleResultApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(ReqSortieBattleResultApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleResultEntityCopyWith<_$_ReqSortieBattleResultEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleResultApiDataEntity _$ReqSortieBattleResultApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _ReqSortieBattleResultApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleResultApiDataEntity {
  @JsonKey(name: 'api_ship_id')
  List<int> get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_rank')
  String get apiWinRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_rank')
  set apiWinRank(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp')
  int get apiGetExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp')
  set apiGetExp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mvp')
  int get apiMvp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mvp')
  set apiMvp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_lv')
  int get apiMemberLv => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_lv')
  set apiMemberLv(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_exp')
  int get apiMemberExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_exp')
  set apiMemberExp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_base_exp')
  int get apiGetBaseExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_base_exp')
  set apiGetBaseExp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship_exp')
  List<int> get apiGetShipExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship_exp')
  set apiGetShipExp(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp_lvup')
  List<dynamic> get apiGetExpLvup => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exp_lvup')
  set apiGetExpLvup(List<dynamic> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dests')
  int get apiDests => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dests')
  set apiDests(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_destsf')
  int get apiDestsf => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_destsf')
  set apiDestsf(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_name')
  String get apiQuestName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_name')
  set apiQuestName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_level')
  int get apiQuestLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_quest_level')
  set apiQuestLevel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_enemy_info')
  ReqSortieBattleResultApiDataApiEnemyInfoEntity get apiEnemyInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_enemy_info')
  set apiEnemyInfo(ReqSortieBattleResultApiDataApiEnemyInfoEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_first_clear')
  int get apiFirstClear => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_first_clear')
  set apiFirstClear(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mapcell_incentive')
  int get apiMapcellIncentive => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mapcell_incentive')
  set apiMapcellIncentive(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_flag')
  List<int>? get apiGetFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_flag')
  set apiGetFlag(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship')
  ReqSortieBattleResultApiDataApiGetShipEntity? get apiGetShip =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_ship')
  set apiGetShip(ReqSortieBattleResultApiDataApiGetShipEntity? value) =>
      throw _privateConstructorUsedError;
  ReqSortieBattleResultApiDataApiGetUseitemEntity? get apiGetUseitem =>
      throw _privateConstructorUsedError;
  set apiGetUseitem(ReqSortieBattleResultApiDataApiGetUseitemEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_eventflag')
  int? get apiGetEventflag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_eventflag')
  set apiGetEventflag(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exmap_rate')
  dynamic get apiGetExmapRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exmap_rate')
  set apiGetExmapRate(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exmap_useitem_id')
  dynamic get apiGetExmapUseitemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_get_exmap_useitem_id')
  set apiGetExmapUseitemId(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_escape_flag')
  int? get apiEscapeFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_escape_flag')
  set apiEscapeFlag(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_escape')
  dynamic get apiEscape => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_escape')
  set apiEscape(dynamic value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleResultApiDataEntityCopyWith<
          ReqSortieBattleResultApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleResultApiDataEntityCopyWith<$Res> {
  factory $ReqSortieBattleResultApiDataEntityCopyWith(
          ReqSortieBattleResultApiDataEntity value,
          $Res Function(ReqSortieBattleResultApiDataEntity) then) =
      _$ReqSortieBattleResultApiDataEntityCopyWithImpl<$Res,
          ReqSortieBattleResultApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') List<int> apiShipId,
      @JsonKey(name: 'api_win_rank') String apiWinRank,
      @JsonKey(name: 'api_get_exp') int apiGetExp,
      @JsonKey(name: 'api_mvp') int apiMvp,
      @JsonKey(name: 'api_member_lv') int apiMemberLv,
      @JsonKey(name: 'api_member_exp') int apiMemberExp,
      @JsonKey(name: 'api_get_base_exp') int apiGetBaseExp,
      @JsonKey(name: 'api_get_ship_exp') List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_dests') int apiDests,
      @JsonKey(name: 'api_destsf') int apiDestsf,
      @JsonKey(name: 'api_quest_name') String apiQuestName,
      @JsonKey(name: 'api_quest_level') int apiQuestLevel,
      @JsonKey(name: 'api_enemy_info')
      ReqSortieBattleResultApiDataApiEnemyInfoEntity apiEnemyInfo,
      @JsonKey(name: 'api_first_clear') int apiFirstClear,
      @JsonKey(name: 'api_mapcell_incentive') int apiMapcellIncentive,
      @JsonKey(name: 'api_get_flag') List<int>? apiGetFlag,
      @JsonKey(name: 'api_get_ship')
      ReqSortieBattleResultApiDataApiGetShipEntity? apiGetShip,
      ReqSortieBattleResultApiDataApiGetUseitemEntity? apiGetUseitem,
      @JsonKey(name: 'api_get_eventflag') int? apiGetEventflag,
      @JsonKey(name: 'api_get_exmap_rate') dynamic apiGetExmapRate,
      @JsonKey(name: 'api_get_exmap_useitem_id') dynamic apiGetExmapUseitemId,
      @JsonKey(name: 'api_escape_flag') int? apiEscapeFlag,
      @JsonKey(name: 'api_escape') dynamic apiEscape});

  $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res>
      get apiEnemyInfo;
  $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res>? get apiGetShip;
  $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res>?
      get apiGetUseitem;
}

/// @nodoc
class _$ReqSortieBattleResultApiDataEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleResultApiDataEntity>
    implements $ReqSortieBattleResultApiDataEntityCopyWith<$Res> {
  _$ReqSortieBattleResultApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiWinRank = null,
    Object? apiGetExp = null,
    Object? apiMvp = null,
    Object? apiMemberLv = null,
    Object? apiMemberExp = null,
    Object? apiGetBaseExp = null,
    Object? apiGetShipExp = null,
    Object? apiGetExpLvup = null,
    Object? apiDests = null,
    Object? apiDestsf = null,
    Object? apiQuestName = null,
    Object? apiQuestLevel = null,
    Object? apiEnemyInfo = null,
    Object? apiFirstClear = null,
    Object? apiMapcellIncentive = null,
    Object? apiGetFlag = freezed,
    Object? apiGetShip = freezed,
    Object? apiGetUseitem = freezed,
    Object? apiGetEventflag = freezed,
    Object? apiGetExmapRate = freezed,
    Object? apiGetExmapUseitemId = freezed,
    Object? apiEscapeFlag = freezed,
    Object? apiEscape = freezed,
  }) {
    return _then(_value.copyWith(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinRank: null == apiWinRank
          ? _value.apiWinRank
          : apiWinRank // ignore: cast_nullable_to_non_nullable
              as String,
      apiGetExp: null == apiGetExp
          ? _value.apiGetExp
          : apiGetExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMvp: null == apiMvp
          ? _value.apiMvp
          : apiMvp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberLv: null == apiMemberLv
          ? _value.apiMemberLv
          : apiMemberLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberExp: null == apiMemberExp
          ? _value.apiMemberExp
          : apiMemberExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetBaseExp: null == apiGetBaseExp
          ? _value.apiGetBaseExp
          : apiGetBaseExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetShipExp: null == apiGetShipExp
          ? _value.apiGetShipExp
          : apiGetShipExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiGetExpLvup: null == apiGetExpLvup
          ? _value.apiGetExpLvup
          : apiGetExpLvup // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiDests: null == apiDests
          ? _value.apiDests
          : apiDests // ignore: cast_nullable_to_non_nullable
              as int,
      apiDestsf: null == apiDestsf
          ? _value.apiDestsf
          : apiDestsf // ignore: cast_nullable_to_non_nullable
              as int,
      apiQuestName: null == apiQuestName
          ? _value.apiQuestName
          : apiQuestName // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestLevel: null == apiQuestLevel
          ? _value.apiQuestLevel
          : apiQuestLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiEnemyInfo: null == apiEnemyInfo
          ? _value.apiEnemyInfo
          : apiEnemyInfo // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiEnemyInfoEntity,
      apiFirstClear: null == apiFirstClear
          ? _value.apiFirstClear
          : apiFirstClear // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapcellIncentive: null == apiMapcellIncentive
          ? _value.apiMapcellIncentive
          : apiMapcellIncentive // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetFlag: freezed == apiGetFlag
          ? _value.apiGetFlag
          : apiGetFlag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiGetShip: freezed == apiGetShip
          ? _value.apiGetShip
          : apiGetShip // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiGetShipEntity?,
      apiGetUseitem: freezed == apiGetUseitem
          ? _value.apiGetUseitem
          : apiGetUseitem // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiGetUseitemEntity?,
      apiGetEventflag: freezed == apiGetEventflag
          ? _value.apiGetEventflag
          : apiGetEventflag // ignore: cast_nullable_to_non_nullable
              as int?,
      apiGetExmapRate: freezed == apiGetExmapRate
          ? _value.apiGetExmapRate
          : apiGetExmapRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiGetExmapUseitemId: freezed == apiGetExmapUseitemId
          ? _value.apiGetExmapUseitemId
          : apiGetExmapUseitemId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiEscapeFlag: freezed == apiEscapeFlag
          ? _value.apiEscapeFlag
          : apiEscapeFlag // ignore: cast_nullable_to_non_nullable
              as int?,
      apiEscape: freezed == apiEscape
          ? _value.apiEscape
          : apiEscape // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res>
      get apiEnemyInfo {
    return $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res>(
        _value.apiEnemyInfo, (value) {
      return _then(_value.copyWith(apiEnemyInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res>? get apiGetShip {
    if (_value.apiGetShip == null) {
      return null;
    }

    return $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res>(
        _value.apiGetShip!, (value) {
      return _then(_value.copyWith(apiGetShip: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res>?
      get apiGetUseitem {
    if (_value.apiGetUseitem == null) {
      return null;
    }

    return $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res>(
        _value.apiGetUseitem!, (value) {
      return _then(_value.copyWith(apiGetUseitem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleResultApiDataEntityCopyWith<$Res>
    implements $ReqSortieBattleResultApiDataEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleResultApiDataEntityCopyWith(
          _$_ReqSortieBattleResultApiDataEntity value,
          $Res Function(_$_ReqSortieBattleResultApiDataEntity) then) =
      __$$_ReqSortieBattleResultApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') List<int> apiShipId,
      @JsonKey(name: 'api_win_rank') String apiWinRank,
      @JsonKey(name: 'api_get_exp') int apiGetExp,
      @JsonKey(name: 'api_mvp') int apiMvp,
      @JsonKey(name: 'api_member_lv') int apiMemberLv,
      @JsonKey(name: 'api_member_exp') int apiMemberExp,
      @JsonKey(name: 'api_get_base_exp') int apiGetBaseExp,
      @JsonKey(name: 'api_get_ship_exp') List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_dests') int apiDests,
      @JsonKey(name: 'api_destsf') int apiDestsf,
      @JsonKey(name: 'api_quest_name') String apiQuestName,
      @JsonKey(name: 'api_quest_level') int apiQuestLevel,
      @JsonKey(name: 'api_enemy_info')
      ReqSortieBattleResultApiDataApiEnemyInfoEntity apiEnemyInfo,
      @JsonKey(name: 'api_first_clear') int apiFirstClear,
      @JsonKey(name: 'api_mapcell_incentive') int apiMapcellIncentive,
      @JsonKey(name: 'api_get_flag') List<int>? apiGetFlag,
      @JsonKey(name: 'api_get_ship')
      ReqSortieBattleResultApiDataApiGetShipEntity? apiGetShip,
      ReqSortieBattleResultApiDataApiGetUseitemEntity? apiGetUseitem,
      @JsonKey(name: 'api_get_eventflag') int? apiGetEventflag,
      @JsonKey(name: 'api_get_exmap_rate') dynamic apiGetExmapRate,
      @JsonKey(name: 'api_get_exmap_useitem_id') dynamic apiGetExmapUseitemId,
      @JsonKey(name: 'api_escape_flag') int? apiEscapeFlag,
      @JsonKey(name: 'api_escape') dynamic apiEscape});

  @override
  $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res>
      get apiEnemyInfo;
  @override
  $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res>? get apiGetShip;
  @override
  $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res>?
      get apiGetUseitem;
}

/// @nodoc
class __$$_ReqSortieBattleResultApiDataEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleResultApiDataEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleResultApiDataEntity>
    implements _$$_ReqSortieBattleResultApiDataEntityCopyWith<$Res> {
  __$$_ReqSortieBattleResultApiDataEntityCopyWithImpl(
      _$_ReqSortieBattleResultApiDataEntity _value,
      $Res Function(_$_ReqSortieBattleResultApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiWinRank = null,
    Object? apiGetExp = null,
    Object? apiMvp = null,
    Object? apiMemberLv = null,
    Object? apiMemberExp = null,
    Object? apiGetBaseExp = null,
    Object? apiGetShipExp = null,
    Object? apiGetExpLvup = null,
    Object? apiDests = null,
    Object? apiDestsf = null,
    Object? apiQuestName = null,
    Object? apiQuestLevel = null,
    Object? apiEnemyInfo = null,
    Object? apiFirstClear = null,
    Object? apiMapcellIncentive = null,
    Object? apiGetFlag = freezed,
    Object? apiGetShip = freezed,
    Object? apiGetUseitem = freezed,
    Object? apiGetEventflag = freezed,
    Object? apiGetExmapRate = freezed,
    Object? apiGetExmapUseitemId = freezed,
    Object? apiEscapeFlag = freezed,
    Object? apiEscape = freezed,
  }) {
    return _then(_$_ReqSortieBattleResultApiDataEntity(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinRank: null == apiWinRank
          ? _value.apiWinRank
          : apiWinRank // ignore: cast_nullable_to_non_nullable
              as String,
      apiGetExp: null == apiGetExp
          ? _value.apiGetExp
          : apiGetExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMvp: null == apiMvp
          ? _value.apiMvp
          : apiMvp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberLv: null == apiMemberLv
          ? _value.apiMemberLv
          : apiMemberLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiMemberExp: null == apiMemberExp
          ? _value.apiMemberExp
          : apiMemberExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetBaseExp: null == apiGetBaseExp
          ? _value.apiGetBaseExp
          : apiGetBaseExp // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetShipExp: null == apiGetShipExp
          ? _value.apiGetShipExp
          : apiGetShipExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiGetExpLvup: null == apiGetExpLvup
          ? _value.apiGetExpLvup
          : apiGetExpLvup // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      apiDests: null == apiDests
          ? _value.apiDests
          : apiDests // ignore: cast_nullable_to_non_nullable
              as int,
      apiDestsf: null == apiDestsf
          ? _value.apiDestsf
          : apiDestsf // ignore: cast_nullable_to_non_nullable
              as int,
      apiQuestName: null == apiQuestName
          ? _value.apiQuestName
          : apiQuestName // ignore: cast_nullable_to_non_nullable
              as String,
      apiQuestLevel: null == apiQuestLevel
          ? _value.apiQuestLevel
          : apiQuestLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiEnemyInfo: null == apiEnemyInfo
          ? _value.apiEnemyInfo
          : apiEnemyInfo // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiEnemyInfoEntity,
      apiFirstClear: null == apiFirstClear
          ? _value.apiFirstClear
          : apiFirstClear // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapcellIncentive: null == apiMapcellIncentive
          ? _value.apiMapcellIncentive
          : apiMapcellIncentive // ignore: cast_nullable_to_non_nullable
              as int,
      apiGetFlag: freezed == apiGetFlag
          ? _value.apiGetFlag
          : apiGetFlag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiGetShip: freezed == apiGetShip
          ? _value.apiGetShip
          : apiGetShip // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiGetShipEntity?,
      apiGetUseitem: freezed == apiGetUseitem
          ? _value.apiGetUseitem
          : apiGetUseitem // ignore: cast_nullable_to_non_nullable
              as ReqSortieBattleResultApiDataApiGetUseitemEntity?,
      apiGetEventflag: freezed == apiGetEventflag
          ? _value.apiGetEventflag
          : apiGetEventflag // ignore: cast_nullable_to_non_nullable
              as int?,
      apiGetExmapRate: freezed == apiGetExmapRate
          ? _value.apiGetExmapRate
          : apiGetExmapRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiGetExmapUseitemId: freezed == apiGetExmapUseitemId
          ? _value.apiGetExmapUseitemId
          : apiGetExmapUseitemId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiEscapeFlag: freezed == apiEscapeFlag
          ? _value.apiEscapeFlag
          : apiEscapeFlag // ignore: cast_nullable_to_non_nullable
              as int?,
      apiEscape: freezed == apiEscape
          ? _value.apiEscape
          : apiEscape // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleResultApiDataEntity
    implements _ReqSortieBattleResultApiDataEntity {
  _$_ReqSortieBattleResultApiDataEntity(
      {@JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_win_rank') required this.apiWinRank,
      @JsonKey(name: 'api_get_exp') required this.apiGetExp,
      @JsonKey(name: 'api_mvp') required this.apiMvp,
      @JsonKey(name: 'api_member_lv') required this.apiMemberLv,
      @JsonKey(name: 'api_member_exp') required this.apiMemberExp,
      @JsonKey(name: 'api_get_base_exp') required this.apiGetBaseExp,
      @JsonKey(name: 'api_get_ship_exp') required this.apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') required this.apiGetExpLvup,
      @JsonKey(name: 'api_dests') required this.apiDests,
      @JsonKey(name: 'api_destsf') required this.apiDestsf,
      @JsonKey(name: 'api_quest_name') required this.apiQuestName,
      @JsonKey(name: 'api_quest_level') required this.apiQuestLevel,
      @JsonKey(name: 'api_enemy_info') required this.apiEnemyInfo,
      @JsonKey(name: 'api_first_clear') required this.apiFirstClear,
      @JsonKey(name: 'api_mapcell_incentive') required this.apiMapcellIncentive,
      @JsonKey(name: 'api_get_flag') this.apiGetFlag,
      @JsonKey(name: 'api_get_ship') this.apiGetShip,
      this.apiGetUseitem,
      @JsonKey(name: 'api_get_eventflag') this.apiGetEventflag,
      @JsonKey(name: 'api_get_exmap_rate') this.apiGetExmapRate,
      @JsonKey(name: 'api_get_exmap_useitem_id') this.apiGetExmapUseitemId,
      @JsonKey(name: 'api_escape_flag') this.apiEscapeFlag,
      @JsonKey(name: 'api_escape') this.apiEscape});

  factory _$_ReqSortieBattleResultApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleResultApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_ship_id')
  List<int> apiShipId;
  @override
  @JsonKey(name: 'api_win_rank')
  String apiWinRank;
  @override
  @JsonKey(name: 'api_get_exp')
  int apiGetExp;
  @override
  @JsonKey(name: 'api_mvp')
  int apiMvp;
  @override
  @JsonKey(name: 'api_member_lv')
  int apiMemberLv;
  @override
  @JsonKey(name: 'api_member_exp')
  int apiMemberExp;
  @override
  @JsonKey(name: 'api_get_base_exp')
  int apiGetBaseExp;
  @override
  @JsonKey(name: 'api_get_ship_exp')
  List<int> apiGetShipExp;
  @override
  @JsonKey(name: 'api_get_exp_lvup')
  List<dynamic> apiGetExpLvup;
  @override
  @JsonKey(name: 'api_dests')
  int apiDests;
  @override
  @JsonKey(name: 'api_destsf')
  int apiDestsf;
  @override
  @JsonKey(name: 'api_quest_name')
  String apiQuestName;
  @override
  @JsonKey(name: 'api_quest_level')
  int apiQuestLevel;
  @override
  @JsonKey(name: 'api_enemy_info')
  ReqSortieBattleResultApiDataApiEnemyInfoEntity apiEnemyInfo;
  @override
  @JsonKey(name: 'api_first_clear')
  int apiFirstClear;
  @override
  @JsonKey(name: 'api_mapcell_incentive')
  int apiMapcellIncentive;
  @override
  @JsonKey(name: 'api_get_flag')
  List<int>? apiGetFlag;
  @override
  @JsonKey(name: 'api_get_ship')
  ReqSortieBattleResultApiDataApiGetShipEntity? apiGetShip;
  @override
  ReqSortieBattleResultApiDataApiGetUseitemEntity? apiGetUseitem;
  @override
  @JsonKey(name: 'api_get_eventflag')
  int? apiGetEventflag;
  @override
  @JsonKey(name: 'api_get_exmap_rate')
  dynamic apiGetExmapRate;
  @override
  @JsonKey(name: 'api_get_exmap_useitem_id')
  dynamic apiGetExmapUseitemId;
  @override
  @JsonKey(name: 'api_escape_flag')
  int? apiEscapeFlag;
  @override
  @JsonKey(name: 'api_escape')
  dynamic apiEscape;

  @override
  String toString() {
    return 'ReqSortieBattleResultApiDataEntity(apiShipId: $apiShipId, apiWinRank: $apiWinRank, apiGetExp: $apiGetExp, apiMvp: $apiMvp, apiMemberLv: $apiMemberLv, apiMemberExp: $apiMemberExp, apiGetBaseExp: $apiGetBaseExp, apiGetShipExp: $apiGetShipExp, apiGetExpLvup: $apiGetExpLvup, apiDests: $apiDests, apiDestsf: $apiDestsf, apiQuestName: $apiQuestName, apiQuestLevel: $apiQuestLevel, apiEnemyInfo: $apiEnemyInfo, apiFirstClear: $apiFirstClear, apiMapcellIncentive: $apiMapcellIncentive, apiGetFlag: $apiGetFlag, apiGetShip: $apiGetShip, apiGetUseitem: $apiGetUseitem, apiGetEventflag: $apiGetEventflag, apiGetExmapRate: $apiGetExmapRate, apiGetExmapUseitemId: $apiGetExmapUseitemId, apiEscapeFlag: $apiEscapeFlag, apiEscape: $apiEscape)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleResultApiDataEntityCopyWith<
          _$_ReqSortieBattleResultApiDataEntity>
      get copyWith => __$$_ReqSortieBattleResultApiDataEntityCopyWithImpl<
          _$_ReqSortieBattleResultApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleResultApiDataEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleResultApiDataEntity
    implements ReqSortieBattleResultApiDataEntity {
  factory _ReqSortieBattleResultApiDataEntity(
      {@JsonKey(name: 'api_ship_id') required List<int> apiShipId,
      @JsonKey(name: 'api_win_rank') required String apiWinRank,
      @JsonKey(name: 'api_get_exp') required int apiGetExp,
      @JsonKey(name: 'api_mvp') required int apiMvp,
      @JsonKey(name: 'api_member_lv') required int apiMemberLv,
      @JsonKey(name: 'api_member_exp') required int apiMemberExp,
      @JsonKey(name: 'api_get_base_exp') required int apiGetBaseExp,
      @JsonKey(name: 'api_get_ship_exp') required List<int> apiGetShipExp,
      @JsonKey(name: 'api_get_exp_lvup') required List<dynamic> apiGetExpLvup,
      @JsonKey(name: 'api_dests') required int apiDests,
      @JsonKey(name: 'api_destsf') required int apiDestsf,
      @JsonKey(name: 'api_quest_name') required String apiQuestName,
      @JsonKey(name: 'api_quest_level') required int apiQuestLevel,
      @JsonKey(name: 'api_enemy_info')
      required ReqSortieBattleResultApiDataApiEnemyInfoEntity apiEnemyInfo,
      @JsonKey(name: 'api_first_clear') required int apiFirstClear,
      @JsonKey(name: 'api_mapcell_incentive') required int apiMapcellIncentive,
      @JsonKey(name: 'api_get_flag') List<int>? apiGetFlag,
      @JsonKey(name: 'api_get_ship')
      ReqSortieBattleResultApiDataApiGetShipEntity? apiGetShip,
      ReqSortieBattleResultApiDataApiGetUseitemEntity? apiGetUseitem,
      @JsonKey(name: 'api_get_eventflag') int? apiGetEventflag,
      @JsonKey(name: 'api_get_exmap_rate') dynamic apiGetExmapRate,
      @JsonKey(name: 'api_get_exmap_useitem_id') dynamic apiGetExmapUseitemId,
      @JsonKey(name: 'api_escape_flag') int? apiEscapeFlag,
      @JsonKey(name: 'api_escape')
      dynamic apiEscape}) = _$_ReqSortieBattleResultApiDataEntity;

  factory _ReqSortieBattleResultApiDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleResultApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_ship_id')
  List<int> get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(List<int> value);
  @override
  @JsonKey(name: 'api_win_rank')
  String get apiWinRank;
  @JsonKey(name: 'api_win_rank')
  set apiWinRank(String value);
  @override
  @JsonKey(name: 'api_get_exp')
  int get apiGetExp;
  @JsonKey(name: 'api_get_exp')
  set apiGetExp(int value);
  @override
  @JsonKey(name: 'api_mvp')
  int get apiMvp;
  @JsonKey(name: 'api_mvp')
  set apiMvp(int value);
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
  @JsonKey(name: 'api_get_base_exp')
  int get apiGetBaseExp;
  @JsonKey(name: 'api_get_base_exp')
  set apiGetBaseExp(int value);
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
  @JsonKey(name: 'api_dests')
  int get apiDests;
  @JsonKey(name: 'api_dests')
  set apiDests(int value);
  @override
  @JsonKey(name: 'api_destsf')
  int get apiDestsf;
  @JsonKey(name: 'api_destsf')
  set apiDestsf(int value);
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
  @JsonKey(name: 'api_enemy_info')
  ReqSortieBattleResultApiDataApiEnemyInfoEntity get apiEnemyInfo;
  @JsonKey(name: 'api_enemy_info')
  set apiEnemyInfo(ReqSortieBattleResultApiDataApiEnemyInfoEntity value);
  @override
  @JsonKey(name: 'api_first_clear')
  int get apiFirstClear;
  @JsonKey(name: 'api_first_clear')
  set apiFirstClear(int value);
  @override
  @JsonKey(name: 'api_mapcell_incentive')
  int get apiMapcellIncentive;
  @JsonKey(name: 'api_mapcell_incentive')
  set apiMapcellIncentive(int value);
  @override
  @JsonKey(name: 'api_get_flag')
  List<int>? get apiGetFlag;
  @JsonKey(name: 'api_get_flag')
  set apiGetFlag(List<int>? value);
  @override
  @JsonKey(name: 'api_get_ship')
  ReqSortieBattleResultApiDataApiGetShipEntity? get apiGetShip;
  @JsonKey(name: 'api_get_ship')
  set apiGetShip(ReqSortieBattleResultApiDataApiGetShipEntity? value);
  @override
  ReqSortieBattleResultApiDataApiGetUseitemEntity? get apiGetUseitem;
  set apiGetUseitem(ReqSortieBattleResultApiDataApiGetUseitemEntity? value);
  @override
  @JsonKey(name: 'api_get_eventflag')
  int? get apiGetEventflag;
  @JsonKey(name: 'api_get_eventflag')
  set apiGetEventflag(int? value);
  @override
  @JsonKey(name: 'api_get_exmap_rate')
  dynamic get apiGetExmapRate;
  @JsonKey(name: 'api_get_exmap_rate')
  set apiGetExmapRate(dynamic value);
  @override
  @JsonKey(name: 'api_get_exmap_useitem_id')
  dynamic get apiGetExmapUseitemId;
  @JsonKey(name: 'api_get_exmap_useitem_id')
  set apiGetExmapUseitemId(dynamic value);
  @override
  @JsonKey(name: 'api_escape_flag')
  int? get apiEscapeFlag;
  @JsonKey(name: 'api_escape_flag')
  set apiEscapeFlag(int? value);
  @override
  @JsonKey(name: 'api_escape')
  dynamic get apiEscape;
  @JsonKey(name: 'api_escape')
  set apiEscape(dynamic value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleResultApiDataEntityCopyWith<
          _$_ReqSortieBattleResultApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleResultApiDataApiEnemyInfoEntity
    _$ReqSortieBattleResultApiDataApiEnemyInfoEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqSortieBattleResultApiDataApiEnemyInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleResultApiDataApiEnemyInfoEntity {
  @JsonKey(name: 'api_level')
  String get apiLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  set apiLevel(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rank')
  String get apiRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rank')
  set apiRank(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_name')
  String get apiDeckName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_name')
  set apiDeckName(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<
          ReqSortieBattleResultApiDataApiEnemyInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res> {
  factory $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith(
          ReqSortieBattleResultApiDataApiEnemyInfoEntity value,
          $Res Function(ReqSortieBattleResultApiDataApiEnemyInfoEntity) then) =
      _$ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<$Res,
          ReqSortieBattleResultApiDataApiEnemyInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_level') String apiLevel,
      @JsonKey(name: 'api_rank') String apiRank,
      @JsonKey(name: 'api_deck_name') String apiDeckName});
}

/// @nodoc
class _$ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleResultApiDataApiEnemyInfoEntity>
    implements $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res> {
  _$ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLevel = null,
    Object? apiRank = null,
    Object? apiDeckName = null,
  }) {
    return _then(_value.copyWith(
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      apiRank: null == apiRank
          ? _value.apiRank
          : apiRank // ignore: cast_nullable_to_non_nullable
              as String,
      apiDeckName: null == apiDeckName
          ? _value.apiDeckName
          : apiDeckName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res>
    implements $ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith(
          _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity value,
          $Res Function(_$_ReqSortieBattleResultApiDataApiEnemyInfoEntity)
              then) =
      __$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_level') String apiLevel,
      @JsonKey(name: 'api_rank') String apiRank,
      @JsonKey(name: 'api_deck_name') String apiDeckName});
}

/// @nodoc
class __$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity>
    implements
        _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<$Res> {
  __$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl(
      _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity _value,
      $Res Function(_$_ReqSortieBattleResultApiDataApiEnemyInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLevel = null,
    Object? apiRank = null,
    Object? apiDeckName = null,
  }) {
    return _then(_$_ReqSortieBattleResultApiDataApiEnemyInfoEntity(
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      apiRank: null == apiRank
          ? _value.apiRank
          : apiRank // ignore: cast_nullable_to_non_nullable
              as String,
      apiDeckName: null == apiDeckName
          ? _value.apiDeckName
          : apiDeckName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity
    implements _ReqSortieBattleResultApiDataApiEnemyInfoEntity {
  _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity(
      {@JsonKey(name: 'api_level') required this.apiLevel,
      @JsonKey(name: 'api_rank') required this.apiRank,
      @JsonKey(name: 'api_deck_name') required this.apiDeckName});

  factory _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'api_level')
  String apiLevel;
  @override
  @JsonKey(name: 'api_rank')
  String apiRank;
  @override
  @JsonKey(name: 'api_deck_name')
  String apiDeckName;

  @override
  String toString() {
    return 'ReqSortieBattleResultApiDataApiEnemyInfoEntity(apiLevel: $apiLevel, apiRank: $apiRank, apiDeckName: $apiDeckName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity>
      get copyWith =>
          __$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWithImpl<
                  _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleResultApiDataApiEnemyInfoEntity
    implements ReqSortieBattleResultApiDataApiEnemyInfoEntity {
  factory _ReqSortieBattleResultApiDataApiEnemyInfoEntity(
          {@JsonKey(name: 'api_level') required String apiLevel,
          @JsonKey(name: 'api_rank') required String apiRank,
          @JsonKey(name: 'api_deck_name') required String apiDeckName}) =
      _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity;

  factory _ReqSortieBattleResultApiDataApiEnemyInfoEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity.fromJson;

  @override
  @JsonKey(name: 'api_level')
  String get apiLevel;
  @JsonKey(name: 'api_level')
  set apiLevel(String value);
  @override
  @JsonKey(name: 'api_rank')
  String get apiRank;
  @JsonKey(name: 'api_rank')
  set apiRank(String value);
  @override
  @JsonKey(name: 'api_deck_name')
  String get apiDeckName;
  @JsonKey(name: 'api_deck_name')
  set apiDeckName(String value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleResultApiDataApiEnemyInfoEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiEnemyInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleResultApiDataApiGetUseitemEntity
    _$ReqSortieBattleResultApiDataApiGetUseitemEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqSortieBattleResultApiDataApiGetUseitemEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleResultApiDataApiGetUseitemEntity {
  @JsonKey(name: 'api_useitem_id')
  int? get apiUseitemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem_id')
  set apiUseitemId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem_name')
  String? get apiUseitemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_useitem_name')
  set apiUseitemName(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<
          ReqSortieBattleResultApiDataApiGetUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res> {
  factory $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith(
          ReqSortieBattleResultApiDataApiGetUseitemEntity value,
          $Res Function(ReqSortieBattleResultApiDataApiGetUseitemEntity) then) =
      _$ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<$Res,
          ReqSortieBattleResultApiDataApiGetUseitemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_useitem_id') int? apiUseitemId,
      @JsonKey(name: 'api_useitem_name') String? apiUseitemName});
}

/// @nodoc
class _$ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleResultApiDataApiGetUseitemEntity>
    implements $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res> {
  _$ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUseitemId = freezed,
    Object? apiUseitemName = freezed,
  }) {
    return _then(_value.copyWith(
      apiUseitemId: freezed == apiUseitemId
          ? _value.apiUseitemId
          : apiUseitemId // ignore: cast_nullable_to_non_nullable
              as int?,
      apiUseitemName: freezed == apiUseitemName
          ? _value.apiUseitemName
          : apiUseitemName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res>
    implements $ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith(
          _$_ReqSortieBattleResultApiDataApiGetUseitemEntity value,
          $Res Function(_$_ReqSortieBattleResultApiDataApiGetUseitemEntity)
              then) =
      __$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_useitem_id') int? apiUseitemId,
      @JsonKey(name: 'api_useitem_name') String? apiUseitemName});
}

/// @nodoc
class __$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleResultApiDataApiGetUseitemEntity>
    implements
        _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<$Res> {
  __$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl(
      _$_ReqSortieBattleResultApiDataApiGetUseitemEntity _value,
      $Res Function(_$_ReqSortieBattleResultApiDataApiGetUseitemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUseitemId = freezed,
    Object? apiUseitemName = freezed,
  }) {
    return _then(_$_ReqSortieBattleResultApiDataApiGetUseitemEntity(
      apiUseitemId: freezed == apiUseitemId
          ? _value.apiUseitemId
          : apiUseitemId // ignore: cast_nullable_to_non_nullable
              as int?,
      apiUseitemName: freezed == apiUseitemName
          ? _value.apiUseitemName
          : apiUseitemName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleResultApiDataApiGetUseitemEntity
    implements _ReqSortieBattleResultApiDataApiGetUseitemEntity {
  _$_ReqSortieBattleResultApiDataApiGetUseitemEntity(
      {@JsonKey(name: 'api_useitem_id') this.apiUseitemId,
      @JsonKey(name: 'api_useitem_name') this.apiUseitemName});

  factory _$_ReqSortieBattleResultApiDataApiGetUseitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_useitem_id')
  int? apiUseitemId;
  @override
  @JsonKey(name: 'api_useitem_name')
  String? apiUseitemName;

  @override
  String toString() {
    return 'ReqSortieBattleResultApiDataApiGetUseitemEntity(apiUseitemId: $apiUseitemId, apiUseitemName: $apiUseitemName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiGetUseitemEntity>
      get copyWith =>
          __$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWithImpl<
                  _$_ReqSortieBattleResultApiDataApiGetUseitemEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleResultApiDataApiGetUseitemEntity
    implements ReqSortieBattleResultApiDataApiGetUseitemEntity {
  factory _ReqSortieBattleResultApiDataApiGetUseitemEntity(
          {@JsonKey(name: 'api_useitem_id') int? apiUseitemId,
          @JsonKey(name: 'api_useitem_name') String? apiUseitemName}) =
      _$_ReqSortieBattleResultApiDataApiGetUseitemEntity;

  factory _ReqSortieBattleResultApiDataApiGetUseitemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleResultApiDataApiGetUseitemEntity.fromJson;

  @override
  @JsonKey(name: 'api_useitem_id')
  int? get apiUseitemId;
  @JsonKey(name: 'api_useitem_id')
  set apiUseitemId(int? value);
  @override
  @JsonKey(name: 'api_useitem_name')
  String? get apiUseitemName;
  @JsonKey(name: 'api_useitem_name')
  set apiUseitemName(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleResultApiDataApiGetUseitemEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiGetUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

ReqSortieBattleResultApiDataApiGetShipEntity
    _$ReqSortieBattleResultApiDataApiGetShipEntityFromJson(
        Map<String, dynamic> json) {
  return _ReqSortieBattleResultApiDataApiGetShipEntity.fromJson(json);
}

/// @nodoc
mixin _$ReqSortieBattleResultApiDataApiGetShipEntity {
  @JsonKey(name: 'api_ship_id')
  int get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_type')
  String get apiShipType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_type')
  set apiShipType(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_name')
  String get apiShipName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_name')
  set apiShipName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_getmes')
  String get apiShipGetmes => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_getmes')
  set apiShipGetmes(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<
          ReqSortieBattleResultApiDataApiGetShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res> {
  factory $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith(
          ReqSortieBattleResultApiDataApiGetShipEntity value,
          $Res Function(ReqSortieBattleResultApiDataApiGetShipEntity) then) =
      _$ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<$Res,
          ReqSortieBattleResultApiDataApiGetShipEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_ship_type') String apiShipType,
      @JsonKey(name: 'api_ship_name') String apiShipName,
      @JsonKey(name: 'api_ship_getmes') String apiShipGetmes});
}

/// @nodoc
class _$ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<$Res,
        $Val extends ReqSortieBattleResultApiDataApiGetShipEntity>
    implements $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res> {
  _$ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiShipType = null,
    Object? apiShipName = null,
    Object? apiShipGetmes = null,
  }) {
    return _then(_value.copyWith(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipType: null == apiShipType
          ? _value.apiShipType
          : apiShipType // ignore: cast_nullable_to_non_nullable
              as String,
      apiShipName: null == apiShipName
          ? _value.apiShipName
          : apiShipName // ignore: cast_nullable_to_non_nullable
              as String,
      apiShipGetmes: null == apiShipGetmes
          ? _value.apiShipGetmes
          : apiShipGetmes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res>
    implements $ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res> {
  factory _$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWith(
          _$_ReqSortieBattleResultApiDataApiGetShipEntity value,
          $Res Function(_$_ReqSortieBattleResultApiDataApiGetShipEntity) then) =
      __$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_ship_type') String apiShipType,
      @JsonKey(name: 'api_ship_name') String apiShipName,
      @JsonKey(name: 'api_ship_getmes') String apiShipGetmes});
}

/// @nodoc
class __$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<$Res>
    extends _$ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<$Res,
        _$_ReqSortieBattleResultApiDataApiGetShipEntity>
    implements _$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<$Res> {
  __$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl(
      _$_ReqSortieBattleResultApiDataApiGetShipEntity _value,
      $Res Function(_$_ReqSortieBattleResultApiDataApiGetShipEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiShipType = null,
    Object? apiShipName = null,
    Object? apiShipGetmes = null,
  }) {
    return _then(_$_ReqSortieBattleResultApiDataApiGetShipEntity(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipType: null == apiShipType
          ? _value.apiShipType
          : apiShipType // ignore: cast_nullable_to_non_nullable
              as String,
      apiShipName: null == apiShipName
          ? _value.apiShipName
          : apiShipName // ignore: cast_nullable_to_non_nullable
              as String,
      apiShipGetmes: null == apiShipGetmes
          ? _value.apiShipGetmes
          : apiShipGetmes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqSortieBattleResultApiDataApiGetShipEntity
    implements _ReqSortieBattleResultApiDataApiGetShipEntity {
  _$_ReqSortieBattleResultApiDataApiGetShipEntity(
      {@JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_ship_type') required this.apiShipType,
      @JsonKey(name: 'api_ship_name') required this.apiShipName,
      @JsonKey(name: 'api_ship_getmes') required this.apiShipGetmes});

  factory _$_ReqSortieBattleResultApiDataApiGetShipEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_ReqSortieBattleResultApiDataApiGetShipEntityFromJson(json);

  @override
  @JsonKey(name: 'api_ship_id')
  int apiShipId;
  @override
  @JsonKey(name: 'api_ship_type')
  String apiShipType;
  @override
  @JsonKey(name: 'api_ship_name')
  String apiShipName;
  @override
  @JsonKey(name: 'api_ship_getmes')
  String apiShipGetmes;

  @override
  String toString() {
    return 'ReqSortieBattleResultApiDataApiGetShipEntity(apiShipId: $apiShipId, apiShipType: $apiShipType, apiShipName: $apiShipName, apiShipGetmes: $apiShipGetmes)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiGetShipEntity>
      get copyWith =>
          __$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWithImpl<
                  _$_ReqSortieBattleResultApiDataApiGetShipEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqSortieBattleResultApiDataApiGetShipEntityToJson(
      this,
    );
  }
}

abstract class _ReqSortieBattleResultApiDataApiGetShipEntity
    implements ReqSortieBattleResultApiDataApiGetShipEntity {
  factory _ReqSortieBattleResultApiDataApiGetShipEntity(
          {@JsonKey(name: 'api_ship_id') required int apiShipId,
          @JsonKey(name: 'api_ship_type') required String apiShipType,
          @JsonKey(name: 'api_ship_name') required String apiShipName,
          @JsonKey(name: 'api_ship_getmes') required String apiShipGetmes}) =
      _$_ReqSortieBattleResultApiDataApiGetShipEntity;

  factory _ReqSortieBattleResultApiDataApiGetShipEntity.fromJson(
          Map<String, dynamic> json) =
      _$_ReqSortieBattleResultApiDataApiGetShipEntity.fromJson;

  @override
  @JsonKey(name: 'api_ship_id')
  int get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value);
  @override
  @JsonKey(name: 'api_ship_type')
  String get apiShipType;
  @JsonKey(name: 'api_ship_type')
  set apiShipType(String value);
  @override
  @JsonKey(name: 'api_ship_name')
  String get apiShipName;
  @JsonKey(name: 'api_ship_name')
  set apiShipName(String value);
  @override
  @JsonKey(name: 'api_ship_getmes')
  String get apiShipGetmes;
  @JsonKey(name: 'api_ship_getmes')
  set apiShipGetmes(String value);
  @override
  @JsonKey(ignore: true)
  _$$_ReqSortieBattleResultApiDataApiGetShipEntityCopyWith<
          _$_ReqSortieBattleResultApiDataApiGetShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}
