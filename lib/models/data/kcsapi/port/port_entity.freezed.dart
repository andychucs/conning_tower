// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'port_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortEntity _$PortEntityFromJson(Map<String, dynamic> json) {
  return _PortEntity.fromJson(json);
}

/// @nodoc
mixin _$PortEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  PortApiDataEntity get apiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(PortApiDataEntity value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortEntityCopyWith<PortEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortEntityCopyWith<$Res> {
  factory $PortEntityCopyWith(
          PortEntity value, $Res Function(PortEntity) then) =
      _$PortEntityCopyWithImpl<$Res, PortEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') PortApiDataEntity apiData});

  $PortApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$PortEntityCopyWithImpl<$Res, $Val extends PortEntity>
    implements $PortEntityCopyWith<$Res> {
  _$PortEntityCopyWithImpl(this._value, this._then);

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
              as PortApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PortApiDataEntityCopyWith<$Res> get apiData {
    return $PortApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PortEntityCopyWith<$Res>
    implements $PortEntityCopyWith<$Res> {
  factory _$$_PortEntityCopyWith(
          _$_PortEntity value, $Res Function(_$_PortEntity) then) =
      __$$_PortEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') PortApiDataEntity apiData});

  @override
  $PortApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_PortEntityCopyWithImpl<$Res>
    extends _$PortEntityCopyWithImpl<$Res, _$_PortEntity>
    implements _$$_PortEntityCopyWith<$Res> {
  __$$_PortEntityCopyWithImpl(
      _$_PortEntity _value, $Res Function(_$_PortEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_PortEntity(
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
              as PortApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortEntity implements _PortEntity {
  _$_PortEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_PortEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  PortApiDataEntity apiData;

  @override
  String toString() {
    return 'PortEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortEntityCopyWith<_$_PortEntity> get copyWith =>
      __$$_PortEntityCopyWithImpl<_$_PortEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortEntityToJson(
      this,
    );
  }
}

abstract class _PortEntity implements PortEntity {
  factory _PortEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data') required PortApiDataEntity apiData}) =
      _$_PortEntity;

  factory _PortEntity.fromJson(Map<String, dynamic> json) =
      _$_PortEntity.fromJson;

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
  PortApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(PortApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_PortEntityCopyWith<_$_PortEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PortApiDataEntity _$PortApiDataEntityFromJson(Map<String, dynamic> json) {
  return _PortApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataEntity {
  @JsonKey(name: 'api_event_object')
  PortApiDataApiEventObjectEntity get apiEventObject =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_event_object')
  set apiEventObject(PortApiDataApiEventObjectEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_material')
  List<PortApiDataApiMaterialEntity> get apiMaterial =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_material')
  set apiMaterial(List<PortApiDataApiMaterialEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_port')
  List<PortApiDataApiDeckPortEntity> get apiDeckPort =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_port')
  set apiDeckPort(List<PortApiDataApiDeckPortEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock')
  List<PortApiDataApiNdockEntity> get apiNdock =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ndock')
  set apiNdock(List<PortApiDataApiNdockEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  List<PortApiDataApiShipEntity> get apiShip =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship')
  set apiShip(List<PortApiDataApiShipEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_basic')
  PortApiDataApiBasicEntity get apiBasic => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_basic')
  set apiBasic(PortApiDataApiBasicEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_log')
  List<PortApiDataApiLogEntity> get apiLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_log')
  set apiLog(List<PortApiDataApiLogEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_combined_flag')
  int get apiCombinedFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_combined_flag')
  set apiCombinedFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_p_bgm_id')
  int get apiPBgmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_p_bgm_id')
  set apiPBgmId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_parallel_quest_count')
  int get apiParallelQuestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_parallel_quest_count')
  set apiParallelQuestCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dest_ship_slot')
  int get apiDestShipSlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dest_ship_slot')
  set apiDestShipSlot(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_c_flags')
  List<int> get apiCFlags => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_c_flags')
  set apiCFlags(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataEntityCopyWith<PortApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataEntityCopyWith<$Res> {
  factory $PortApiDataEntityCopyWith(
          PortApiDataEntity value, $Res Function(PortApiDataEntity) then) =
      _$PortApiDataEntityCopyWithImpl<$Res, PortApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_event_object')
      PortApiDataApiEventObjectEntity apiEventObject,
      @JsonKey(name: 'api_material')
      List<PortApiDataApiMaterialEntity> apiMaterial,
      @JsonKey(name: 'api_deck_port')
      List<PortApiDataApiDeckPortEntity> apiDeckPort,
      @JsonKey(name: 'api_ndock') List<PortApiDataApiNdockEntity> apiNdock,
      @JsonKey(name: 'api_ship') List<PortApiDataApiShipEntity> apiShip,
      @JsonKey(name: 'api_basic') PortApiDataApiBasicEntity apiBasic,
      @JsonKey(name: 'api_log') List<PortApiDataApiLogEntity> apiLog,
      @JsonKey(name: 'api_combined_flag') int apiCombinedFlag,
      @JsonKey(name: 'api_p_bgm_id') int apiPBgmId,
      @JsonKey(name: 'api_parallel_quest_count') int apiParallelQuestCount,
      @JsonKey(name: 'api_dest_ship_slot') int apiDestShipSlot,
      @JsonKey(name: 'api_c_flags') List<int> apiCFlags});

  $PortApiDataApiEventObjectEntityCopyWith<$Res> get apiEventObject;
  $PortApiDataApiBasicEntityCopyWith<$Res> get apiBasic;
}

/// @nodoc
class _$PortApiDataEntityCopyWithImpl<$Res, $Val extends PortApiDataEntity>
    implements $PortApiDataEntityCopyWith<$Res> {
  _$PortApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiEventObject = null,
    Object? apiMaterial = null,
    Object? apiDeckPort = null,
    Object? apiNdock = null,
    Object? apiShip = null,
    Object? apiBasic = null,
    Object? apiLog = null,
    Object? apiCombinedFlag = null,
    Object? apiPBgmId = null,
    Object? apiParallelQuestCount = null,
    Object? apiDestShipSlot = null,
    Object? apiCFlags = null,
  }) {
    return _then(_value.copyWith(
      apiEventObject: null == apiEventObject
          ? _value.apiEventObject
          : apiEventObject // ignore: cast_nullable_to_non_nullable
              as PortApiDataApiEventObjectEntity,
      apiMaterial: null == apiMaterial
          ? _value.apiMaterial
          : apiMaterial // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiMaterialEntity>,
      apiDeckPort: null == apiDeckPort
          ? _value.apiDeckPort
          : apiDeckPort // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiDeckPortEntity>,
      apiNdock: null == apiNdock
          ? _value.apiNdock
          : apiNdock // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiNdockEntity>,
      apiShip: null == apiShip
          ? _value.apiShip
          : apiShip // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiShipEntity>,
      apiBasic: null == apiBasic
          ? _value.apiBasic
          : apiBasic // ignore: cast_nullable_to_non_nullable
              as PortApiDataApiBasicEntity,
      apiLog: null == apiLog
          ? _value.apiLog
          : apiLog // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiLogEntity>,
      apiCombinedFlag: null == apiCombinedFlag
          ? _value.apiCombinedFlag
          : apiCombinedFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiPBgmId: null == apiPBgmId
          ? _value.apiPBgmId
          : apiPBgmId // ignore: cast_nullable_to_non_nullable
              as int,
      apiParallelQuestCount: null == apiParallelQuestCount
          ? _value.apiParallelQuestCount
          : apiParallelQuestCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiDestShipSlot: null == apiDestShipSlot
          ? _value.apiDestShipSlot
          : apiDestShipSlot // ignore: cast_nullable_to_non_nullable
              as int,
      apiCFlags: null == apiCFlags
          ? _value.apiCFlags
          : apiCFlags // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PortApiDataApiEventObjectEntityCopyWith<$Res> get apiEventObject {
    return $PortApiDataApiEventObjectEntityCopyWith<$Res>(_value.apiEventObject,
        (value) {
      return _then(_value.copyWith(apiEventObject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PortApiDataApiBasicEntityCopyWith<$Res> get apiBasic {
    return $PortApiDataApiBasicEntityCopyWith<$Res>(_value.apiBasic, (value) {
      return _then(_value.copyWith(apiBasic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PortApiDataEntityCopyWith<$Res>
    implements $PortApiDataEntityCopyWith<$Res> {
  factory _$$_PortApiDataEntityCopyWith(_$_PortApiDataEntity value,
          $Res Function(_$_PortApiDataEntity) then) =
      __$$_PortApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_event_object')
      PortApiDataApiEventObjectEntity apiEventObject,
      @JsonKey(name: 'api_material')
      List<PortApiDataApiMaterialEntity> apiMaterial,
      @JsonKey(name: 'api_deck_port')
      List<PortApiDataApiDeckPortEntity> apiDeckPort,
      @JsonKey(name: 'api_ndock') List<PortApiDataApiNdockEntity> apiNdock,
      @JsonKey(name: 'api_ship') List<PortApiDataApiShipEntity> apiShip,
      @JsonKey(name: 'api_basic') PortApiDataApiBasicEntity apiBasic,
      @JsonKey(name: 'api_log') List<PortApiDataApiLogEntity> apiLog,
      @JsonKey(name: 'api_combined_flag') int apiCombinedFlag,
      @JsonKey(name: 'api_p_bgm_id') int apiPBgmId,
      @JsonKey(name: 'api_parallel_quest_count') int apiParallelQuestCount,
      @JsonKey(name: 'api_dest_ship_slot') int apiDestShipSlot,
      @JsonKey(name: 'api_c_flags') List<int> apiCFlags});

  @override
  $PortApiDataApiEventObjectEntityCopyWith<$Res> get apiEventObject;
  @override
  $PortApiDataApiBasicEntityCopyWith<$Res> get apiBasic;
}

/// @nodoc
class __$$_PortApiDataEntityCopyWithImpl<$Res>
    extends _$PortApiDataEntityCopyWithImpl<$Res, _$_PortApiDataEntity>
    implements _$$_PortApiDataEntityCopyWith<$Res> {
  __$$_PortApiDataEntityCopyWithImpl(
      _$_PortApiDataEntity _value, $Res Function(_$_PortApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiEventObject = null,
    Object? apiMaterial = null,
    Object? apiDeckPort = null,
    Object? apiNdock = null,
    Object? apiShip = null,
    Object? apiBasic = null,
    Object? apiLog = null,
    Object? apiCombinedFlag = null,
    Object? apiPBgmId = null,
    Object? apiParallelQuestCount = null,
    Object? apiDestShipSlot = null,
    Object? apiCFlags = null,
  }) {
    return _then(_$_PortApiDataEntity(
      apiEventObject: null == apiEventObject
          ? _value.apiEventObject
          : apiEventObject // ignore: cast_nullable_to_non_nullable
              as PortApiDataApiEventObjectEntity,
      apiMaterial: null == apiMaterial
          ? _value.apiMaterial
          : apiMaterial // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiMaterialEntity>,
      apiDeckPort: null == apiDeckPort
          ? _value.apiDeckPort
          : apiDeckPort // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiDeckPortEntity>,
      apiNdock: null == apiNdock
          ? _value.apiNdock
          : apiNdock // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiNdockEntity>,
      apiShip: null == apiShip
          ? _value.apiShip
          : apiShip // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiShipEntity>,
      apiBasic: null == apiBasic
          ? _value.apiBasic
          : apiBasic // ignore: cast_nullable_to_non_nullable
              as PortApiDataApiBasicEntity,
      apiLog: null == apiLog
          ? _value.apiLog
          : apiLog // ignore: cast_nullable_to_non_nullable
              as List<PortApiDataApiLogEntity>,
      apiCombinedFlag: null == apiCombinedFlag
          ? _value.apiCombinedFlag
          : apiCombinedFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiPBgmId: null == apiPBgmId
          ? _value.apiPBgmId
          : apiPBgmId // ignore: cast_nullable_to_non_nullable
              as int,
      apiParallelQuestCount: null == apiParallelQuestCount
          ? _value.apiParallelQuestCount
          : apiParallelQuestCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiDestShipSlot: null == apiDestShipSlot
          ? _value.apiDestShipSlot
          : apiDestShipSlot // ignore: cast_nullable_to_non_nullable
              as int,
      apiCFlags: null == apiCFlags
          ? _value.apiCFlags
          : apiCFlags // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataEntity implements _PortApiDataEntity {
  _$_PortApiDataEntity(
      {@JsonKey(name: 'api_event_object') required this.apiEventObject,
      @JsonKey(name: 'api_material') required this.apiMaterial,
      @JsonKey(name: 'api_deck_port') required this.apiDeckPort,
      @JsonKey(name: 'api_ndock') required this.apiNdock,
      @JsonKey(name: 'api_ship') required this.apiShip,
      @JsonKey(name: 'api_basic') required this.apiBasic,
      @JsonKey(name: 'api_log') required this.apiLog,
      @JsonKey(name: 'api_combined_flag') required this.apiCombinedFlag,
      @JsonKey(name: 'api_p_bgm_id') required this.apiPBgmId,
      @JsonKey(name: 'api_parallel_quest_count')
      required this.apiParallelQuestCount,
      @JsonKey(name: 'api_dest_ship_slot') required this.apiDestShipSlot,
      @JsonKey(name: 'api_c_flags') required this.apiCFlags});

  factory _$_PortApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_event_object')
  PortApiDataApiEventObjectEntity apiEventObject;
  @override
  @JsonKey(name: 'api_material')
  List<PortApiDataApiMaterialEntity> apiMaterial;
  @override
  @JsonKey(name: 'api_deck_port')
  List<PortApiDataApiDeckPortEntity> apiDeckPort;
  @override
  @JsonKey(name: 'api_ndock')
  List<PortApiDataApiNdockEntity> apiNdock;
  @override
  @JsonKey(name: 'api_ship')
  List<PortApiDataApiShipEntity> apiShip;
  @override
  @JsonKey(name: 'api_basic')
  PortApiDataApiBasicEntity apiBasic;
  @override
  @JsonKey(name: 'api_log')
  List<PortApiDataApiLogEntity> apiLog;
  @override
  @JsonKey(name: 'api_combined_flag')
  int apiCombinedFlag;
  @override
  @JsonKey(name: 'api_p_bgm_id')
  int apiPBgmId;
  @override
  @JsonKey(name: 'api_parallel_quest_count')
  int apiParallelQuestCount;
  @override
  @JsonKey(name: 'api_dest_ship_slot')
  int apiDestShipSlot;
  @override
  @JsonKey(name: 'api_c_flags')
  List<int> apiCFlags;

  @override
  String toString() {
    return 'PortApiDataEntity(apiEventObject: $apiEventObject, apiMaterial: $apiMaterial, apiDeckPort: $apiDeckPort, apiNdock: $apiNdock, apiShip: $apiShip, apiBasic: $apiBasic, apiLog: $apiLog, apiCombinedFlag: $apiCombinedFlag, apiPBgmId: $apiPBgmId, apiParallelQuestCount: $apiParallelQuestCount, apiDestShipSlot: $apiDestShipSlot, apiCFlags: $apiCFlags)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataEntityCopyWith<_$_PortApiDataEntity> get copyWith =>
      __$$_PortApiDataEntityCopyWithImpl<_$_PortApiDataEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataEntity implements PortApiDataEntity {
  factory _PortApiDataEntity(
      {@JsonKey(name: 'api_event_object')
      required PortApiDataApiEventObjectEntity apiEventObject,
      @JsonKey(name: 'api_material')
      required List<PortApiDataApiMaterialEntity> apiMaterial,
      @JsonKey(name: 'api_deck_port')
      required List<PortApiDataApiDeckPortEntity> apiDeckPort,
      @JsonKey(name: 'api_ndock')
      required List<PortApiDataApiNdockEntity> apiNdock,
      @JsonKey(name: 'api_ship')
      required List<PortApiDataApiShipEntity> apiShip,
      @JsonKey(name: 'api_basic') required PortApiDataApiBasicEntity apiBasic,
      @JsonKey(name: 'api_log') required List<PortApiDataApiLogEntity> apiLog,
      @JsonKey(name: 'api_combined_flag') required int apiCombinedFlag,
      @JsonKey(name: 'api_p_bgm_id') required int apiPBgmId,
      @JsonKey(name: 'api_parallel_quest_count')
      required int apiParallelQuestCount,
      @JsonKey(name: 'api_dest_ship_slot') required int apiDestShipSlot,
      @JsonKey(name: 'api_c_flags')
      required List<int> apiCFlags}) = _$_PortApiDataEntity;

  factory _PortApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_event_object')
  PortApiDataApiEventObjectEntity get apiEventObject;
  @JsonKey(name: 'api_event_object')
  set apiEventObject(PortApiDataApiEventObjectEntity value);
  @override
  @JsonKey(name: 'api_material')
  List<PortApiDataApiMaterialEntity> get apiMaterial;
  @JsonKey(name: 'api_material')
  set apiMaterial(List<PortApiDataApiMaterialEntity> value);
  @override
  @JsonKey(name: 'api_deck_port')
  List<PortApiDataApiDeckPortEntity> get apiDeckPort;
  @JsonKey(name: 'api_deck_port')
  set apiDeckPort(List<PortApiDataApiDeckPortEntity> value);
  @override
  @JsonKey(name: 'api_ndock')
  List<PortApiDataApiNdockEntity> get apiNdock;
  @JsonKey(name: 'api_ndock')
  set apiNdock(List<PortApiDataApiNdockEntity> value);
  @override
  @JsonKey(name: 'api_ship')
  List<PortApiDataApiShipEntity> get apiShip;
  @JsonKey(name: 'api_ship')
  set apiShip(List<PortApiDataApiShipEntity> value);
  @override
  @JsonKey(name: 'api_basic')
  PortApiDataApiBasicEntity get apiBasic;
  @JsonKey(name: 'api_basic')
  set apiBasic(PortApiDataApiBasicEntity value);
  @override
  @JsonKey(name: 'api_log')
  List<PortApiDataApiLogEntity> get apiLog;
  @JsonKey(name: 'api_log')
  set apiLog(List<PortApiDataApiLogEntity> value);
  @override
  @JsonKey(name: 'api_combined_flag')
  int get apiCombinedFlag;
  @JsonKey(name: 'api_combined_flag')
  set apiCombinedFlag(int value);
  @override
  @JsonKey(name: 'api_p_bgm_id')
  int get apiPBgmId;
  @JsonKey(name: 'api_p_bgm_id')
  set apiPBgmId(int value);
  @override
  @JsonKey(name: 'api_parallel_quest_count')
  int get apiParallelQuestCount;
  @JsonKey(name: 'api_parallel_quest_count')
  set apiParallelQuestCount(int value);
  @override
  @JsonKey(name: 'api_dest_ship_slot')
  int get apiDestShipSlot;
  @JsonKey(name: 'api_dest_ship_slot')
  set apiDestShipSlot(int value);
  @override
  @JsonKey(name: 'api_c_flags')
  List<int> get apiCFlags;
  @JsonKey(name: 'api_c_flags')
  set apiCFlags(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataEntityCopyWith<_$_PortApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PortApiDataApiEventObjectEntity _$PortApiDataApiEventObjectEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiEventObjectEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiEventObjectEntity {
  @JsonKey(name: 'api_c_num')
  int get apiCNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_c_num')
  set apiCNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_m_flag')
  int get apiMFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_m_flag')
  set apiMFlag(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiEventObjectEntityCopyWith<PortApiDataApiEventObjectEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiEventObjectEntityCopyWith<$Res> {
  factory $PortApiDataApiEventObjectEntityCopyWith(
          PortApiDataApiEventObjectEntity value,
          $Res Function(PortApiDataApiEventObjectEntity) then) =
      _$PortApiDataApiEventObjectEntityCopyWithImpl<$Res,
          PortApiDataApiEventObjectEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_c_num') int apiCNum,
      @JsonKey(name: 'api_m_flag') int apiMFlag});
}

/// @nodoc
class _$PortApiDataApiEventObjectEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiEventObjectEntity>
    implements $PortApiDataApiEventObjectEntityCopyWith<$Res> {
  _$PortApiDataApiEventObjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCNum = null,
    Object? apiMFlag = null,
  }) {
    return _then(_value.copyWith(
      apiCNum: null == apiCNum
          ? _value.apiCNum
          : apiCNum // ignore: cast_nullable_to_non_nullable
              as int,
      apiMFlag: null == apiMFlag
          ? _value.apiMFlag
          : apiMFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiEventObjectEntityCopyWith<$Res>
    implements $PortApiDataApiEventObjectEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiEventObjectEntityCopyWith(
          _$_PortApiDataApiEventObjectEntity value,
          $Res Function(_$_PortApiDataApiEventObjectEntity) then) =
      __$$_PortApiDataApiEventObjectEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_c_num') int apiCNum,
      @JsonKey(name: 'api_m_flag') int apiMFlag});
}

/// @nodoc
class __$$_PortApiDataApiEventObjectEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiEventObjectEntityCopyWithImpl<$Res,
        _$_PortApiDataApiEventObjectEntity>
    implements _$$_PortApiDataApiEventObjectEntityCopyWith<$Res> {
  __$$_PortApiDataApiEventObjectEntityCopyWithImpl(
      _$_PortApiDataApiEventObjectEntity _value,
      $Res Function(_$_PortApiDataApiEventObjectEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCNum = null,
    Object? apiMFlag = null,
  }) {
    return _then(_$_PortApiDataApiEventObjectEntity(
      apiCNum: null == apiCNum
          ? _value.apiCNum
          : apiCNum // ignore: cast_nullable_to_non_nullable
              as int,
      apiMFlag: null == apiMFlag
          ? _value.apiMFlag
          : apiMFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiEventObjectEntity
    implements _PortApiDataApiEventObjectEntity {
  _$_PortApiDataApiEventObjectEntity(
      {@JsonKey(name: 'api_c_num') required this.apiCNum,
      @JsonKey(name: 'api_m_flag') required this.apiMFlag});

  factory _$_PortApiDataApiEventObjectEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_PortApiDataApiEventObjectEntityFromJson(json);

  @override
  @JsonKey(name: 'api_c_num')
  int apiCNum;
  @override
  @JsonKey(name: 'api_m_flag')
  int apiMFlag;

  @override
  String toString() {
    return 'PortApiDataApiEventObjectEntity(apiCNum: $apiCNum, apiMFlag: $apiMFlag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiEventObjectEntityCopyWith<
          _$_PortApiDataApiEventObjectEntity>
      get copyWith => __$$_PortApiDataApiEventObjectEntityCopyWithImpl<
          _$_PortApiDataApiEventObjectEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiEventObjectEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiEventObjectEntity
    implements PortApiDataApiEventObjectEntity {
  factory _PortApiDataApiEventObjectEntity(
          {@JsonKey(name: 'api_c_num') required int apiCNum,
          @JsonKey(name: 'api_m_flag') required int apiMFlag}) =
      _$_PortApiDataApiEventObjectEntity;

  factory _PortApiDataApiEventObjectEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiEventObjectEntity.fromJson;

  @override
  @JsonKey(name: 'api_c_num')
  int get apiCNum;
  @JsonKey(name: 'api_c_num')
  set apiCNum(int value);
  @override
  @JsonKey(name: 'api_m_flag')
  int get apiMFlag;
  @JsonKey(name: 'api_m_flag')
  set apiMFlag(int value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataApiEventObjectEntityCopyWith<
          _$_PortApiDataApiEventObjectEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiMaterialEntity _$PortApiDataApiMaterialEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiMaterialEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiMaterialEntity {
  @JsonKey(name: 'api_member_id')
  int get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_value')
  int get apiValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_value')
  set apiValue(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiMaterialEntityCopyWith<PortApiDataApiMaterialEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiMaterialEntityCopyWith<$Res> {
  factory $PortApiDataApiMaterialEntityCopyWith(
          PortApiDataApiMaterialEntity value,
          $Res Function(PortApiDataApiMaterialEntity) then) =
      _$PortApiDataApiMaterialEntityCopyWithImpl<$Res,
          PortApiDataApiMaterialEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_value') int apiValue});
}

/// @nodoc
class _$PortApiDataApiMaterialEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiMaterialEntity>
    implements $PortApiDataApiMaterialEntityCopyWith<$Res> {
  _$PortApiDataApiMaterialEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiValue = null,
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
      apiValue: null == apiValue
          ? _value.apiValue
          : apiValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiMaterialEntityCopyWith<$Res>
    implements $PortApiDataApiMaterialEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiMaterialEntityCopyWith(
          _$_PortApiDataApiMaterialEntity value,
          $Res Function(_$_PortApiDataApiMaterialEntity) then) =
      __$$_PortApiDataApiMaterialEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_value') int apiValue});
}

/// @nodoc
class __$$_PortApiDataApiMaterialEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiMaterialEntityCopyWithImpl<$Res,
        _$_PortApiDataApiMaterialEntity>
    implements _$$_PortApiDataApiMaterialEntityCopyWith<$Res> {
  __$$_PortApiDataApiMaterialEntityCopyWithImpl(
      _$_PortApiDataApiMaterialEntity _value,
      $Res Function(_$_PortApiDataApiMaterialEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiValue = null,
  }) {
    return _then(_$_PortApiDataApiMaterialEntity(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiValue: null == apiValue
          ? _value.apiValue
          : apiValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiMaterialEntity implements _PortApiDataApiMaterialEntity {
  _$_PortApiDataApiMaterialEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_value') required this.apiValue});

  factory _$_PortApiDataApiMaterialEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiMaterialEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  int apiMemberId;
  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_value')
  int apiValue;

  @override
  String toString() {
    return 'PortApiDataApiMaterialEntity(apiMemberId: $apiMemberId, apiId: $apiId, apiValue: $apiValue)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiMaterialEntityCopyWith<_$_PortApiDataApiMaterialEntity>
      get copyWith => __$$_PortApiDataApiMaterialEntityCopyWithImpl<
          _$_PortApiDataApiMaterialEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiMaterialEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiMaterialEntity
    implements PortApiDataApiMaterialEntity {
  factory _PortApiDataApiMaterialEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_value') required int apiValue}) =
      _$_PortApiDataApiMaterialEntity;

  factory _PortApiDataApiMaterialEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiMaterialEntity.fromJson;

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
  @JsonKey(name: 'api_value')
  int get apiValue;
  @JsonKey(name: 'api_value')
  set apiValue(int value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataApiMaterialEntityCopyWith<_$_PortApiDataApiMaterialEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiDeckPortEntity _$PortApiDataApiDeckPortEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiDeckPortEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiDeckPortEntity {
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
  $PortApiDataApiDeckPortEntityCopyWith<PortApiDataApiDeckPortEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiDeckPortEntityCopyWith<$Res> {
  factory $PortApiDataApiDeckPortEntityCopyWith(
          PortApiDataApiDeckPortEntity value,
          $Res Function(PortApiDataApiDeckPortEntity) then) =
      _$PortApiDataApiDeckPortEntityCopyWithImpl<$Res,
          PortApiDataApiDeckPortEntity>;
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
class _$PortApiDataApiDeckPortEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiDeckPortEntity>
    implements $PortApiDataApiDeckPortEntityCopyWith<$Res> {
  _$PortApiDataApiDeckPortEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_PortApiDataApiDeckPortEntityCopyWith<$Res>
    implements $PortApiDataApiDeckPortEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiDeckPortEntityCopyWith(
          _$_PortApiDataApiDeckPortEntity value,
          $Res Function(_$_PortApiDataApiDeckPortEntity) then) =
      __$$_PortApiDataApiDeckPortEntityCopyWithImpl<$Res>;
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
class __$$_PortApiDataApiDeckPortEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiDeckPortEntityCopyWithImpl<$Res,
        _$_PortApiDataApiDeckPortEntity>
    implements _$$_PortApiDataApiDeckPortEntityCopyWith<$Res> {
  __$$_PortApiDataApiDeckPortEntityCopyWithImpl(
      _$_PortApiDataApiDeckPortEntity _value,
      $Res Function(_$_PortApiDataApiDeckPortEntity) _then)
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
    return _then(_$_PortApiDataApiDeckPortEntity(
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
class _$_PortApiDataApiDeckPortEntity implements _PortApiDataApiDeckPortEntity {
  _$_PortApiDataApiDeckPortEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_name_id') required this.apiNameId,
      @JsonKey(name: 'api_mission') required this.apiMission,
      @JsonKey(name: 'api_flagship') required this.apiFlagship,
      @JsonKey(name: 'api_ship') required this.apiShip});

  factory _$_PortApiDataApiDeckPortEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiDeckPortEntityFromJson(json);

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
    return 'PortApiDataApiDeckPortEntity(apiMemberId: $apiMemberId, apiId: $apiId, apiName: $apiName, apiNameId: $apiNameId, apiMission: $apiMission, apiFlagship: $apiFlagship, apiShip: $apiShip)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiDeckPortEntityCopyWith<_$_PortApiDataApiDeckPortEntity>
      get copyWith => __$$_PortApiDataApiDeckPortEntityCopyWithImpl<
          _$_PortApiDataApiDeckPortEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiDeckPortEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiDeckPortEntity
    implements PortApiDataApiDeckPortEntity {
  factory _PortApiDataApiDeckPortEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_name_id') required String apiNameId,
          @JsonKey(name: 'api_mission') required List<int> apiMission,
          @JsonKey(name: 'api_flagship') required String apiFlagship,
          @JsonKey(name: 'api_ship') required List<int> apiShip}) =
      _$_PortApiDataApiDeckPortEntity;

  factory _PortApiDataApiDeckPortEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiDeckPortEntity.fromJson;

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
  _$$_PortApiDataApiDeckPortEntityCopyWith<_$_PortApiDataApiDeckPortEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiNdockEntity _$PortApiDataApiNdockEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiNdockEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiNdockEntity {
  @JsonKey(name: 'api_member_id')
  int get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  int get apiState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  set apiState(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  int get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value) => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiNdockEntityCopyWith<PortApiDataApiNdockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiNdockEntityCopyWith<$Res> {
  factory $PortApiDataApiNdockEntityCopyWith(PortApiDataApiNdockEntity value,
          $Res Function(PortApiDataApiNdockEntity) then) =
      _$PortApiDataApiNdockEntityCopyWithImpl<$Res, PortApiDataApiNdockEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_state') int apiState,
      @JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_complete_time') int apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') String apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') int apiItem1,
      @JsonKey(name: 'api_item2') int apiItem2,
      @JsonKey(name: 'api_item3') int apiItem3,
      @JsonKey(name: 'api_item4') int apiItem4});
}

/// @nodoc
class _$PortApiDataApiNdockEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiNdockEntity>
    implements $PortApiDataApiNdockEntityCopyWith<$Res> {
  _$PortApiDataApiNdockEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiState = null,
    Object? apiShipId = null,
    Object? apiCompleteTime = null,
    Object? apiCompleteTimeStr = null,
    Object? apiItem1 = null,
    Object? apiItem2 = null,
    Object? apiItem3 = null,
    Object? apiItem4 = null,
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
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiNdockEntityCopyWith<$Res>
    implements $PortApiDataApiNdockEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiNdockEntityCopyWith(
          _$_PortApiDataApiNdockEntity value,
          $Res Function(_$_PortApiDataApiNdockEntity) then) =
      __$$_PortApiDataApiNdockEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') int apiMemberId,
      @JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_state') int apiState,
      @JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_complete_time') int apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') String apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') int apiItem1,
      @JsonKey(name: 'api_item2') int apiItem2,
      @JsonKey(name: 'api_item3') int apiItem3,
      @JsonKey(name: 'api_item4') int apiItem4});
}

/// @nodoc
class __$$_PortApiDataApiNdockEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiNdockEntityCopyWithImpl<$Res,
        _$_PortApiDataApiNdockEntity>
    implements _$$_PortApiDataApiNdockEntityCopyWith<$Res> {
  __$$_PortApiDataApiNdockEntityCopyWithImpl(
      _$_PortApiDataApiNdockEntity _value,
      $Res Function(_$_PortApiDataApiNdockEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiId = null,
    Object? apiState = null,
    Object? apiShipId = null,
    Object? apiCompleteTime = null,
    Object? apiCompleteTimeStr = null,
    Object? apiItem1 = null,
    Object? apiItem2 = null,
    Object? apiItem3 = null,
    Object? apiItem4 = null,
  }) {
    return _then(_$_PortApiDataApiNdockEntity(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as int,
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiNdockEntity implements _PortApiDataApiNdockEntity {
  _$_PortApiDataApiNdockEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_state') required this.apiState,
      @JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_complete_time') required this.apiCompleteTime,
      @JsonKey(name: 'api_complete_time_str') required this.apiCompleteTimeStr,
      @JsonKey(name: 'api_item1') required this.apiItem1,
      @JsonKey(name: 'api_item2') required this.apiItem2,
      @JsonKey(name: 'api_item3') required this.apiItem3,
      @JsonKey(name: 'api_item4') required this.apiItem4});

  factory _$_PortApiDataApiNdockEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiNdockEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  int apiMemberId;
  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_state')
  int apiState;
  @override
  @JsonKey(name: 'api_ship_id')
  int apiShipId;
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
  String toString() {
    return 'PortApiDataApiNdockEntity(apiMemberId: $apiMemberId, apiId: $apiId, apiState: $apiState, apiShipId: $apiShipId, apiCompleteTime: $apiCompleteTime, apiCompleteTimeStr: $apiCompleteTimeStr, apiItem1: $apiItem1, apiItem2: $apiItem2, apiItem3: $apiItem3, apiItem4: $apiItem4)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiNdockEntityCopyWith<_$_PortApiDataApiNdockEntity>
      get copyWith => __$$_PortApiDataApiNdockEntityCopyWithImpl<
          _$_PortApiDataApiNdockEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiNdockEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiNdockEntity implements PortApiDataApiNdockEntity {
  factory _PortApiDataApiNdockEntity(
          {@JsonKey(name: 'api_member_id') required int apiMemberId,
          @JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_state') required int apiState,
          @JsonKey(name: 'api_ship_id') required int apiShipId,
          @JsonKey(name: 'api_complete_time') required int apiCompleteTime,
          @JsonKey(name: 'api_complete_time_str')
          required String apiCompleteTimeStr,
          @JsonKey(name: 'api_item1') required int apiItem1,
          @JsonKey(name: 'api_item2') required int apiItem2,
          @JsonKey(name: 'api_item3') required int apiItem3,
          @JsonKey(name: 'api_item4') required int apiItem4}) =
      _$_PortApiDataApiNdockEntity;

  factory _PortApiDataApiNdockEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiNdockEntity.fromJson;

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
  @JsonKey(name: 'api_state')
  int get apiState;
  @JsonKey(name: 'api_state')
  set apiState(int value);
  @override
  @JsonKey(name: 'api_ship_id')
  int get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value);
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
  @JsonKey(ignore: true)
  _$$_PortApiDataApiNdockEntityCopyWith<_$_PortApiDataApiNdockEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiShipEntity _$PortApiDataApiShipEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiShipEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiShipEntity {
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
  int get apiSallyArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sally_area')
  set apiSallyArea(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiShipEntityCopyWith<PortApiDataApiShipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiShipEntityCopyWith<$Res> {
  factory $PortApiDataApiShipEntityCopyWith(PortApiDataApiShipEntity value,
          $Res Function(PortApiDataApiShipEntity) then) =
      _$PortApiDataApiShipEntityCopyWithImpl<$Res, PortApiDataApiShipEntity>;
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
      @JsonKey(name: 'api_sally_area') int apiSallyArea});
}

/// @nodoc
class _$PortApiDataApiShipEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiShipEntity>
    implements $PortApiDataApiShipEntityCopyWith<$Res> {
  _$PortApiDataApiShipEntityCopyWithImpl(this._value, this._then);

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
    Object? apiSallyArea = null,
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
      apiSallyArea: null == apiSallyArea
          ? _value.apiSallyArea
          : apiSallyArea // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiShipEntityCopyWith<$Res>
    implements $PortApiDataApiShipEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiShipEntityCopyWith(
          _$_PortApiDataApiShipEntity value,
          $Res Function(_$_PortApiDataApiShipEntity) then) =
      __$$_PortApiDataApiShipEntityCopyWithImpl<$Res>;
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
      @JsonKey(name: 'api_sally_area') int apiSallyArea});
}

/// @nodoc
class __$$_PortApiDataApiShipEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiShipEntityCopyWithImpl<$Res,
        _$_PortApiDataApiShipEntity>
    implements _$$_PortApiDataApiShipEntityCopyWith<$Res> {
  __$$_PortApiDataApiShipEntityCopyWithImpl(_$_PortApiDataApiShipEntity _value,
      $Res Function(_$_PortApiDataApiShipEntity) _then)
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
    Object? apiSallyArea = null,
  }) {
    return _then(_$_PortApiDataApiShipEntity(
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
      apiSallyArea: null == apiSallyArea
          ? _value.apiSallyArea
          : apiSallyArea // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiShipEntity implements _PortApiDataApiShipEntity {
  _$_PortApiDataApiShipEntity(
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
      @JsonKey(name: 'api_sally_area') required this.apiSallyArea});

  factory _$_PortApiDataApiShipEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiShipEntityFromJson(json);

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
  int apiSallyArea;

  @override
  String toString() {
    return 'PortApiDataApiShipEntity(apiId: $apiId, apiSortno: $apiSortno, apiShipId: $apiShipId, apiLv: $apiLv, apiExp: $apiExp, apiNowhp: $apiNowhp, apiMaxhp: $apiMaxhp, apiSoku: $apiSoku, apiLeng: $apiLeng, apiSlot: $apiSlot, apiOnslot: $apiOnslot, apiSlotEx: $apiSlotEx, apiKyouka: $apiKyouka, apiBacks: $apiBacks, apiFuel: $apiFuel, apiBull: $apiBull, apiSlotnum: $apiSlotnum, apiNdockTime: $apiNdockTime, apiNdockItem: $apiNdockItem, apiSrate: $apiSrate, apiCond: $apiCond, apiKaryoku: $apiKaryoku, apiRaisou: $apiRaisou, apiTaiku: $apiTaiku, apiSoukou: $apiSoukou, apiKaihi: $apiKaihi, apiTaisen: $apiTaisen, apiSakuteki: $apiSakuteki, apiLucky: $apiLucky, apiLocked: $apiLocked, apiLockedEquip: $apiLockedEquip, apiSallyArea: $apiSallyArea)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiShipEntityCopyWith<_$_PortApiDataApiShipEntity>
      get copyWith => __$$_PortApiDataApiShipEntityCopyWithImpl<
          _$_PortApiDataApiShipEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiShipEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiShipEntity implements PortApiDataApiShipEntity {
  factory _PortApiDataApiShipEntity(
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
          @JsonKey(name: 'api_sally_area') required int apiSallyArea}) =
      _$_PortApiDataApiShipEntity;

  factory _PortApiDataApiShipEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiShipEntity.fromJson;

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
  int get apiSallyArea;
  @JsonKey(name: 'api_sally_area')
  set apiSallyArea(int value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataApiShipEntityCopyWith<_$_PortApiDataApiShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiBasicEntity _$PortApiDataApiBasicEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiBasicEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiBasicEntity {
  @JsonKey(name: 'api_member_id')
  String get apiMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nickname')
  String get apiNickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nickname')
  set apiNickname(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nickname_id')
  String get apiNicknameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_nickname_id')
  set apiNicknameId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_active_flag')
  int get apiActiveFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_active_flag')
  set apiActiveFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_starttime')
  int get apiStarttime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_starttime')
  set apiStarttime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  int get apiLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  set apiLevel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rank')
  int get apiRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rank')
  set apiRank(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_experience')
  int get apiExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_experience')
  set apiExperience(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fleetname')
  dynamic get apiFleetname => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fleetname')
  set apiFleetname(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment')
  String get apiComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment')
  set apiComment(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment_id')
  String get apiCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_comment_id')
  set apiCommentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_chara')
  int get apiMaxChara => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_chara')
  set apiMaxChara(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_slotitem')
  int get apiMaxSlotitem => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_slotitem')
  set apiMaxSlotitem(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_kagu')
  int get apiMaxKagu => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_kagu')
  set apiMaxKagu(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_playtime')
  int get apiPlaytime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_playtime')
  set apiPlaytime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tutorial')
  int get apiTutorial => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tutorial')
  set apiTutorial(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture')
  List<int> get apiFurniture => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_furniture')
  set apiFurniture(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_deck')
  int get apiCountDeck => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_deck')
  set apiCountDeck(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_kdock')
  int get apiCountKdock => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_kdock')
  set apiCountKdock(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_ndock')
  int get apiCountNdock => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_count_ndock')
  set apiCountNdock(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fcoin')
  int get apiFcoin => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fcoin')
  set apiFcoin(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_st_win')
  int get apiStWin => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_st_win')
  set apiStWin(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_st_lose')
  int get apiStLose => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_st_lose')
  set apiStLose(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ms_count')
  int get apiMsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ms_count')
  set apiMsCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ms_success')
  int get apiMsSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ms_success')
  set apiMsSuccess(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_win')
  int get apiPtWin => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_win')
  set apiPtWin(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_lose')
  int get apiPtLose => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_lose')
  set apiPtLose(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_challenged')
  int get apiPtChallenged => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_challenged')
  set apiPtChallenged(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_challenged_win')
  int get apiPtChallengedWin => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pt_challenged_win')
  set apiPtChallengedWin(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_firstflag')
  int get apiFirstflag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_firstflag')
  set apiFirstflag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tutorial_progress')
  int get apiTutorialProgress => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tutorial_progress')
  set apiTutorialProgress(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pvp')
  List<int> get apiPvp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pvp')
  set apiPvp(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_medals')
  int get apiMedals => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_medals')
  set apiMedals(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_large_dock')
  int get apiLargeDock => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_large_dock')
  set apiLargeDock(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiBasicEntityCopyWith<PortApiDataApiBasicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiBasicEntityCopyWith<$Res> {
  factory $PortApiDataApiBasicEntityCopyWith(PortApiDataApiBasicEntity value,
          $Res Function(PortApiDataApiBasicEntity) then) =
      _$PortApiDataApiBasicEntityCopyWithImpl<$Res, PortApiDataApiBasicEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') String apiMemberId,
      @JsonKey(name: 'api_nickname') String apiNickname,
      @JsonKey(name: 'api_nickname_id') String apiNicknameId,
      @JsonKey(name: 'api_active_flag') int apiActiveFlag,
      @JsonKey(name: 'api_starttime') int apiStarttime,
      @JsonKey(name: 'api_level') int apiLevel,
      @JsonKey(name: 'api_rank') int apiRank,
      @JsonKey(name: 'api_experience') int apiExperience,
      @JsonKey(name: 'api_fleetname') dynamic apiFleetname,
      @JsonKey(name: 'api_comment') String apiComment,
      @JsonKey(name: 'api_comment_id') String apiCommentId,
      @JsonKey(name: 'api_max_chara') int apiMaxChara,
      @JsonKey(name: 'api_max_slotitem') int apiMaxSlotitem,
      @JsonKey(name: 'api_max_kagu') int apiMaxKagu,
      @JsonKey(name: 'api_playtime') int apiPlaytime,
      @JsonKey(name: 'api_tutorial') int apiTutorial,
      @JsonKey(name: 'api_furniture') List<int> apiFurniture,
      @JsonKey(name: 'api_count_deck') int apiCountDeck,
      @JsonKey(name: 'api_count_kdock') int apiCountKdock,
      @JsonKey(name: 'api_count_ndock') int apiCountNdock,
      @JsonKey(name: 'api_fcoin') int apiFcoin,
      @JsonKey(name: 'api_st_win') int apiStWin,
      @JsonKey(name: 'api_st_lose') int apiStLose,
      @JsonKey(name: 'api_ms_count') int apiMsCount,
      @JsonKey(name: 'api_ms_success') int apiMsSuccess,
      @JsonKey(name: 'api_pt_win') int apiPtWin,
      @JsonKey(name: 'api_pt_lose') int apiPtLose,
      @JsonKey(name: 'api_pt_challenged') int apiPtChallenged,
      @JsonKey(name: 'api_pt_challenged_win') int apiPtChallengedWin,
      @JsonKey(name: 'api_firstflag') int apiFirstflag,
      @JsonKey(name: 'api_tutorial_progress') int apiTutorialProgress,
      @JsonKey(name: 'api_pvp') List<int> apiPvp,
      @JsonKey(name: 'api_medals') int apiMedals,
      @JsonKey(name: 'api_large_dock') int apiLargeDock});
}

/// @nodoc
class _$PortApiDataApiBasicEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiBasicEntity>
    implements $PortApiDataApiBasicEntityCopyWith<$Res> {
  _$PortApiDataApiBasicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiNickname = null,
    Object? apiNicknameId = null,
    Object? apiActiveFlag = null,
    Object? apiStarttime = null,
    Object? apiLevel = null,
    Object? apiRank = null,
    Object? apiExperience = null,
    Object? apiFleetname = freezed,
    Object? apiComment = null,
    Object? apiCommentId = null,
    Object? apiMaxChara = null,
    Object? apiMaxSlotitem = null,
    Object? apiMaxKagu = null,
    Object? apiPlaytime = null,
    Object? apiTutorial = null,
    Object? apiFurniture = null,
    Object? apiCountDeck = null,
    Object? apiCountKdock = null,
    Object? apiCountNdock = null,
    Object? apiFcoin = null,
    Object? apiStWin = null,
    Object? apiStLose = null,
    Object? apiMsCount = null,
    Object? apiMsSuccess = null,
    Object? apiPtWin = null,
    Object? apiPtLose = null,
    Object? apiPtChallenged = null,
    Object? apiPtChallengedWin = null,
    Object? apiFirstflag = null,
    Object? apiTutorialProgress = null,
    Object? apiPvp = null,
    Object? apiMedals = null,
    Object? apiLargeDock = null,
  }) {
    return _then(_value.copyWith(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      apiNickname: null == apiNickname
          ? _value.apiNickname
          : apiNickname // ignore: cast_nullable_to_non_nullable
              as String,
      apiNicknameId: null == apiNicknameId
          ? _value.apiNicknameId
          : apiNicknameId // ignore: cast_nullable_to_non_nullable
              as String,
      apiActiveFlag: null == apiActiveFlag
          ? _value.apiActiveFlag
          : apiActiveFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiStarttime: null == apiStarttime
          ? _value.apiStarttime
          : apiStarttime // ignore: cast_nullable_to_non_nullable
              as int,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiRank: null == apiRank
          ? _value.apiRank
          : apiRank // ignore: cast_nullable_to_non_nullable
              as int,
      apiExperience: null == apiExperience
          ? _value.apiExperience
          : apiExperience // ignore: cast_nullable_to_non_nullable
              as int,
      apiFleetname: freezed == apiFleetname
          ? _value.apiFleetname
          : apiFleetname // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiComment: null == apiComment
          ? _value.apiComment
          : apiComment // ignore: cast_nullable_to_non_nullable
              as String,
      apiCommentId: null == apiCommentId
          ? _value.apiCommentId
          : apiCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      apiMaxChara: null == apiMaxChara
          ? _value.apiMaxChara
          : apiMaxChara // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxSlotitem: null == apiMaxSlotitem
          ? _value.apiMaxSlotitem
          : apiMaxSlotitem // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxKagu: null == apiMaxKagu
          ? _value.apiMaxKagu
          : apiMaxKagu // ignore: cast_nullable_to_non_nullable
              as int,
      apiPlaytime: null == apiPlaytime
          ? _value.apiPlaytime
          : apiPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
      apiTutorial: null == apiTutorial
          ? _value.apiTutorial
          : apiTutorial // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurniture: null == apiFurniture
          ? _value.apiFurniture
          : apiFurniture // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiCountDeck: null == apiCountDeck
          ? _value.apiCountDeck
          : apiCountDeck // ignore: cast_nullable_to_non_nullable
              as int,
      apiCountKdock: null == apiCountKdock
          ? _value.apiCountKdock
          : apiCountKdock // ignore: cast_nullable_to_non_nullable
              as int,
      apiCountNdock: null == apiCountNdock
          ? _value.apiCountNdock
          : apiCountNdock // ignore: cast_nullable_to_non_nullable
              as int,
      apiFcoin: null == apiFcoin
          ? _value.apiFcoin
          : apiFcoin // ignore: cast_nullable_to_non_nullable
              as int,
      apiStWin: null == apiStWin
          ? _value.apiStWin
          : apiStWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiStLose: null == apiStLose
          ? _value.apiStLose
          : apiStLose // ignore: cast_nullable_to_non_nullable
              as int,
      apiMsCount: null == apiMsCount
          ? _value.apiMsCount
          : apiMsCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiMsSuccess: null == apiMsSuccess
          ? _value.apiMsSuccess
          : apiMsSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtWin: null == apiPtWin
          ? _value.apiPtWin
          : apiPtWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtLose: null == apiPtLose
          ? _value.apiPtLose
          : apiPtLose // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtChallenged: null == apiPtChallenged
          ? _value.apiPtChallenged
          : apiPtChallenged // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtChallengedWin: null == apiPtChallengedWin
          ? _value.apiPtChallengedWin
          : apiPtChallengedWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiFirstflag: null == apiFirstflag
          ? _value.apiFirstflag
          : apiFirstflag // ignore: cast_nullable_to_non_nullable
              as int,
      apiTutorialProgress: null == apiTutorialProgress
          ? _value.apiTutorialProgress
          : apiTutorialProgress // ignore: cast_nullable_to_non_nullable
              as int,
      apiPvp: null == apiPvp
          ? _value.apiPvp
          : apiPvp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMedals: null == apiMedals
          ? _value.apiMedals
          : apiMedals // ignore: cast_nullable_to_non_nullable
              as int,
      apiLargeDock: null == apiLargeDock
          ? _value.apiLargeDock
          : apiLargeDock // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiBasicEntityCopyWith<$Res>
    implements $PortApiDataApiBasicEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiBasicEntityCopyWith(
          _$_PortApiDataApiBasicEntity value,
          $Res Function(_$_PortApiDataApiBasicEntity) then) =
      __$$_PortApiDataApiBasicEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_member_id') String apiMemberId,
      @JsonKey(name: 'api_nickname') String apiNickname,
      @JsonKey(name: 'api_nickname_id') String apiNicknameId,
      @JsonKey(name: 'api_active_flag') int apiActiveFlag,
      @JsonKey(name: 'api_starttime') int apiStarttime,
      @JsonKey(name: 'api_level') int apiLevel,
      @JsonKey(name: 'api_rank') int apiRank,
      @JsonKey(name: 'api_experience') int apiExperience,
      @JsonKey(name: 'api_fleetname') dynamic apiFleetname,
      @JsonKey(name: 'api_comment') String apiComment,
      @JsonKey(name: 'api_comment_id') String apiCommentId,
      @JsonKey(name: 'api_max_chara') int apiMaxChara,
      @JsonKey(name: 'api_max_slotitem') int apiMaxSlotitem,
      @JsonKey(name: 'api_max_kagu') int apiMaxKagu,
      @JsonKey(name: 'api_playtime') int apiPlaytime,
      @JsonKey(name: 'api_tutorial') int apiTutorial,
      @JsonKey(name: 'api_furniture') List<int> apiFurniture,
      @JsonKey(name: 'api_count_deck') int apiCountDeck,
      @JsonKey(name: 'api_count_kdock') int apiCountKdock,
      @JsonKey(name: 'api_count_ndock') int apiCountNdock,
      @JsonKey(name: 'api_fcoin') int apiFcoin,
      @JsonKey(name: 'api_st_win') int apiStWin,
      @JsonKey(name: 'api_st_lose') int apiStLose,
      @JsonKey(name: 'api_ms_count') int apiMsCount,
      @JsonKey(name: 'api_ms_success') int apiMsSuccess,
      @JsonKey(name: 'api_pt_win') int apiPtWin,
      @JsonKey(name: 'api_pt_lose') int apiPtLose,
      @JsonKey(name: 'api_pt_challenged') int apiPtChallenged,
      @JsonKey(name: 'api_pt_challenged_win') int apiPtChallengedWin,
      @JsonKey(name: 'api_firstflag') int apiFirstflag,
      @JsonKey(name: 'api_tutorial_progress') int apiTutorialProgress,
      @JsonKey(name: 'api_pvp') List<int> apiPvp,
      @JsonKey(name: 'api_medals') int apiMedals,
      @JsonKey(name: 'api_large_dock') int apiLargeDock});
}

/// @nodoc
class __$$_PortApiDataApiBasicEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiBasicEntityCopyWithImpl<$Res,
        _$_PortApiDataApiBasicEntity>
    implements _$$_PortApiDataApiBasicEntityCopyWith<$Res> {
  __$$_PortApiDataApiBasicEntityCopyWithImpl(
      _$_PortApiDataApiBasicEntity _value,
      $Res Function(_$_PortApiDataApiBasicEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMemberId = null,
    Object? apiNickname = null,
    Object? apiNicknameId = null,
    Object? apiActiveFlag = null,
    Object? apiStarttime = null,
    Object? apiLevel = null,
    Object? apiRank = null,
    Object? apiExperience = null,
    Object? apiFleetname = freezed,
    Object? apiComment = null,
    Object? apiCommentId = null,
    Object? apiMaxChara = null,
    Object? apiMaxSlotitem = null,
    Object? apiMaxKagu = null,
    Object? apiPlaytime = null,
    Object? apiTutorial = null,
    Object? apiFurniture = null,
    Object? apiCountDeck = null,
    Object? apiCountKdock = null,
    Object? apiCountNdock = null,
    Object? apiFcoin = null,
    Object? apiStWin = null,
    Object? apiStLose = null,
    Object? apiMsCount = null,
    Object? apiMsSuccess = null,
    Object? apiPtWin = null,
    Object? apiPtLose = null,
    Object? apiPtChallenged = null,
    Object? apiPtChallengedWin = null,
    Object? apiFirstflag = null,
    Object? apiTutorialProgress = null,
    Object? apiPvp = null,
    Object? apiMedals = null,
    Object? apiLargeDock = null,
  }) {
    return _then(_$_PortApiDataApiBasicEntity(
      apiMemberId: null == apiMemberId
          ? _value.apiMemberId
          : apiMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      apiNickname: null == apiNickname
          ? _value.apiNickname
          : apiNickname // ignore: cast_nullable_to_non_nullable
              as String,
      apiNicknameId: null == apiNicknameId
          ? _value.apiNicknameId
          : apiNicknameId // ignore: cast_nullable_to_non_nullable
              as String,
      apiActiveFlag: null == apiActiveFlag
          ? _value.apiActiveFlag
          : apiActiveFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiStarttime: null == apiStarttime
          ? _value.apiStarttime
          : apiStarttime // ignore: cast_nullable_to_non_nullable
              as int,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiRank: null == apiRank
          ? _value.apiRank
          : apiRank // ignore: cast_nullable_to_non_nullable
              as int,
      apiExperience: null == apiExperience
          ? _value.apiExperience
          : apiExperience // ignore: cast_nullable_to_non_nullable
              as int,
      apiFleetname: freezed == apiFleetname
          ? _value.apiFleetname
          : apiFleetname // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiComment: null == apiComment
          ? _value.apiComment
          : apiComment // ignore: cast_nullable_to_non_nullable
              as String,
      apiCommentId: null == apiCommentId
          ? _value.apiCommentId
          : apiCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      apiMaxChara: null == apiMaxChara
          ? _value.apiMaxChara
          : apiMaxChara // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxSlotitem: null == apiMaxSlotitem
          ? _value.apiMaxSlotitem
          : apiMaxSlotitem // ignore: cast_nullable_to_non_nullable
              as int,
      apiMaxKagu: null == apiMaxKagu
          ? _value.apiMaxKagu
          : apiMaxKagu // ignore: cast_nullable_to_non_nullable
              as int,
      apiPlaytime: null == apiPlaytime
          ? _value.apiPlaytime
          : apiPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
      apiTutorial: null == apiTutorial
          ? _value.apiTutorial
          : apiTutorial // ignore: cast_nullable_to_non_nullable
              as int,
      apiFurniture: null == apiFurniture
          ? _value.apiFurniture
          : apiFurniture // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiCountDeck: null == apiCountDeck
          ? _value.apiCountDeck
          : apiCountDeck // ignore: cast_nullable_to_non_nullable
              as int,
      apiCountKdock: null == apiCountKdock
          ? _value.apiCountKdock
          : apiCountKdock // ignore: cast_nullable_to_non_nullable
              as int,
      apiCountNdock: null == apiCountNdock
          ? _value.apiCountNdock
          : apiCountNdock // ignore: cast_nullable_to_non_nullable
              as int,
      apiFcoin: null == apiFcoin
          ? _value.apiFcoin
          : apiFcoin // ignore: cast_nullable_to_non_nullable
              as int,
      apiStWin: null == apiStWin
          ? _value.apiStWin
          : apiStWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiStLose: null == apiStLose
          ? _value.apiStLose
          : apiStLose // ignore: cast_nullable_to_non_nullable
              as int,
      apiMsCount: null == apiMsCount
          ? _value.apiMsCount
          : apiMsCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiMsSuccess: null == apiMsSuccess
          ? _value.apiMsSuccess
          : apiMsSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtWin: null == apiPtWin
          ? _value.apiPtWin
          : apiPtWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtLose: null == apiPtLose
          ? _value.apiPtLose
          : apiPtLose // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtChallenged: null == apiPtChallenged
          ? _value.apiPtChallenged
          : apiPtChallenged // ignore: cast_nullable_to_non_nullable
              as int,
      apiPtChallengedWin: null == apiPtChallengedWin
          ? _value.apiPtChallengedWin
          : apiPtChallengedWin // ignore: cast_nullable_to_non_nullable
              as int,
      apiFirstflag: null == apiFirstflag
          ? _value.apiFirstflag
          : apiFirstflag // ignore: cast_nullable_to_non_nullable
              as int,
      apiTutorialProgress: null == apiTutorialProgress
          ? _value.apiTutorialProgress
          : apiTutorialProgress // ignore: cast_nullable_to_non_nullable
              as int,
      apiPvp: null == apiPvp
          ? _value.apiPvp
          : apiPvp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMedals: null == apiMedals
          ? _value.apiMedals
          : apiMedals // ignore: cast_nullable_to_non_nullable
              as int,
      apiLargeDock: null == apiLargeDock
          ? _value.apiLargeDock
          : apiLargeDock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiBasicEntity implements _PortApiDataApiBasicEntity {
  _$_PortApiDataApiBasicEntity(
      {@JsonKey(name: 'api_member_id') required this.apiMemberId,
      @JsonKey(name: 'api_nickname') required this.apiNickname,
      @JsonKey(name: 'api_nickname_id') required this.apiNicknameId,
      @JsonKey(name: 'api_active_flag') required this.apiActiveFlag,
      @JsonKey(name: 'api_starttime') required this.apiStarttime,
      @JsonKey(name: 'api_level') required this.apiLevel,
      @JsonKey(name: 'api_rank') required this.apiRank,
      @JsonKey(name: 'api_experience') required this.apiExperience,
      @JsonKey(name: 'api_fleetname') required this.apiFleetname,
      @JsonKey(name: 'api_comment') required this.apiComment,
      @JsonKey(name: 'api_comment_id') required this.apiCommentId,
      @JsonKey(name: 'api_max_chara') required this.apiMaxChara,
      @JsonKey(name: 'api_max_slotitem') required this.apiMaxSlotitem,
      @JsonKey(name: 'api_max_kagu') required this.apiMaxKagu,
      @JsonKey(name: 'api_playtime') required this.apiPlaytime,
      @JsonKey(name: 'api_tutorial') required this.apiTutorial,
      @JsonKey(name: 'api_furniture') required this.apiFurniture,
      @JsonKey(name: 'api_count_deck') required this.apiCountDeck,
      @JsonKey(name: 'api_count_kdock') required this.apiCountKdock,
      @JsonKey(name: 'api_count_ndock') required this.apiCountNdock,
      @JsonKey(name: 'api_fcoin') required this.apiFcoin,
      @JsonKey(name: 'api_st_win') required this.apiStWin,
      @JsonKey(name: 'api_st_lose') required this.apiStLose,
      @JsonKey(name: 'api_ms_count') required this.apiMsCount,
      @JsonKey(name: 'api_ms_success') required this.apiMsSuccess,
      @JsonKey(name: 'api_pt_win') required this.apiPtWin,
      @JsonKey(name: 'api_pt_lose') required this.apiPtLose,
      @JsonKey(name: 'api_pt_challenged') required this.apiPtChallenged,
      @JsonKey(name: 'api_pt_challenged_win') required this.apiPtChallengedWin,
      @JsonKey(name: 'api_firstflag') required this.apiFirstflag,
      @JsonKey(name: 'api_tutorial_progress') required this.apiTutorialProgress,
      @JsonKey(name: 'api_pvp') required this.apiPvp,
      @JsonKey(name: 'api_medals') required this.apiMedals,
      @JsonKey(name: 'api_large_dock') required this.apiLargeDock});

  factory _$_PortApiDataApiBasicEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiBasicEntityFromJson(json);

  @override
  @JsonKey(name: 'api_member_id')
  String apiMemberId;
  @override
  @JsonKey(name: 'api_nickname')
  String apiNickname;
  @override
  @JsonKey(name: 'api_nickname_id')
  String apiNicknameId;
  @override
  @JsonKey(name: 'api_active_flag')
  int apiActiveFlag;
  @override
  @JsonKey(name: 'api_starttime')
  int apiStarttime;
  @override
  @JsonKey(name: 'api_level')
  int apiLevel;
  @override
  @JsonKey(name: 'api_rank')
  int apiRank;
  @override
  @JsonKey(name: 'api_experience')
  int apiExperience;
  @override
  @JsonKey(name: 'api_fleetname')
  dynamic apiFleetname;
  @override
  @JsonKey(name: 'api_comment')
  String apiComment;
  @override
  @JsonKey(name: 'api_comment_id')
  String apiCommentId;
  @override
  @JsonKey(name: 'api_max_chara')
  int apiMaxChara;
  @override
  @JsonKey(name: 'api_max_slotitem')
  int apiMaxSlotitem;
  @override
  @JsonKey(name: 'api_max_kagu')
  int apiMaxKagu;
  @override
  @JsonKey(name: 'api_playtime')
  int apiPlaytime;
  @override
  @JsonKey(name: 'api_tutorial')
  int apiTutorial;
  @override
  @JsonKey(name: 'api_furniture')
  List<int> apiFurniture;
  @override
  @JsonKey(name: 'api_count_deck')
  int apiCountDeck;
  @override
  @JsonKey(name: 'api_count_kdock')
  int apiCountKdock;
  @override
  @JsonKey(name: 'api_count_ndock')
  int apiCountNdock;
  @override
  @JsonKey(name: 'api_fcoin')
  int apiFcoin;
  @override
  @JsonKey(name: 'api_st_win')
  int apiStWin;
  @override
  @JsonKey(name: 'api_st_lose')
  int apiStLose;
  @override
  @JsonKey(name: 'api_ms_count')
  int apiMsCount;
  @override
  @JsonKey(name: 'api_ms_success')
  int apiMsSuccess;
  @override
  @JsonKey(name: 'api_pt_win')
  int apiPtWin;
  @override
  @JsonKey(name: 'api_pt_lose')
  int apiPtLose;
  @override
  @JsonKey(name: 'api_pt_challenged')
  int apiPtChallenged;
  @override
  @JsonKey(name: 'api_pt_challenged_win')
  int apiPtChallengedWin;
  @override
  @JsonKey(name: 'api_firstflag')
  int apiFirstflag;
  @override
  @JsonKey(name: 'api_tutorial_progress')
  int apiTutorialProgress;
  @override
  @JsonKey(name: 'api_pvp')
  List<int> apiPvp;
  @override
  @JsonKey(name: 'api_medals')
  int apiMedals;
  @override
  @JsonKey(name: 'api_large_dock')
  int apiLargeDock;

  @override
  String toString() {
    return 'PortApiDataApiBasicEntity(apiMemberId: $apiMemberId, apiNickname: $apiNickname, apiNicknameId: $apiNicknameId, apiActiveFlag: $apiActiveFlag, apiStarttime: $apiStarttime, apiLevel: $apiLevel, apiRank: $apiRank, apiExperience: $apiExperience, apiFleetname: $apiFleetname, apiComment: $apiComment, apiCommentId: $apiCommentId, apiMaxChara: $apiMaxChara, apiMaxSlotitem: $apiMaxSlotitem, apiMaxKagu: $apiMaxKagu, apiPlaytime: $apiPlaytime, apiTutorial: $apiTutorial, apiFurniture: $apiFurniture, apiCountDeck: $apiCountDeck, apiCountKdock: $apiCountKdock, apiCountNdock: $apiCountNdock, apiFcoin: $apiFcoin, apiStWin: $apiStWin, apiStLose: $apiStLose, apiMsCount: $apiMsCount, apiMsSuccess: $apiMsSuccess, apiPtWin: $apiPtWin, apiPtLose: $apiPtLose, apiPtChallenged: $apiPtChallenged, apiPtChallengedWin: $apiPtChallengedWin, apiFirstflag: $apiFirstflag, apiTutorialProgress: $apiTutorialProgress, apiPvp: $apiPvp, apiMedals: $apiMedals, apiLargeDock: $apiLargeDock)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiBasicEntityCopyWith<_$_PortApiDataApiBasicEntity>
      get copyWith => __$$_PortApiDataApiBasicEntityCopyWithImpl<
          _$_PortApiDataApiBasicEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiBasicEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiBasicEntity implements PortApiDataApiBasicEntity {
  factory _PortApiDataApiBasicEntity(
      {@JsonKey(name: 'api_member_id') required String apiMemberId,
      @JsonKey(name: 'api_nickname') required String apiNickname,
      @JsonKey(name: 'api_nickname_id') required String apiNicknameId,
      @JsonKey(name: 'api_active_flag') required int apiActiveFlag,
      @JsonKey(name: 'api_starttime') required int apiStarttime,
      @JsonKey(name: 'api_level') required int apiLevel,
      @JsonKey(name: 'api_rank') required int apiRank,
      @JsonKey(name: 'api_experience') required int apiExperience,
      @JsonKey(name: 'api_fleetname') required dynamic apiFleetname,
      @JsonKey(name: 'api_comment') required String apiComment,
      @JsonKey(name: 'api_comment_id') required String apiCommentId,
      @JsonKey(name: 'api_max_chara') required int apiMaxChara,
      @JsonKey(name: 'api_max_slotitem') required int apiMaxSlotitem,
      @JsonKey(name: 'api_max_kagu') required int apiMaxKagu,
      @JsonKey(name: 'api_playtime') required int apiPlaytime,
      @JsonKey(name: 'api_tutorial') required int apiTutorial,
      @JsonKey(name: 'api_furniture') required List<int> apiFurniture,
      @JsonKey(name: 'api_count_deck') required int apiCountDeck,
      @JsonKey(name: 'api_count_kdock') required int apiCountKdock,
      @JsonKey(name: 'api_count_ndock') required int apiCountNdock,
      @JsonKey(name: 'api_fcoin') required int apiFcoin,
      @JsonKey(name: 'api_st_win') required int apiStWin,
      @JsonKey(name: 'api_st_lose') required int apiStLose,
      @JsonKey(name: 'api_ms_count') required int apiMsCount,
      @JsonKey(name: 'api_ms_success') required int apiMsSuccess,
      @JsonKey(name: 'api_pt_win') required int apiPtWin,
      @JsonKey(name: 'api_pt_lose') required int apiPtLose,
      @JsonKey(name: 'api_pt_challenged') required int apiPtChallenged,
      @JsonKey(name: 'api_pt_challenged_win') required int apiPtChallengedWin,
      @JsonKey(name: 'api_firstflag') required int apiFirstflag,
      @JsonKey(name: 'api_tutorial_progress') required int apiTutorialProgress,
      @JsonKey(name: 'api_pvp') required List<int> apiPvp,
      @JsonKey(name: 'api_medals') required int apiMedals,
      @JsonKey(name: 'api_large_dock')
      required int apiLargeDock}) = _$_PortApiDataApiBasicEntity;

  factory _PortApiDataApiBasicEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiBasicEntity.fromJson;

  @override
  @JsonKey(name: 'api_member_id')
  String get apiMemberId;
  @JsonKey(name: 'api_member_id')
  set apiMemberId(String value);
  @override
  @JsonKey(name: 'api_nickname')
  String get apiNickname;
  @JsonKey(name: 'api_nickname')
  set apiNickname(String value);
  @override
  @JsonKey(name: 'api_nickname_id')
  String get apiNicknameId;
  @JsonKey(name: 'api_nickname_id')
  set apiNicknameId(String value);
  @override
  @JsonKey(name: 'api_active_flag')
  int get apiActiveFlag;
  @JsonKey(name: 'api_active_flag')
  set apiActiveFlag(int value);
  @override
  @JsonKey(name: 'api_starttime')
  int get apiStarttime;
  @JsonKey(name: 'api_starttime')
  set apiStarttime(int value);
  @override
  @JsonKey(name: 'api_level')
  int get apiLevel;
  @JsonKey(name: 'api_level')
  set apiLevel(int value);
  @override
  @JsonKey(name: 'api_rank')
  int get apiRank;
  @JsonKey(name: 'api_rank')
  set apiRank(int value);
  @override
  @JsonKey(name: 'api_experience')
  int get apiExperience;
  @JsonKey(name: 'api_experience')
  set apiExperience(int value);
  @override
  @JsonKey(name: 'api_fleetname')
  dynamic get apiFleetname;
  @JsonKey(name: 'api_fleetname')
  set apiFleetname(dynamic value);
  @override
  @JsonKey(name: 'api_comment')
  String get apiComment;
  @JsonKey(name: 'api_comment')
  set apiComment(String value);
  @override
  @JsonKey(name: 'api_comment_id')
  String get apiCommentId;
  @JsonKey(name: 'api_comment_id')
  set apiCommentId(String value);
  @override
  @JsonKey(name: 'api_max_chara')
  int get apiMaxChara;
  @JsonKey(name: 'api_max_chara')
  set apiMaxChara(int value);
  @override
  @JsonKey(name: 'api_max_slotitem')
  int get apiMaxSlotitem;
  @JsonKey(name: 'api_max_slotitem')
  set apiMaxSlotitem(int value);
  @override
  @JsonKey(name: 'api_max_kagu')
  int get apiMaxKagu;
  @JsonKey(name: 'api_max_kagu')
  set apiMaxKagu(int value);
  @override
  @JsonKey(name: 'api_playtime')
  int get apiPlaytime;
  @JsonKey(name: 'api_playtime')
  set apiPlaytime(int value);
  @override
  @JsonKey(name: 'api_tutorial')
  int get apiTutorial;
  @JsonKey(name: 'api_tutorial')
  set apiTutorial(int value);
  @override
  @JsonKey(name: 'api_furniture')
  List<int> get apiFurniture;
  @JsonKey(name: 'api_furniture')
  set apiFurniture(List<int> value);
  @override
  @JsonKey(name: 'api_count_deck')
  int get apiCountDeck;
  @JsonKey(name: 'api_count_deck')
  set apiCountDeck(int value);
  @override
  @JsonKey(name: 'api_count_kdock')
  int get apiCountKdock;
  @JsonKey(name: 'api_count_kdock')
  set apiCountKdock(int value);
  @override
  @JsonKey(name: 'api_count_ndock')
  int get apiCountNdock;
  @JsonKey(name: 'api_count_ndock')
  set apiCountNdock(int value);
  @override
  @JsonKey(name: 'api_fcoin')
  int get apiFcoin;
  @JsonKey(name: 'api_fcoin')
  set apiFcoin(int value);
  @override
  @JsonKey(name: 'api_st_win')
  int get apiStWin;
  @JsonKey(name: 'api_st_win')
  set apiStWin(int value);
  @override
  @JsonKey(name: 'api_st_lose')
  int get apiStLose;
  @JsonKey(name: 'api_st_lose')
  set apiStLose(int value);
  @override
  @JsonKey(name: 'api_ms_count')
  int get apiMsCount;
  @JsonKey(name: 'api_ms_count')
  set apiMsCount(int value);
  @override
  @JsonKey(name: 'api_ms_success')
  int get apiMsSuccess;
  @JsonKey(name: 'api_ms_success')
  set apiMsSuccess(int value);
  @override
  @JsonKey(name: 'api_pt_win')
  int get apiPtWin;
  @JsonKey(name: 'api_pt_win')
  set apiPtWin(int value);
  @override
  @JsonKey(name: 'api_pt_lose')
  int get apiPtLose;
  @JsonKey(name: 'api_pt_lose')
  set apiPtLose(int value);
  @override
  @JsonKey(name: 'api_pt_challenged')
  int get apiPtChallenged;
  @JsonKey(name: 'api_pt_challenged')
  set apiPtChallenged(int value);
  @override
  @JsonKey(name: 'api_pt_challenged_win')
  int get apiPtChallengedWin;
  @JsonKey(name: 'api_pt_challenged_win')
  set apiPtChallengedWin(int value);
  @override
  @JsonKey(name: 'api_firstflag')
  int get apiFirstflag;
  @JsonKey(name: 'api_firstflag')
  set apiFirstflag(int value);
  @override
  @JsonKey(name: 'api_tutorial_progress')
  int get apiTutorialProgress;
  @JsonKey(name: 'api_tutorial_progress')
  set apiTutorialProgress(int value);
  @override
  @JsonKey(name: 'api_pvp')
  List<int> get apiPvp;
  @JsonKey(name: 'api_pvp')
  set apiPvp(List<int> value);
  @override
  @JsonKey(name: 'api_medals')
  int get apiMedals;
  @JsonKey(name: 'api_medals')
  set apiMedals(int value);
  @override
  @JsonKey(name: 'api_large_dock')
  int get apiLargeDock;
  @JsonKey(name: 'api_large_dock')
  set apiLargeDock(int value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataApiBasicEntityCopyWith<_$_PortApiDataApiBasicEntity>
      get copyWith => throw _privateConstructorUsedError;
}

PortApiDataApiLogEntity _$PortApiDataApiLogEntityFromJson(
    Map<String, dynamic> json) {
  return _PortApiDataApiLogEntity.fromJson(json);
}

/// @nodoc
mixin _$PortApiDataApiLogEntity {
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  String get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  String get apiState => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_state')
  set apiState(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_message')
  String get apiMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_message')
  set apiMessage(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortApiDataApiLogEntityCopyWith<PortApiDataApiLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortApiDataApiLogEntityCopyWith<$Res> {
  factory $PortApiDataApiLogEntityCopyWith(PortApiDataApiLogEntity value,
          $Res Function(PortApiDataApiLogEntity) then) =
      _$PortApiDataApiLogEntityCopyWithImpl<$Res, PortApiDataApiLogEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_type') String apiType,
      @JsonKey(name: 'api_state') String apiState,
      @JsonKey(name: 'api_message') String apiMessage});
}

/// @nodoc
class _$PortApiDataApiLogEntityCopyWithImpl<$Res,
        $Val extends PortApiDataApiLogEntity>
    implements $PortApiDataApiLogEntityCopyWith<$Res> {
  _$PortApiDataApiLogEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiNo = null,
    Object? apiType = null,
    Object? apiState = null,
    Object? apiMessage = null,
  }) {
    return _then(_value.copyWith(
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as String,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as String,
      apiMessage: null == apiMessage
          ? _value.apiMessage
          : apiMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortApiDataApiLogEntityCopyWith<$Res>
    implements $PortApiDataApiLogEntityCopyWith<$Res> {
  factory _$$_PortApiDataApiLogEntityCopyWith(_$_PortApiDataApiLogEntity value,
          $Res Function(_$_PortApiDataApiLogEntity) then) =
      __$$_PortApiDataApiLogEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_type') String apiType,
      @JsonKey(name: 'api_state') String apiState,
      @JsonKey(name: 'api_message') String apiMessage});
}

/// @nodoc
class __$$_PortApiDataApiLogEntityCopyWithImpl<$Res>
    extends _$PortApiDataApiLogEntityCopyWithImpl<$Res,
        _$_PortApiDataApiLogEntity>
    implements _$$_PortApiDataApiLogEntityCopyWith<$Res> {
  __$$_PortApiDataApiLogEntityCopyWithImpl(_$_PortApiDataApiLogEntity _value,
      $Res Function(_$_PortApiDataApiLogEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiNo = null,
    Object? apiType = null,
    Object? apiState = null,
    Object? apiMessage = null,
  }) {
    return _then(_$_PortApiDataApiLogEntity(
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as String,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as String,
      apiMessage: null == apiMessage
          ? _value.apiMessage
          : apiMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortApiDataApiLogEntity implements _PortApiDataApiLogEntity {
  _$_PortApiDataApiLogEntity(
      {@JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_type') required this.apiType,
      @JsonKey(name: 'api_state') required this.apiState,
      @JsonKey(name: 'api_message') required this.apiMessage});

  factory _$_PortApiDataApiLogEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PortApiDataApiLogEntityFromJson(json);

  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_type')
  String apiType;
  @override
  @JsonKey(name: 'api_state')
  String apiState;
  @override
  @JsonKey(name: 'api_message')
  String apiMessage;

  @override
  String toString() {
    return 'PortApiDataApiLogEntity(apiNo: $apiNo, apiType: $apiType, apiState: $apiState, apiMessage: $apiMessage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortApiDataApiLogEntityCopyWith<_$_PortApiDataApiLogEntity>
      get copyWith =>
          __$$_PortApiDataApiLogEntityCopyWithImpl<_$_PortApiDataApiLogEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortApiDataApiLogEntityToJson(
      this,
    );
  }
}

abstract class _PortApiDataApiLogEntity implements PortApiDataApiLogEntity {
  factory _PortApiDataApiLogEntity(
          {@JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_type') required String apiType,
          @JsonKey(name: 'api_state') required String apiState,
          @JsonKey(name: 'api_message') required String apiMessage}) =
      _$_PortApiDataApiLogEntity;

  factory _PortApiDataApiLogEntity.fromJson(Map<String, dynamic> json) =
      _$_PortApiDataApiLogEntity.fromJson;

  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_type')
  String get apiType;
  @JsonKey(name: 'api_type')
  set apiType(String value);
  @override
  @JsonKey(name: 'api_state')
  String get apiState;
  @JsonKey(name: 'api_state')
  set apiState(String value);
  @override
  @JsonKey(name: 'api_message')
  String get apiMessage;
  @JsonKey(name: 'api_message')
  set apiMessage(String value);
  @override
  @JsonKey(ignore: true)
  _$$_PortApiDataApiLogEntityCopyWith<_$_PortApiDataApiLogEntity>
      get copyWith => throw _privateConstructorUsedError;
}
