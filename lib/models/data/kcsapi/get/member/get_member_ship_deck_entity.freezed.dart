// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_ship_deck_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMemberShipDeckEntity _$GetMemberShipDeckEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberShipDeckEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberShipDeckEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  GetMemberShipDeckApiDataEntity get apiData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberShipDeckApiDataEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberShipDeckEntityCopyWith<GetMemberShipDeckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberShipDeckEntityCopyWith<$Res> {
  factory $GetMemberShipDeckEntityCopyWith(GetMemberShipDeckEntity value,
          $Res Function(GetMemberShipDeckEntity) then) =
      _$GetMemberShipDeckEntityCopyWithImpl<$Res, GetMemberShipDeckEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberShipDeckApiDataEntity apiData});

  $GetMemberShipDeckApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$GetMemberShipDeckEntityCopyWithImpl<$Res,
        $Val extends GetMemberShipDeckEntity>
    implements $GetMemberShipDeckEntityCopyWith<$Res> {
  _$GetMemberShipDeckEntityCopyWithImpl(this._value, this._then);

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
              as GetMemberShipDeckApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetMemberShipDeckApiDataEntityCopyWith<$Res> get apiData {
    return $GetMemberShipDeckApiDataEntityCopyWith<$Res>(_value.apiData,
        (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetMemberShipDeckEntityCopyWith<$Res>
    implements $GetMemberShipDeckEntityCopyWith<$Res> {
  factory _$$_GetMemberShipDeckEntityCopyWith(_$_GetMemberShipDeckEntity value,
          $Res Function(_$_GetMemberShipDeckEntity) then) =
      __$$_GetMemberShipDeckEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetMemberShipDeckApiDataEntity apiData});

  @override
  $GetMemberShipDeckApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_GetMemberShipDeckEntityCopyWithImpl<$Res>
    extends _$GetMemberShipDeckEntityCopyWithImpl<$Res,
        _$_GetMemberShipDeckEntity>
    implements _$$_GetMemberShipDeckEntityCopyWith<$Res> {
  __$$_GetMemberShipDeckEntityCopyWithImpl(_$_GetMemberShipDeckEntity _value,
      $Res Function(_$_GetMemberShipDeckEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetMemberShipDeckEntity(
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
              as GetMemberShipDeckApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberShipDeckEntity implements _GetMemberShipDeckEntity {
  _$_GetMemberShipDeckEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetMemberShipDeckEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetMemberShipDeckEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  GetMemberShipDeckApiDataEntity apiData;

  @override
  String toString() {
    return 'GetMemberShipDeckEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberShipDeckEntityCopyWith<_$_GetMemberShipDeckEntity>
      get copyWith =>
          __$$_GetMemberShipDeckEntityCopyWithImpl<_$_GetMemberShipDeckEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberShipDeckEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberShipDeckEntity implements GetMemberShipDeckEntity {
  factory _GetMemberShipDeckEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data')
          required GetMemberShipDeckApiDataEntity apiData}) =
      _$_GetMemberShipDeckEntity;

  factory _GetMemberShipDeckEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberShipDeckEntity.fromJson;

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
  GetMemberShipDeckApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(GetMemberShipDeckApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberShipDeckEntityCopyWith<_$_GetMemberShipDeckEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberShipDeckApiDataEntity _$GetMemberShipDeckApiDataEntityFromJson(
    Map<String, dynamic> json) {
  return _GetMemberShipDeckApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberShipDeckApiDataEntity {
  @JsonKey(name: 'api_ship_data')
  List<GetMemberShipDeckApiDataApiShipDataEntity> get apiShipData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_data')
  set apiShipData(List<GetMemberShipDeckApiDataApiShipDataEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_data')
  List<GetMemberShipDeckApiDataApiDeckDataEntity> get apiDeckData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_data')
  set apiDeckData(List<GetMemberShipDeckApiDataApiDeckDataEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberShipDeckApiDataEntityCopyWith<GetMemberShipDeckApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberShipDeckApiDataEntityCopyWith<$Res> {
  factory $GetMemberShipDeckApiDataEntityCopyWith(
          GetMemberShipDeckApiDataEntity value,
          $Res Function(GetMemberShipDeckApiDataEntity) then) =
      _$GetMemberShipDeckApiDataEntityCopyWithImpl<$Res,
          GetMemberShipDeckApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_data')
      List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData,
      @JsonKey(name: 'api_deck_data')
      List<GetMemberShipDeckApiDataApiDeckDataEntity> apiDeckData});
}

/// @nodoc
class _$GetMemberShipDeckApiDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberShipDeckApiDataEntity>
    implements $GetMemberShipDeckApiDataEntityCopyWith<$Res> {
  _$GetMemberShipDeckApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipData = null,
    Object? apiDeckData = null,
  }) {
    return _then(_value.copyWith(
      apiShipData: null == apiShipData
          ? _value.apiShipData
          : apiShipData // ignore: cast_nullable_to_non_nullable
              as List<GetMemberShipDeckApiDataApiShipDataEntity>,
      apiDeckData: null == apiDeckData
          ? _value.apiDeckData
          : apiDeckData // ignore: cast_nullable_to_non_nullable
              as List<GetMemberShipDeckApiDataApiDeckDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberShipDeckApiDataEntityCopyWith<$Res>
    implements $GetMemberShipDeckApiDataEntityCopyWith<$Res> {
  factory _$$_GetMemberShipDeckApiDataEntityCopyWith(
          _$_GetMemberShipDeckApiDataEntity value,
          $Res Function(_$_GetMemberShipDeckApiDataEntity) then) =
      __$$_GetMemberShipDeckApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_data')
      List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData,
      @JsonKey(name: 'api_deck_data')
      List<GetMemberShipDeckApiDataApiDeckDataEntity> apiDeckData});
}

/// @nodoc
class __$$_GetMemberShipDeckApiDataEntityCopyWithImpl<$Res>
    extends _$GetMemberShipDeckApiDataEntityCopyWithImpl<$Res,
        _$_GetMemberShipDeckApiDataEntity>
    implements _$$_GetMemberShipDeckApiDataEntityCopyWith<$Res> {
  __$$_GetMemberShipDeckApiDataEntityCopyWithImpl(
      _$_GetMemberShipDeckApiDataEntity _value,
      $Res Function(_$_GetMemberShipDeckApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipData = null,
    Object? apiDeckData = null,
  }) {
    return _then(_$_GetMemberShipDeckApiDataEntity(
      apiShipData: null == apiShipData
          ? _value.apiShipData
          : apiShipData // ignore: cast_nullable_to_non_nullable
              as List<GetMemberShipDeckApiDataApiShipDataEntity>,
      apiDeckData: null == apiDeckData
          ? _value.apiDeckData
          : apiDeckData // ignore: cast_nullable_to_non_nullable
              as List<GetMemberShipDeckApiDataApiDeckDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberShipDeckApiDataEntity
    implements _GetMemberShipDeckApiDataEntity {
  _$_GetMemberShipDeckApiDataEntity(
      {@JsonKey(name: 'api_ship_data') required this.apiShipData,
      @JsonKey(name: 'api_deck_data') required this.apiDeckData});

  factory _$_GetMemberShipDeckApiDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberShipDeckApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_ship_data')
  List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData;
  @override
  @JsonKey(name: 'api_deck_data')
  List<GetMemberShipDeckApiDataApiDeckDataEntity> apiDeckData;

  @override
  String toString() {
    return 'GetMemberShipDeckApiDataEntity(apiShipData: $apiShipData, apiDeckData: $apiDeckData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberShipDeckApiDataEntityCopyWith<_$_GetMemberShipDeckApiDataEntity>
      get copyWith => __$$_GetMemberShipDeckApiDataEntityCopyWithImpl<
          _$_GetMemberShipDeckApiDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberShipDeckApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberShipDeckApiDataEntity
    implements GetMemberShipDeckApiDataEntity {
  factory _GetMemberShipDeckApiDataEntity(
      {@JsonKey(name: 'api_ship_data')
      required List<GetMemberShipDeckApiDataApiShipDataEntity> apiShipData,
      @JsonKey(name: 'api_deck_data')
      required List<GetMemberShipDeckApiDataApiDeckDataEntity>
          apiDeckData}) = _$_GetMemberShipDeckApiDataEntity;

  factory _GetMemberShipDeckApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetMemberShipDeckApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_ship_data')
  List<GetMemberShipDeckApiDataApiShipDataEntity> get apiShipData;
  @JsonKey(name: 'api_ship_data')
  set apiShipData(List<GetMemberShipDeckApiDataApiShipDataEntity> value);
  @override
  @JsonKey(name: 'api_deck_data')
  List<GetMemberShipDeckApiDataApiDeckDataEntity> get apiDeckData;
  @JsonKey(name: 'api_deck_data')
  set apiDeckData(List<GetMemberShipDeckApiDataApiDeckDataEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberShipDeckApiDataEntityCopyWith<_$_GetMemberShipDeckApiDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberShipDeckApiDataApiShipDataEntity
    _$GetMemberShipDeckApiDataApiShipDataEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberShipDeckApiDataApiShipDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberShipDeckApiDataApiShipDataEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  int get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_lv')
  int get apiLv => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_lv')
  set apiLv(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_exp')
  List<int> get apiExp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_exp')
  set apiExp(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nowhp')
  int get apiNowhp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nowhp')
  set apiNowhp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maxhp')
  int get apiMaxhp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maxhp')
  set apiMaxhp(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  int get apiSoku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  set apiSoku(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  int get apiLeng => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  set apiLeng(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot')
  List<int> get apiSlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot')
  set apiSlot(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_onslot')
  List<int> get apiOnslot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_onslot')
  set apiOnslot(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_ex')
  int get apiSlotEx => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_ex')
  set apiSlotEx(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kyouka')
  List<int> get apiKyouka => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kyouka')
  set apiKyouka(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_backs')
  int get apiBacks => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_backs')
  set apiBacks(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fuel')
  int get apiFuel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fuel')
  set apiFuel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bull')
  int get apiBull => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bull')
  set apiBull(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotnum')
  int get apiSlotnum => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotnum')
  set apiSlotnum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock_time')
  int get apiNdockTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock_time')
  set apiNdockTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock_item')
  List<int> get apiNdockItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock_item')
  set apiNdockItem(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_srate')
  int get apiSrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_srate')
  set apiSrate(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cond')
  int get apiCond => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cond')
  set apiCond(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_karyoku')
  List<int> get apiKaryoku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_karyoku')
  set apiKaryoku(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raisou')
  List<int> get apiRaisou => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raisou')
  set apiRaisou(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taiku')
  List<int> get apiTaiku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taiku')
  set apiTaiku(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soukou')
  List<int> get apiSoukou => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soukou')
  set apiSoukou(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaihi')
  List<int> get apiKaihi => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaihi')
  set apiKaihi(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taisen')
  List<int> get apiTaisen => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taisen')
  set apiTaisen(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sakuteki')
  List<int> get apiSakuteki => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sakuteki')
  set apiSakuteki(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_lucky')
  List<int> get apiLucky => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_lucky')
  set apiLucky(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked')
  int get apiLocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked')
  set apiLocked(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked_equip')
  int get apiLockedEquip => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_locked_equip')
  set apiLockedEquip(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sally_area')
  int? get apiSallyArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sally_area')
  set apiSallyArea(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_ex')
  int? get apiSlotitemEx => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_ex')
  set apiSlotitemEx(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_level')
  int? get apiSlotitemLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slotitem_level')
  set apiSlotitemLevel(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberShipDeckApiDataApiShipDataEntityCopyWith<
          GetMemberShipDeckApiDataApiShipDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberShipDeckApiDataApiShipDataEntityCopyWith<$Res> {
  factory $GetMemberShipDeckApiDataApiShipDataEntityCopyWith(
          GetMemberShipDeckApiDataApiShipDataEntity value,
          $Res Function(GetMemberShipDeckApiDataApiShipDataEntity) then) =
      _$GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<$Res,
          GetMemberShipDeckApiDataApiShipDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_lv') int apiLv,
      @JsonKey(name: 'api_exp') List<int> apiExp,
      @JsonKey(name: 'api_nowhp') int apiNowhp,
      @JsonKey(name: 'api_maxhp') int apiMaxhp,
      @JsonKey(name: 'api_soku') int apiSoku,
      @JsonKey(name: 'api_leng') int apiLeng,
      @JsonKey(name: 'api_slot') List<int> apiSlot,
      @JsonKey(name: 'api_onslot') List<int> apiOnslot,
      @JsonKey(name: 'api_slot_ex') int apiSlotEx,
      @JsonKey(name: 'api_kyouka') List<int> apiKyouka,
      @JsonKey(name: 'api_backs') int apiBacks,
      @JsonKey(name: 'api_fuel') int apiFuel,
      @JsonKey(name: 'api_bull') int apiBull,
      @JsonKey(name: 'api_slotnum') int apiSlotnum,
      @JsonKey(name: 'api_ndock_time') int apiNdockTime,
      @JsonKey(name: 'api_ndock_item') List<int> apiNdockItem,
      @JsonKey(name: 'api_srate') int apiSrate,
      @JsonKey(name: 'api_cond') int apiCond,
      @JsonKey(name: 'api_karyoku') List<int> apiKaryoku,
      @JsonKey(name: 'api_raisou') List<int> apiRaisou,
      @JsonKey(name: 'api_taiku') List<int> apiTaiku,
      @JsonKey(name: 'api_soukou') List<int> apiSoukou,
      @JsonKey(name: 'api_kaihi') List<int> apiKaihi,
      @JsonKey(name: 'api_taisen') List<int> apiTaisen,
      @JsonKey(name: 'api_sakuteki') List<int> apiSakuteki,
      @JsonKey(name: 'api_lucky') List<int> apiLucky,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_locked_equip') int apiLockedEquip,
      @JsonKey(name: 'api_sally_area') int? apiSallyArea,
      @JsonKey(name: 'api_slotitem_ex') int? apiSlotitemEx,
      @JsonKey(name: 'api_slotitem_level') int? apiSlotitemLevel});
}

/// @nodoc
class _$GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberShipDeckApiDataApiShipDataEntity>
    implements $GetMemberShipDeckApiDataApiShipDataEntityCopyWith<$Res> {
  _$GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiShipId = null,
    Object? apiLv = null,
    Object? apiExp = null,
    Object? apiNowhp = null,
    Object? apiMaxhp = null,
    Object? apiSoku = null,
    Object? apiLeng = null,
    Object? apiSlot = null,
    Object? apiOnslot = null,
    Object? apiSlotEx = null,
    Object? apiKyouka = null,
    Object? apiBacks = null,
    Object? apiFuel = null,
    Object? apiBull = null,
    Object? apiSlotnum = null,
    Object? apiNdockTime = null,
    Object? apiNdockItem = null,
    Object? apiSrate = null,
    Object? apiCond = null,
    Object? apiKaryoku = null,
    Object? apiRaisou = null,
    Object? apiTaiku = null,
    Object? apiSoukou = null,
    Object? apiKaihi = null,
    Object? apiTaisen = null,
    Object? apiSakuteki = null,
    Object? apiLucky = null,
    Object? apiLocked = null,
    Object? apiLockedEquip = null,
    Object? apiSallyArea = freezed,
    Object? apiSlotitemEx = freezed,
    Object? apiSlotitemLevel = freezed,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiLv: null == apiLv
          ? _value.apiLv
          : apiLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiExp: null == apiExp
          ? _value.apiExp
          : apiExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiNowhp: null == apiNowhp
          ? _value.apiNowhp
          : apiNowhp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxhp: null == apiMaxhp
          ? _value.apiMaxhp
          : apiMaxhp // ignore: cast_nullable_to_non_nullable
              as int,
      apiSoku: null == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int,
      apiLeng: null == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlot: null == apiSlot
          ? _value.apiSlot
          : apiSlot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiOnslot: null == apiOnslot
          ? _value.apiOnslot
          : apiOnslot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSlotEx: null == apiSlotEx
          ? _value.apiSlotEx
          : apiSlotEx // ignore: cast_nullable_to_non_nullable
              as int,
      apiKyouka: null == apiKyouka
          ? _value.apiKyouka
          : apiKyouka // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiBacks: null == apiBacks
          ? _value.apiBacks
          : apiBacks // ignore: cast_nullable_to_non_nullable
              as int,
      apiFuel: null == apiFuel
          ? _value.apiFuel
          : apiFuel // ignore: cast_nullable_to_non_nullable
              as int,
      apiBull: null == apiBull
          ? _value.apiBull
          : apiBull // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlotnum: null == apiSlotnum
          ? _value.apiSlotnum
          : apiSlotnum // ignore: cast_nullable_to_non_nullable
              as int,
      apiNdockTime: null == apiNdockTime
          ? _value.apiNdockTime
          : apiNdockTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiNdockItem: null == apiNdockItem
          ? _value.apiNdockItem
          : apiNdockItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSrate: null == apiSrate
          ? _value.apiSrate
          : apiSrate // ignore: cast_nullable_to_non_nullable
              as int,
      apiCond: null == apiCond
          ? _value.apiCond
          : apiCond // ignore: cast_nullable_to_non_nullable
              as int,
      apiKaryoku: null == apiKaryoku
          ? _value.apiKaryoku
          : apiKaryoku // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiRaisou: null == apiRaisou
          ? _value.apiRaisou
          : apiRaisou // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaiku: null == apiTaiku
          ? _value.apiTaiku
          : apiTaiku // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSoukou: null == apiSoukou
          ? _value.apiSoukou
          : apiSoukou // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiKaihi: null == apiKaihi
          ? _value.apiKaihi
          : apiKaihi // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaisen: null == apiTaisen
          ? _value.apiTaisen
          : apiTaisen // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSakuteki: null == apiSakuteki
          ? _value.apiSakuteki
          : apiSakuteki // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiLucky: null == apiLucky
          ? _value.apiLucky
          : apiLucky // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiLocked: null == apiLocked
          ? _value.apiLocked
          : apiLocked // ignore: cast_nullable_to_non_nullable
              as int,
      apiLockedEquip: null == apiLockedEquip
          ? _value.apiLockedEquip
          : apiLockedEquip // ignore: cast_nullable_to_non_nullable
              as int,
      apiSallyArea: freezed == apiSallyArea
          ? _value.apiSallyArea
          : apiSallyArea // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotitemEx: freezed == apiSlotitemEx
          ? _value.apiSlotitemEx
          : apiSlotitemEx // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotitemLevel: freezed == apiSlotitemLevel
          ? _value.apiSlotitemLevel
          : apiSlotitemLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWith<$Res>
    implements $GetMemberShipDeckApiDataApiShipDataEntityCopyWith<$Res> {
  factory _$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWith(
          _$_GetMemberShipDeckApiDataApiShipDataEntity value,
          $Res Function(_$_GetMemberShipDeckApiDataApiShipDataEntity) then) =
      __$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_lv') int apiLv,
      @JsonKey(name: 'api_exp') List<int> apiExp,
      @JsonKey(name: 'api_nowhp') int apiNowhp,
      @JsonKey(name: 'api_maxhp') int apiMaxhp,
      @JsonKey(name: 'api_soku') int apiSoku,
      @JsonKey(name: 'api_leng') int apiLeng,
      @JsonKey(name: 'api_slot') List<int> apiSlot,
      @JsonKey(name: 'api_onslot') List<int> apiOnslot,
      @JsonKey(name: 'api_slot_ex') int apiSlotEx,
      @JsonKey(name: 'api_kyouka') List<int> apiKyouka,
      @JsonKey(name: 'api_backs') int apiBacks,
      @JsonKey(name: 'api_fuel') int apiFuel,
      @JsonKey(name: 'api_bull') int apiBull,
      @JsonKey(name: 'api_slotnum') int apiSlotnum,
      @JsonKey(name: 'api_ndock_time') int apiNdockTime,
      @JsonKey(name: 'api_ndock_item') List<int> apiNdockItem,
      @JsonKey(name: 'api_srate') int apiSrate,
      @JsonKey(name: 'api_cond') int apiCond,
      @JsonKey(name: 'api_karyoku') List<int> apiKaryoku,
      @JsonKey(name: 'api_raisou') List<int> apiRaisou,
      @JsonKey(name: 'api_taiku') List<int> apiTaiku,
      @JsonKey(name: 'api_soukou') List<int> apiSoukou,
      @JsonKey(name: 'api_kaihi') List<int> apiKaihi,
      @JsonKey(name: 'api_taisen') List<int> apiTaisen,
      @JsonKey(name: 'api_sakuteki') List<int> apiSakuteki,
      @JsonKey(name: 'api_lucky') List<int> apiLucky,
      @JsonKey(name: 'api_locked') int apiLocked,
      @JsonKey(name: 'api_locked_equip') int apiLockedEquip,
      @JsonKey(name: 'api_sally_area') int? apiSallyArea,
      @JsonKey(name: 'api_slotitem_ex') int? apiSlotitemEx,
      @JsonKey(name: 'api_slotitem_level') int? apiSlotitemLevel});
}

/// @nodoc
class __$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<$Res>
    extends _$GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<$Res,
        _$_GetMemberShipDeckApiDataApiShipDataEntity>
    implements _$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWith<$Res> {
  __$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl(
      _$_GetMemberShipDeckApiDataApiShipDataEntity _value,
      $Res Function(_$_GetMemberShipDeckApiDataApiShipDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiShipId = null,
    Object? apiLv = null,
    Object? apiExp = null,
    Object? apiNowhp = null,
    Object? apiMaxhp = null,
    Object? apiSoku = null,
    Object? apiLeng = null,
    Object? apiSlot = null,
    Object? apiOnslot = null,
    Object? apiSlotEx = null,
    Object? apiKyouka = null,
    Object? apiBacks = null,
    Object? apiFuel = null,
    Object? apiBull = null,
    Object? apiSlotnum = null,
    Object? apiNdockTime = null,
    Object? apiNdockItem = null,
    Object? apiSrate = null,
    Object? apiCond = null,
    Object? apiKaryoku = null,
    Object? apiRaisou = null,
    Object? apiTaiku = null,
    Object? apiSoukou = null,
    Object? apiKaihi = null,
    Object? apiTaisen = null,
    Object? apiSakuteki = null,
    Object? apiLucky = null,
    Object? apiLocked = null,
    Object? apiLockedEquip = null,
    Object? apiSallyArea = freezed,
    Object? apiSlotitemEx = freezed,
    Object? apiSlotitemLevel = freezed,
  }) {
    return _then(_$_GetMemberShipDeckApiDataApiShipDataEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiLv: null == apiLv
          ? _value.apiLv
          : apiLv // ignore: cast_nullable_to_non_nullable
              as int,
      apiExp: null == apiExp
          ? _value.apiExp
          : apiExp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiNowhp: null == apiNowhp
          ? _value.apiNowhp
          : apiNowhp // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxhp: null == apiMaxhp
          ? _value.apiMaxhp
          : apiMaxhp // ignore: cast_nullable_to_non_nullable
              as int,
      apiSoku: null == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int,
      apiLeng: null == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlot: null == apiSlot
          ? _value.apiSlot
          : apiSlot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiOnslot: null == apiOnslot
          ? _value.apiOnslot
          : apiOnslot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSlotEx: null == apiSlotEx
          ? _value.apiSlotEx
          : apiSlotEx // ignore: cast_nullable_to_non_nullable
              as int,
      apiKyouka: null == apiKyouka
          ? _value.apiKyouka
          : apiKyouka // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiBacks: null == apiBacks
          ? _value.apiBacks
          : apiBacks // ignore: cast_nullable_to_non_nullable
              as int,
      apiFuel: null == apiFuel
          ? _value.apiFuel
          : apiFuel // ignore: cast_nullable_to_non_nullable
              as int,
      apiBull: null == apiBull
          ? _value.apiBull
          : apiBull // ignore: cast_nullable_to_non_nullable
              as int,
      apiSlotnum: null == apiSlotnum
          ? _value.apiSlotnum
          : apiSlotnum // ignore: cast_nullable_to_non_nullable
              as int,
      apiNdockTime: null == apiNdockTime
          ? _value.apiNdockTime
          : apiNdockTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiNdockItem: null == apiNdockItem
          ? _value.apiNdockItem
          : apiNdockItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSrate: null == apiSrate
          ? _value.apiSrate
          : apiSrate // ignore: cast_nullable_to_non_nullable
              as int,
      apiCond: null == apiCond
          ? _value.apiCond
          : apiCond // ignore: cast_nullable_to_non_nullable
              as int,
      apiKaryoku: null == apiKaryoku
          ? _value.apiKaryoku
          : apiKaryoku // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiRaisou: null == apiRaisou
          ? _value.apiRaisou
          : apiRaisou // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaiku: null == apiTaiku
          ? _value.apiTaiku
          : apiTaiku // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSoukou: null == apiSoukou
          ? _value.apiSoukou
          : apiSoukou // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiKaihi: null == apiKaihi
          ? _value.apiKaihi
          : apiKaihi // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaisen: null == apiTaisen
          ? _value.apiTaisen
          : apiTaisen // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiSakuteki: null == apiSakuteki
          ? _value.apiSakuteki
          : apiSakuteki // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiLucky: null == apiLucky
          ? _value.apiLucky
          : apiLucky // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiLocked: null == apiLocked
          ? _value.apiLocked
          : apiLocked // ignore: cast_nullable_to_non_nullable
              as int,
      apiLockedEquip: null == apiLockedEquip
          ? _value.apiLockedEquip
          : apiLockedEquip // ignore: cast_nullable_to_non_nullable
              as int,
      apiSallyArea: freezed == apiSallyArea
          ? _value.apiSallyArea
          : apiSallyArea // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotitemEx: freezed == apiSlotitemEx
          ? _value.apiSlotitemEx
          : apiSlotitemEx // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotitemLevel: freezed == apiSlotitemLevel
          ? _value.apiSlotitemLevel
          : apiSlotitemLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMemberShipDeckApiDataApiShipDataEntity
    implements _GetMemberShipDeckApiDataApiShipDataEntity {
  _$_GetMemberShipDeckApiDataApiShipDataEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_sortno') required this.apiSortno,
      @JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_lv') required this.apiLv,
      @JsonKey(name: 'api_exp') required this.apiExp,
      @JsonKey(name: 'api_nowhp') required this.apiNowhp,
      @JsonKey(name: 'api_maxhp') required this.apiMaxhp,
      @JsonKey(name: 'api_soku') required this.apiSoku,
      @JsonKey(name: 'api_leng') required this.apiLeng,
      @JsonKey(name: 'api_slot') required this.apiSlot,
      @JsonKey(name: 'api_onslot') required this.apiOnslot,
      @JsonKey(name: 'api_slot_ex') required this.apiSlotEx,
      @JsonKey(name: 'api_kyouka') required this.apiKyouka,
      @JsonKey(name: 'api_backs') required this.apiBacks,
      @JsonKey(name: 'api_fuel') required this.apiFuel,
      @JsonKey(name: 'api_bull') required this.apiBull,
      @JsonKey(name: 'api_slotnum') required this.apiSlotnum,
      @JsonKey(name: 'api_ndock_time') required this.apiNdockTime,
      @JsonKey(name: 'api_ndock_item') required this.apiNdockItem,
      @JsonKey(name: 'api_srate') required this.apiSrate,
      @JsonKey(name: 'api_cond') required this.apiCond,
      @JsonKey(name: 'api_karyoku') required this.apiKaryoku,
      @JsonKey(name: 'api_raisou') required this.apiRaisou,
      @JsonKey(name: 'api_taiku') required this.apiTaiku,
      @JsonKey(name: 'api_soukou') required this.apiSoukou,
      @JsonKey(name: 'api_kaihi') required this.apiKaihi,
      @JsonKey(name: 'api_taisen') required this.apiTaisen,
      @JsonKey(name: 'api_sakuteki') required this.apiSakuteki,
      @JsonKey(name: 'api_lucky') required this.apiLucky,
      @JsonKey(name: 'api_locked') required this.apiLocked,
      @JsonKey(name: 'api_locked_equip') required this.apiLockedEquip,
      @JsonKey(name: 'api_sally_area') this.apiSallyArea,
      @JsonKey(name: 'api_slotitem_ex') this.apiSlotitemEx,
      @JsonKey(name: 'api_slotitem_level') this.apiSlotitemLevel});

  factory _$_GetMemberShipDeckApiDataApiShipDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberShipDeckApiDataApiShipDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_sortno')
  int apiSortno;
  @override
  @JsonKey(name: 'api_ship_id')
  int apiShipId;
  @override
  @JsonKey(name: 'api_lv')
  int apiLv;
  @override
  @JsonKey(name: 'api_exp')
  List<int> apiExp;
  @override
  @JsonKey(name: 'api_nowhp')
  int apiNowhp;
  @override
  @JsonKey(name: 'api_maxhp')
  int apiMaxhp;
  @override
  @JsonKey(name: 'api_soku')
  int apiSoku;
  @override
  @JsonKey(name: 'api_leng')
  int apiLeng;
  @override
  @JsonKey(name: 'api_slot')
  List<int> apiSlot;
  @override
  @JsonKey(name: 'api_onslot')
  List<int> apiOnslot;
  @override
  @JsonKey(name: 'api_slot_ex')
  int apiSlotEx;
  @override
  @JsonKey(name: 'api_kyouka')
  List<int> apiKyouka;
  @override
  @JsonKey(name: 'api_backs')
  int apiBacks;
  @override
  @JsonKey(name: 'api_fuel')
  int apiFuel;
  @override
  @JsonKey(name: 'api_bull')
  int apiBull;
  @override
  @JsonKey(name: 'api_slotnum')
  int apiSlotnum;
  @override
  @JsonKey(name: 'api_ndock_time')
  int apiNdockTime;
  @override
  @JsonKey(name: 'api_ndock_item')
  List<int> apiNdockItem;
  @override
  @JsonKey(name: 'api_srate')
  int apiSrate;
  @override
  @JsonKey(name: 'api_cond')
  int apiCond;
  @override
  @JsonKey(name: 'api_karyoku')
  List<int> apiKaryoku;
  @override
  @JsonKey(name: 'api_raisou')
  List<int> apiRaisou;
  @override
  @JsonKey(name: 'api_taiku')
  List<int> apiTaiku;
  @override
  @JsonKey(name: 'api_soukou')
  List<int> apiSoukou;
  @override
  @JsonKey(name: 'api_kaihi')
  List<int> apiKaihi;
  @override
  @JsonKey(name: 'api_taisen')
  List<int> apiTaisen;
  @override
  @JsonKey(name: 'api_sakuteki')
  List<int> apiSakuteki;
  @override
  @JsonKey(name: 'api_lucky')
  List<int> apiLucky;
  @override
  @JsonKey(name: 'api_locked')
  int apiLocked;
  @override
  @JsonKey(name: 'api_locked_equip')
  int apiLockedEquip;
  @override
  @JsonKey(name: 'api_sally_area')
  int? apiSallyArea;
  @override
  @JsonKey(name: 'api_slotitem_ex')
  int? apiSlotitemEx;
  @override
  @JsonKey(name: 'api_slotitem_level')
  int? apiSlotitemLevel;

  @override
  String toString() {
    return 'GetMemberShipDeckApiDataApiShipDataEntity(apiId: $apiId, apiSortno: $apiSortno, apiShipId: $apiShipId, apiLv: $apiLv, apiExp: $apiExp, apiNowhp: $apiNowhp, apiMaxhp: $apiMaxhp, apiSoku: $apiSoku, apiLeng: $apiLeng, apiSlot: $apiSlot, apiOnslot: $apiOnslot, apiSlotEx: $apiSlotEx, apiKyouka: $apiKyouka, apiBacks: $apiBacks, apiFuel: $apiFuel, apiBull: $apiBull, apiSlotnum: $apiSlotnum, apiNdockTime: $apiNdockTime, apiNdockItem: $apiNdockItem, apiSrate: $apiSrate, apiCond: $apiCond, apiKaryoku: $apiKaryoku, apiRaisou: $apiRaisou, apiTaiku: $apiTaiku, apiSoukou: $apiSoukou, apiKaihi: $apiKaihi, apiTaisen: $apiTaisen, apiSakuteki: $apiSakuteki, apiLucky: $apiLucky, apiLocked: $apiLocked, apiLockedEquip: $apiLockedEquip, apiSallyArea: $apiSallyArea, apiSlotitemEx: $apiSlotitemEx, apiSlotitemLevel: $apiSlotitemLevel)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWith<
          _$_GetMemberShipDeckApiDataApiShipDataEntity>
      get copyWith =>
          __$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWithImpl<
              _$_GetMemberShipDeckApiDataApiShipDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberShipDeckApiDataApiShipDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberShipDeckApiDataApiShipDataEntity
    implements GetMemberShipDeckApiDataApiShipDataEntity {
  factory _GetMemberShipDeckApiDataApiShipDataEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_sortno') required int apiSortno,
          @JsonKey(name: 'api_ship_id') required int apiShipId,
          @JsonKey(name: 'api_lv') required int apiLv,
          @JsonKey(name: 'api_exp') required List<int> apiExp,
          @JsonKey(name: 'api_nowhp') required int apiNowhp,
          @JsonKey(name: 'api_maxhp') required int apiMaxhp,
          @JsonKey(name: 'api_soku') required int apiSoku,
          @JsonKey(name: 'api_leng') required int apiLeng,
          @JsonKey(name: 'api_slot') required List<int> apiSlot,
          @JsonKey(name: 'api_onslot') required List<int> apiOnslot,
          @JsonKey(name: 'api_slot_ex') required int apiSlotEx,
          @JsonKey(name: 'api_kyouka') required List<int> apiKyouka,
          @JsonKey(name: 'api_backs') required int apiBacks,
          @JsonKey(name: 'api_fuel') required int apiFuel,
          @JsonKey(name: 'api_bull') required int apiBull,
          @JsonKey(name: 'api_slotnum') required int apiSlotnum,
          @JsonKey(name: 'api_ndock_time') required int apiNdockTime,
          @JsonKey(name: 'api_ndock_item') required List<int> apiNdockItem,
          @JsonKey(name: 'api_srate') required int apiSrate,
          @JsonKey(name: 'api_cond') required int apiCond,
          @JsonKey(name: 'api_karyoku') required List<int> apiKaryoku,
          @JsonKey(name: 'api_raisou') required List<int> apiRaisou,
          @JsonKey(name: 'api_taiku') required List<int> apiTaiku,
          @JsonKey(name: 'api_soukou') required List<int> apiSoukou,
          @JsonKey(name: 'api_kaihi') required List<int> apiKaihi,
          @JsonKey(name: 'api_taisen') required List<int> apiTaisen,
          @JsonKey(name: 'api_sakuteki') required List<int> apiSakuteki,
          @JsonKey(name: 'api_lucky') required List<int> apiLucky,
          @JsonKey(name: 'api_locked') required int apiLocked,
          @JsonKey(name: 'api_locked_equip') required int apiLockedEquip,
          @JsonKey(name: 'api_sally_area') int? apiSallyArea,
          @JsonKey(name: 'api_slotitem_ex') int? apiSlotitemEx,
          @JsonKey(name: 'api_slotitem_level') int? apiSlotitemLevel}) =
      _$_GetMemberShipDeckApiDataApiShipDataEntity;

  factory _GetMemberShipDeckApiDataApiShipDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberShipDeckApiDataApiShipDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_sortno')
  int get apiSortno;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value);
  @override
  @JsonKey(name: 'api_ship_id')
  int get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value);
  @override
  @JsonKey(name: 'api_lv')
  int get apiLv;
  @JsonKey(name: 'api_lv')
  set apiLv(int value);
  @override
  @JsonKey(name: 'api_exp')
  List<int> get apiExp;
  @JsonKey(name: 'api_exp')
  set apiExp(List<int> value);
  @override
  @JsonKey(name: 'api_nowhp')
  int get apiNowhp;
  @JsonKey(name: 'api_nowhp')
  set apiNowhp(int value);
  @override
  @JsonKey(name: 'api_maxhp')
  int get apiMaxhp;
  @JsonKey(name: 'api_maxhp')
  set apiMaxhp(int value);
  @override
  @JsonKey(name: 'api_soku')
  int get apiSoku;
  @JsonKey(name: 'api_soku')
  set apiSoku(int value);
  @override
  @JsonKey(name: 'api_leng')
  int get apiLeng;
  @JsonKey(name: 'api_leng')
  set apiLeng(int value);
  @override
  @JsonKey(name: 'api_slot')
  List<int> get apiSlot;
  @JsonKey(name: 'api_slot')
  set apiSlot(List<int> value);
  @override
  @JsonKey(name: 'api_onslot')
  List<int> get apiOnslot;
  @JsonKey(name: 'api_onslot')
  set apiOnslot(List<int> value);
  @override
  @JsonKey(name: 'api_slot_ex')
  int get apiSlotEx;
  @JsonKey(name: 'api_slot_ex')
  set apiSlotEx(int value);
  @override
  @JsonKey(name: 'api_kyouka')
  List<int> get apiKyouka;
  @JsonKey(name: 'api_kyouka')
  set apiKyouka(List<int> value);
  @override
  @JsonKey(name: 'api_backs')
  int get apiBacks;
  @JsonKey(name: 'api_backs')
  set apiBacks(int value);
  @override
  @JsonKey(name: 'api_fuel')
  int get apiFuel;
  @JsonKey(name: 'api_fuel')
  set apiFuel(int value);
  @override
  @JsonKey(name: 'api_bull')
  int get apiBull;
  @JsonKey(name: 'api_bull')
  set apiBull(int value);
  @override
  @JsonKey(name: 'api_slotnum')
  int get apiSlotnum;
  @JsonKey(name: 'api_slotnum')
  set apiSlotnum(int value);
  @override
  @JsonKey(name: 'api_ndock_time')
  int get apiNdockTime;
  @JsonKey(name: 'api_ndock_time')
  set apiNdockTime(int value);
  @override
  @JsonKey(name: 'api_ndock_item')
  List<int> get apiNdockItem;
  @JsonKey(name: 'api_ndock_item')
  set apiNdockItem(List<int> value);
  @override
  @JsonKey(name: 'api_srate')
  int get apiSrate;
  @JsonKey(name: 'api_srate')
  set apiSrate(int value);
  @override
  @JsonKey(name: 'api_cond')
  int get apiCond;
  @JsonKey(name: 'api_cond')
  set apiCond(int value);
  @override
  @JsonKey(name: 'api_karyoku')
  List<int> get apiKaryoku;
  @JsonKey(name: 'api_karyoku')
  set apiKaryoku(List<int> value);
  @override
  @JsonKey(name: 'api_raisou')
  List<int> get apiRaisou;
  @JsonKey(name: 'api_raisou')
  set apiRaisou(List<int> value);
  @override
  @JsonKey(name: 'api_taiku')
  List<int> get apiTaiku;
  @JsonKey(name: 'api_taiku')
  set apiTaiku(List<int> value);
  @override
  @JsonKey(name: 'api_soukou')
  List<int> get apiSoukou;
  @JsonKey(name: 'api_soukou')
  set apiSoukou(List<int> value);
  @override
  @JsonKey(name: 'api_kaihi')
  List<int> get apiKaihi;
  @JsonKey(name: 'api_kaihi')
  set apiKaihi(List<int> value);
  @override
  @JsonKey(name: 'api_taisen')
  List<int> get apiTaisen;
  @JsonKey(name: 'api_taisen')
  set apiTaisen(List<int> value);
  @override
  @JsonKey(name: 'api_sakuteki')
  List<int> get apiSakuteki;
  @JsonKey(name: 'api_sakuteki')
  set apiSakuteki(List<int> value);
  @override
  @JsonKey(name: 'api_lucky')
  List<int> get apiLucky;
  @JsonKey(name: 'api_lucky')
  set apiLucky(List<int> value);
  @override
  @JsonKey(name: 'api_locked')
  int get apiLocked;
  @JsonKey(name: 'api_locked')
  set apiLocked(int value);
  @override
  @JsonKey(name: 'api_locked_equip')
  int get apiLockedEquip;
  @JsonKey(name: 'api_locked_equip')
  set apiLockedEquip(int value);
  @override
  @JsonKey(name: 'api_sally_area')
  int? get apiSallyArea;
  @JsonKey(name: 'api_sally_area')
  set apiSallyArea(int? value);
  @override
  @JsonKey(name: 'api_slotitem_ex')
  int? get apiSlotitemEx;
  @JsonKey(name: 'api_slotitem_ex')
  set apiSlotitemEx(int? value);
  @override
  @JsonKey(name: 'api_slotitem_level')
  int? get apiSlotitemLevel;
  @JsonKey(name: 'api_slotitem_level')
  set apiSlotitemLevel(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberShipDeckApiDataApiShipDataEntityCopyWith<
          _$_GetMemberShipDeckApiDataApiShipDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetMemberShipDeckApiDataApiDeckDataEntity
    _$GetMemberShipDeckApiDataApiDeckDataEntityFromJson(
        Map<String, dynamic> json) {
  return _GetMemberShipDeckApiDataApiDeckDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMemberShipDeckApiDataApiDeckDataEntity {
  @JsonKey(name: 'api_member_id')
  int get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name_id')
  String get apiNameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name_id')
  set apiNameId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission')
  List<int> get apiMission => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_flagship')
  String get apiFlagship => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_flagship')
  set apiFlagship(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  List<int> get apiShip => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  set apiShip(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<
          GetMemberShipDeckApiDataApiDeckDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<$Res> {
  factory $GetMemberShipDeckApiDataApiDeckDataEntityCopyWith(
          GetMemberShipDeckApiDataApiDeckDataEntity value,
          $Res Function(GetMemberShipDeckApiDataApiDeckDataEntity) then) =
      _$GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<$Res,
          GetMemberShipDeckApiDataApiDeckDataEntity>;
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
class _$GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<$Res,
        $Val extends GetMemberShipDeckApiDataApiDeckDataEntity>
    implements $GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<$Res> {
  _$GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl(
      this._value, this._then);

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
abstract class _$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<$Res>
    implements $GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<$Res> {
  factory _$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWith(
          _$_GetMemberShipDeckApiDataApiDeckDataEntity value,
          $Res Function(_$_GetMemberShipDeckApiDataApiDeckDataEntity) then) =
      __$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<$Res>;
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
class __$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<$Res>
    extends _$GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<$Res,
        _$_GetMemberShipDeckApiDataApiDeckDataEntity>
    implements _$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<$Res> {
  __$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl(
      _$_GetMemberShipDeckApiDataApiDeckDataEntity _value,
      $Res Function(_$_GetMemberShipDeckApiDataApiDeckDataEntity) _then)
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
    return _then(_$_GetMemberShipDeckApiDataApiDeckDataEntity(
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
class _$_GetMemberShipDeckApiDataApiDeckDataEntity
    implements _GetMemberShipDeckApiDataApiDeckDataEntity {
  _$_GetMemberShipDeckApiDataApiDeckDataEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_name_id') required this.apiNameId,
      @JsonKey(name: 'api_mission') required this.apiMission,
      @JsonKey(name: 'api_flagship') required this.apiFlagship,
      @JsonKey(name: 'api_ship') required this.apiShip});

  factory _$_GetMemberShipDeckApiDataApiDeckDataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetMemberShipDeckApiDataApiDeckDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  int apiMemberId;
  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_name_id')
  String apiNameId;
  @override
  @JsonKey(name: 'api_mission')
  List<int> apiMission;
  @override
  @JsonKey(name: 'api_flagship')
  String apiFlagship;
  @override
  @JsonKey(name: 'api_ship')
  List<int> apiShip;

  @override
  String toString() {
    return 'GetMemberShipDeckApiDataApiDeckDataEntity(apiMemberId: $apiMemberId, apiId: $apiId, apiName: $apiName, apiNameId: $apiNameId, apiMission: $apiMission, apiFlagship: $apiFlagship, apiShip: $apiShip)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<
          _$_GetMemberShipDeckApiDataApiDeckDataEntity>
      get copyWith =>
          __$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWithImpl<
              _$_GetMemberShipDeckApiDataApiDeckDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMemberShipDeckApiDataApiDeckDataEntityToJson(
      this,
    );
  }
}

abstract class _GetMemberShipDeckApiDataApiDeckDataEntity
    implements GetMemberShipDeckApiDataApiDeckDataEntity {
  factory _GetMemberShipDeckApiDataApiDeckDataEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_name_id') required String apiNameId,
          @JsonKey(name: 'api_mission') required List<int> apiMission,
          @JsonKey(name: 'api_flagship') required String apiFlagship,
          @JsonKey(name: 'api_ship') required List<int> apiShip}) =
      _$_GetMemberShipDeckApiDataApiDeckDataEntity;

  factory _GetMemberShipDeckApiDataApiDeckDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetMemberShipDeckApiDataApiDeckDataEntity.fromJson;

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
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_name_id')
  String get apiNameId;
  @JsonKey(name: 'api_name_id')
  set apiNameId(String value);
  @override
  @JsonKey(name: 'api_mission')
  List<int> get apiMission;
  @JsonKey(name: 'api_mission')
  set apiMission(List<int> value);
  @override
  @JsonKey(name: 'api_flagship')
  String get apiFlagship;
  @JsonKey(name: 'api_flagship')
  set apiFlagship(String value);
  @override
  @JsonKey(name: 'api_ship')
  List<int> get apiShip;
  @JsonKey(name: 'api_ship')
  set apiShip(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetMemberShipDeckApiDataApiDeckDataEntityCopyWith<
          _$_GetMemberShipDeckApiDataApiDeckDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}
