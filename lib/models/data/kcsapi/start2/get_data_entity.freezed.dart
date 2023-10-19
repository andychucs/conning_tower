// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDataEntity _$GetDataEntityFromJson(Map<String, dynamic> json) {
  return _GetDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataEntity {
  @JsonKey(name: 'api_result')
  int get apiResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result')
  set apiResult(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  String get apiResultMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_result_msg')
  set apiResultMsg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  GetDataApiDataEntity get apiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_data')
  set apiData(GetDataApiDataEntity value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataEntityCopyWith<GetDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataEntityCopyWith<$Res> {
  factory $GetDataEntityCopyWith(
          GetDataEntity value, $Res Function(GetDataEntity) then) =
      _$GetDataEntityCopyWithImpl<$Res, GetDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetDataApiDataEntity apiData});

  $GetDataApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class _$GetDataEntityCopyWithImpl<$Res, $Val extends GetDataEntity>
    implements $GetDataEntityCopyWith<$Res> {
  _$GetDataEntityCopyWithImpl(this._value, this._then);

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
              as GetDataApiDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataEntityCopyWith<$Res> get apiData {
    return $GetDataApiDataEntityCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetDataEntityCopyWith<$Res>
    implements $GetDataEntityCopyWith<$Res> {
  factory _$$_GetDataEntityCopyWith(
          _$_GetDataEntity value, $Res Function(_$_GetDataEntity) then) =
      __$$_GetDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_result') int apiResult,
      @JsonKey(name: 'api_result_msg') String apiResultMsg,
      @JsonKey(name: 'api_data') GetDataApiDataEntity apiData});

  @override
  $GetDataApiDataEntityCopyWith<$Res> get apiData;
}

/// @nodoc
class __$$_GetDataEntityCopyWithImpl<$Res>
    extends _$GetDataEntityCopyWithImpl<$Res, _$_GetDataEntity>
    implements _$$_GetDataEntityCopyWith<$Res> {
  __$$_GetDataEntityCopyWithImpl(
      _$_GetDataEntity _value, $Res Function(_$_GetDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? apiResultMsg = null,
    Object? apiData = null,
  }) {
    return _then(_$_GetDataEntity(
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
              as GetDataApiDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataEntity implements _GetDataEntity {
  _$_GetDataEntity(
      {@JsonKey(name: 'api_result') required this.apiResult,
      @JsonKey(name: 'api_result_msg') required this.apiResultMsg,
      @JsonKey(name: 'api_data') required this.apiData});

  factory _$_GetDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_result')
  int apiResult;
  @override
  @JsonKey(name: 'api_result_msg')
  String apiResultMsg;
  @override
  @JsonKey(name: 'api_data')
  GetDataApiDataEntity apiData;

  @override
  String toString() {
    return 'GetDataEntity(apiResult: $apiResult, apiResultMsg: $apiResultMsg, apiData: $apiData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataEntityCopyWith<_$_GetDataEntity> get copyWith =>
      __$$_GetDataEntityCopyWithImpl<_$_GetDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataEntityToJson(
      this,
    );
  }
}

abstract class _GetDataEntity implements GetDataEntity {
  factory _GetDataEntity(
          {@JsonKey(name: 'api_result') required int apiResult,
          @JsonKey(name: 'api_result_msg') required String apiResultMsg,
          @JsonKey(name: 'api_data') required GetDataApiDataEntity apiData}) =
      _$_GetDataEntity;

  factory _GetDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataEntity.fromJson;

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
  GetDataApiDataEntity get apiData;
  @JsonKey(name: 'api_data')
  set apiData(GetDataApiDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataEntityCopyWith<_$_GetDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GetDataApiDataEntity _$GetDataApiDataEntityFromJson(Map<String, dynamic> json) {
  return _GetDataApiDataEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataEntity {
  @JsonKey(name: 'api_mst_ship')
  List<GetDataApiDataApiMstShipEntity> get apiMstShip =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_ship')
  set apiMstShip(List<GetDataApiDataApiMstShipEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_slotitem_equiptype')
  List<GetDataApiDataApiMstSlotitemEquiptypeEntity>
      get apiMstSlotitemEquiptype => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_slotitem_equiptype')
  set apiMstSlotitemEquiptype(
          List<GetDataApiDataApiMstSlotitemEquiptypeEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_exslot')
  List<int> get apiMstEquipExslot => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_exslot')
  set apiMstEquipExslot(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_exslot_ship')
  dynamic get apiMstEquipExslotShip => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_exslot_ship')
  set apiMstEquipExslotShip(dynamic value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_stype')
  List<GetDataApiDataApiMstStypeEntity> get apiMstStype =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_stype')
  set apiMstStype(List<GetDataApiDataApiMstStypeEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_slotitem')
  List<GetDataApiDataApiMstSlotitemEntity> get apiMstSlotitem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_slotitem')
  set apiMstSlotitem(List<GetDataApiDataApiMstSlotitemEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_furnituregraph')
  List<GetDataApiDataApiMstFurnituregraphEntity> get apiMstFurnituregraph =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_furnituregraph')
  set apiMstFurnituregraph(
          List<GetDataApiDataApiMstFurnituregraphEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_useitem')
  List<GetDataApiDataApiMstUseitemEntity> get apiMstUseitem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_useitem')
  set apiMstUseitem(List<GetDataApiDataApiMstUseitemEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_payitem')
  List<GetDataApiDataApiMstPayitemEntity> get apiMstPayitem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_payitem')
  set apiMstPayitem(List<GetDataApiDataApiMstPayitemEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_item_shop')
  GetDataApiDataApiMstItemShopEntity get apiMstItemShop =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_item_shop')
  set apiMstItemShop(GetDataApiDataApiMstItemShopEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_maparea')
  List<GetDataApiDataApiMstMapareaEntity> get apiMstMaparea =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_maparea')
  set apiMstMaparea(List<GetDataApiDataApiMstMapareaEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mapinfo')
  List<GetDataApiDataApiMstMapinfoEntity> get apiMstMapinfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mapinfo')
  set apiMstMapinfo(List<GetDataApiDataApiMstMapinfoEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mapbgm')
  List<GetDataApiDataApiMstMapbgmEntity> get apiMstMapbgm =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mapbgm')
  set apiMstMapbgm(List<GetDataApiDataApiMstMapbgmEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mission')
  List<GetDataApiDataApiMstMissionEntity> get apiMstMission =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_mission')
  set apiMstMission(List<GetDataApiDataApiMstMissionEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_const')
  GetDataApiDataApiMstConstEntity get apiMstConst =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_const')
  set apiMstConst(GetDataApiDataApiMstConstEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_shipupgrade')
  List<GetDataApiDataApiMstShipupgradeEntity> get apiMstShipupgrade =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_shipupgrade')
  set apiMstShipupgrade(List<GetDataApiDataApiMstShipupgradeEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_bgm')
  List<GetDataApiDataApiMstBgmEntity> get apiMstBgm =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_bgm')
  set apiMstBgm(List<GetDataApiDataApiMstBgmEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_ship')
  List<GetDataApiDataApiMstEquipShipEntity> get apiMstEquipShip =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_equip_ship')
  set apiMstEquipShip(List<GetDataApiDataApiMstEquipShipEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_furniture')
  List<GetDataApiDataApiMstFurnitureEntity> get apiMstFurniture =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_furniture')
  set apiMstFurniture(List<GetDataApiDataApiMstFurnitureEntity> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_shipgraph')
  List<GetDataApiDataApiMstShipgraphEntity> get apiMstShipgraph =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_mst_shipgraph')
  set apiMstShipgraph(List<GetDataApiDataApiMstShipgraphEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataEntityCopyWith<GetDataApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataEntityCopyWith<$Res> {
  factory $GetDataApiDataEntityCopyWith(GetDataApiDataEntity value,
          $Res Function(GetDataApiDataEntity) then) =
      _$GetDataApiDataEntityCopyWithImpl<$Res, GetDataApiDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_mst_ship')
      List<GetDataApiDataApiMstShipEntity> apiMstShip,
      @JsonKey(name: 'api_mst_slotitem_equiptype')
      List<GetDataApiDataApiMstSlotitemEquiptypeEntity> apiMstSlotitemEquiptype,
      @JsonKey(name: 'api_mst_equip_exslot') List<int> apiMstEquipExslot,
      @JsonKey(name: 'api_mst_equip_exslot_ship') dynamic apiMstEquipExslotShip,
      @JsonKey(name: 'api_mst_stype')
      List<GetDataApiDataApiMstStypeEntity> apiMstStype,
      @JsonKey(name: 'api_mst_slotitem')
      List<GetDataApiDataApiMstSlotitemEntity> apiMstSlotitem,
      @JsonKey(name: 'api_mst_furnituregraph')
      List<GetDataApiDataApiMstFurnituregraphEntity> apiMstFurnituregraph,
      @JsonKey(name: 'api_mst_useitem')
      List<GetDataApiDataApiMstUseitemEntity> apiMstUseitem,
      @JsonKey(name: 'api_mst_payitem')
      List<GetDataApiDataApiMstPayitemEntity> apiMstPayitem,
      @JsonKey(name: 'api_mst_item_shop')
      GetDataApiDataApiMstItemShopEntity apiMstItemShop,
      @JsonKey(name: 'api_mst_maparea')
      List<GetDataApiDataApiMstMapareaEntity> apiMstMaparea,
      @JsonKey(name: 'api_mst_mapinfo')
      List<GetDataApiDataApiMstMapinfoEntity> apiMstMapinfo,
      @JsonKey(name: 'api_mst_mapbgm')
      List<GetDataApiDataApiMstMapbgmEntity> apiMstMapbgm,
      @JsonKey(name: 'api_mst_mission')
      List<GetDataApiDataApiMstMissionEntity> apiMstMission,
      @JsonKey(name: 'api_mst_const')
      GetDataApiDataApiMstConstEntity apiMstConst,
      @JsonKey(name: 'api_mst_shipupgrade')
      List<GetDataApiDataApiMstShipupgradeEntity> apiMstShipupgrade,
      @JsonKey(name: 'api_mst_bgm')
      List<GetDataApiDataApiMstBgmEntity> apiMstBgm,
      @JsonKey(name: 'api_mst_equip_ship')
      List<GetDataApiDataApiMstEquipShipEntity> apiMstEquipShip,
      @JsonKey(name: 'api_mst_furniture')
      List<GetDataApiDataApiMstFurnitureEntity> apiMstFurniture,
      @JsonKey(name: 'api_mst_shipgraph')
      List<GetDataApiDataApiMstShipgraphEntity> apiMstShipgraph});

  $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> get apiMstItemShop;
  $GetDataApiDataApiMstConstEntityCopyWith<$Res> get apiMstConst;
}

/// @nodoc
class _$GetDataApiDataEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataEntity>
    implements $GetDataApiDataEntityCopyWith<$Res> {
  _$GetDataApiDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMstShip = null,
    Object? apiMstSlotitemEquiptype = null,
    Object? apiMstEquipExslot = null,
    Object? apiMstEquipExslotShip = freezed,
    Object? apiMstStype = null,
    Object? apiMstSlotitem = null,
    Object? apiMstFurnituregraph = null,
    Object? apiMstUseitem = null,
    Object? apiMstPayitem = null,
    Object? apiMstItemShop = null,
    Object? apiMstMaparea = null,
    Object? apiMstMapinfo = null,
    Object? apiMstMapbgm = null,
    Object? apiMstMission = null,
    Object? apiMstConst = null,
    Object? apiMstShipupgrade = null,
    Object? apiMstBgm = null,
    Object? apiMstEquipShip = null,
    Object? apiMstFurniture = null,
    Object? apiMstShipgraph = null,
  }) {
    return _then(_value.copyWith(
      apiMstShip: null == apiMstShip
          ? _value.apiMstShip
          : apiMstShip // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipEntity>,
      apiMstSlotitemEquiptype: null == apiMstSlotitemEquiptype
          ? _value.apiMstSlotitemEquiptype
          : apiMstSlotitemEquiptype // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstSlotitemEquiptypeEntity>,
      apiMstEquipExslot: null == apiMstEquipExslot
          ? _value.apiMstEquipExslot
          : apiMstEquipExslot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMstEquipExslotShip: freezed == apiMstEquipExslotShip
          ? _value.apiMstEquipExslotShip
          : apiMstEquipExslotShip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiMstStype: null == apiMstStype
          ? _value.apiMstStype
          : apiMstStype // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstStypeEntity>,
      apiMstSlotitem: null == apiMstSlotitem
          ? _value.apiMstSlotitem
          : apiMstSlotitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstSlotitemEntity>,
      apiMstFurnituregraph: null == apiMstFurnituregraph
          ? _value.apiMstFurnituregraph
          : apiMstFurnituregraph // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstFurnituregraphEntity>,
      apiMstUseitem: null == apiMstUseitem
          ? _value.apiMstUseitem
          : apiMstUseitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstUseitemEntity>,
      apiMstPayitem: null == apiMstPayitem
          ? _value.apiMstPayitem
          : apiMstPayitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstPayitemEntity>,
      apiMstItemShop: null == apiMstItemShop
          ? _value.apiMstItemShop
          : apiMstItemShop // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstItemShopEntity,
      apiMstMaparea: null == apiMstMaparea
          ? _value.apiMstMaparea
          : apiMstMaparea // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapareaEntity>,
      apiMstMapinfo: null == apiMstMapinfo
          ? _value.apiMstMapinfo
          : apiMstMapinfo // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapinfoEntity>,
      apiMstMapbgm: null == apiMstMapbgm
          ? _value.apiMstMapbgm
          : apiMstMapbgm // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapbgmEntity>,
      apiMstMission: null == apiMstMission
          ? _value.apiMstMission
          : apiMstMission // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMissionEntity>,
      apiMstConst: null == apiMstConst
          ? _value.apiMstConst
          : apiMstConst // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstEntity,
      apiMstShipupgrade: null == apiMstShipupgrade
          ? _value.apiMstShipupgrade
          : apiMstShipupgrade // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipupgradeEntity>,
      apiMstBgm: null == apiMstBgm
          ? _value.apiMstBgm
          : apiMstBgm // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstBgmEntity>,
      apiMstEquipShip: null == apiMstEquipShip
          ? _value.apiMstEquipShip
          : apiMstEquipShip // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstEquipShipEntity>,
      apiMstFurniture: null == apiMstFurniture
          ? _value.apiMstFurniture
          : apiMstFurniture // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstFurnitureEntity>,
      apiMstShipgraph: null == apiMstShipgraph
          ? _value.apiMstShipgraph
          : apiMstShipgraph // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipgraphEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> get apiMstItemShop {
    return $GetDataApiDataApiMstItemShopEntityCopyWith<$Res>(
        _value.apiMstItemShop, (value) {
      return _then(_value.copyWith(apiMstItemShop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataApiMstConstEntityCopyWith<$Res> get apiMstConst {
    return $GetDataApiDataApiMstConstEntityCopyWith<$Res>(_value.apiMstConst,
        (value) {
      return _then(_value.copyWith(apiMstConst: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataEntityCopyWith<$Res>
    implements $GetDataApiDataEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataEntityCopyWith(_$_GetDataApiDataEntity value,
          $Res Function(_$_GetDataApiDataEntity) then) =
      __$$_GetDataApiDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_mst_ship')
      List<GetDataApiDataApiMstShipEntity> apiMstShip,
      @JsonKey(name: 'api_mst_slotitem_equiptype')
      List<GetDataApiDataApiMstSlotitemEquiptypeEntity> apiMstSlotitemEquiptype,
      @JsonKey(name: 'api_mst_equip_exslot') List<int> apiMstEquipExslot,
      @JsonKey(name: 'api_mst_equip_exslot_ship') dynamic apiMstEquipExslotShip,
      @JsonKey(name: 'api_mst_stype')
      List<GetDataApiDataApiMstStypeEntity> apiMstStype,
      @JsonKey(name: 'api_mst_slotitem')
      List<GetDataApiDataApiMstSlotitemEntity> apiMstSlotitem,
      @JsonKey(name: 'api_mst_furnituregraph')
      List<GetDataApiDataApiMstFurnituregraphEntity> apiMstFurnituregraph,
      @JsonKey(name: 'api_mst_useitem')
      List<GetDataApiDataApiMstUseitemEntity> apiMstUseitem,
      @JsonKey(name: 'api_mst_payitem')
      List<GetDataApiDataApiMstPayitemEntity> apiMstPayitem,
      @JsonKey(name: 'api_mst_item_shop')
      GetDataApiDataApiMstItemShopEntity apiMstItemShop,
      @JsonKey(name: 'api_mst_maparea')
      List<GetDataApiDataApiMstMapareaEntity> apiMstMaparea,
      @JsonKey(name: 'api_mst_mapinfo')
      List<GetDataApiDataApiMstMapinfoEntity> apiMstMapinfo,
      @JsonKey(name: 'api_mst_mapbgm')
      List<GetDataApiDataApiMstMapbgmEntity> apiMstMapbgm,
      @JsonKey(name: 'api_mst_mission')
      List<GetDataApiDataApiMstMissionEntity> apiMstMission,
      @JsonKey(name: 'api_mst_const')
      GetDataApiDataApiMstConstEntity apiMstConst,
      @JsonKey(name: 'api_mst_shipupgrade')
      List<GetDataApiDataApiMstShipupgradeEntity> apiMstShipupgrade,
      @JsonKey(name: 'api_mst_bgm')
      List<GetDataApiDataApiMstBgmEntity> apiMstBgm,
      @JsonKey(name: 'api_mst_equip_ship')
      List<GetDataApiDataApiMstEquipShipEntity> apiMstEquipShip,
      @JsonKey(name: 'api_mst_furniture')
      List<GetDataApiDataApiMstFurnitureEntity> apiMstFurniture,
      @JsonKey(name: 'api_mst_shipgraph')
      List<GetDataApiDataApiMstShipgraphEntity> apiMstShipgraph});

  @override
  $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> get apiMstItemShop;
  @override
  $GetDataApiDataApiMstConstEntityCopyWith<$Res> get apiMstConst;
}

/// @nodoc
class __$$_GetDataApiDataEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataEntityCopyWithImpl<$Res, _$_GetDataApiDataEntity>
    implements _$$_GetDataApiDataEntityCopyWith<$Res> {
  __$$_GetDataApiDataEntityCopyWithImpl(_$_GetDataApiDataEntity _value,
      $Res Function(_$_GetDataApiDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiMstShip = null,
    Object? apiMstSlotitemEquiptype = null,
    Object? apiMstEquipExslot = null,
    Object? apiMstEquipExslotShip = freezed,
    Object? apiMstStype = null,
    Object? apiMstSlotitem = null,
    Object? apiMstFurnituregraph = null,
    Object? apiMstUseitem = null,
    Object? apiMstPayitem = null,
    Object? apiMstItemShop = null,
    Object? apiMstMaparea = null,
    Object? apiMstMapinfo = null,
    Object? apiMstMapbgm = null,
    Object? apiMstMission = null,
    Object? apiMstConst = null,
    Object? apiMstShipupgrade = null,
    Object? apiMstBgm = null,
    Object? apiMstEquipShip = null,
    Object? apiMstFurniture = null,
    Object? apiMstShipgraph = null,
  }) {
    return _then(_$_GetDataApiDataEntity(
      apiMstShip: null == apiMstShip
          ? _value.apiMstShip
          : apiMstShip // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipEntity>,
      apiMstSlotitemEquiptype: null == apiMstSlotitemEquiptype
          ? _value.apiMstSlotitemEquiptype
          : apiMstSlotitemEquiptype // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstSlotitemEquiptypeEntity>,
      apiMstEquipExslot: null == apiMstEquipExslot
          ? _value.apiMstEquipExslot
          : apiMstEquipExslot // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMstEquipExslotShip: freezed == apiMstEquipExslotShip
          ? _value.apiMstEquipExslotShip
          : apiMstEquipExslotShip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiMstStype: null == apiMstStype
          ? _value.apiMstStype
          : apiMstStype // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstStypeEntity>,
      apiMstSlotitem: null == apiMstSlotitem
          ? _value.apiMstSlotitem
          : apiMstSlotitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstSlotitemEntity>,
      apiMstFurnituregraph: null == apiMstFurnituregraph
          ? _value.apiMstFurnituregraph
          : apiMstFurnituregraph // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstFurnituregraphEntity>,
      apiMstUseitem: null == apiMstUseitem
          ? _value.apiMstUseitem
          : apiMstUseitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstUseitemEntity>,
      apiMstPayitem: null == apiMstPayitem
          ? _value.apiMstPayitem
          : apiMstPayitem // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstPayitemEntity>,
      apiMstItemShop: null == apiMstItemShop
          ? _value.apiMstItemShop
          : apiMstItemShop // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstItemShopEntity,
      apiMstMaparea: null == apiMstMaparea
          ? _value.apiMstMaparea
          : apiMstMaparea // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapareaEntity>,
      apiMstMapinfo: null == apiMstMapinfo
          ? _value.apiMstMapinfo
          : apiMstMapinfo // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapinfoEntity>,
      apiMstMapbgm: null == apiMstMapbgm
          ? _value.apiMstMapbgm
          : apiMstMapbgm // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMapbgmEntity>,
      apiMstMission: null == apiMstMission
          ? _value.apiMstMission
          : apiMstMission // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstMissionEntity>,
      apiMstConst: null == apiMstConst
          ? _value.apiMstConst
          : apiMstConst // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstEntity,
      apiMstShipupgrade: null == apiMstShipupgrade
          ? _value.apiMstShipupgrade
          : apiMstShipupgrade // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipupgradeEntity>,
      apiMstBgm: null == apiMstBgm
          ? _value.apiMstBgm
          : apiMstBgm // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstBgmEntity>,
      apiMstEquipShip: null == apiMstEquipShip
          ? _value.apiMstEquipShip
          : apiMstEquipShip // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstEquipShipEntity>,
      apiMstFurniture: null == apiMstFurniture
          ? _value.apiMstFurniture
          : apiMstFurniture // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstFurnitureEntity>,
      apiMstShipgraph: null == apiMstShipgraph
          ? _value.apiMstShipgraph
          : apiMstShipgraph // ignore: cast_nullable_to_non_nullable
              as List<GetDataApiDataApiMstShipgraphEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataEntity implements _GetDataApiDataEntity {
  _$_GetDataApiDataEntity(
      {@JsonKey(name: 'api_mst_ship') required this.apiMstShip,
      @JsonKey(name: 'api_mst_slotitem_equiptype')
      required this.apiMstSlotitemEquiptype,
      @JsonKey(name: 'api_mst_equip_exslot') required this.apiMstEquipExslot,
      @JsonKey(name: 'api_mst_equip_exslot_ship')
      required this.apiMstEquipExslotShip,
      @JsonKey(name: 'api_mst_stype') required this.apiMstStype,
      @JsonKey(name: 'api_mst_slotitem') required this.apiMstSlotitem,
      @JsonKey(name: 'api_mst_furnituregraph')
      required this.apiMstFurnituregraph,
      @JsonKey(name: 'api_mst_useitem') required this.apiMstUseitem,
      @JsonKey(name: 'api_mst_payitem') required this.apiMstPayitem,
      @JsonKey(name: 'api_mst_item_shop') required this.apiMstItemShop,
      @JsonKey(name: 'api_mst_maparea') required this.apiMstMaparea,
      @JsonKey(name: 'api_mst_mapinfo') required this.apiMstMapinfo,
      @JsonKey(name: 'api_mst_mapbgm') required this.apiMstMapbgm,
      @JsonKey(name: 'api_mst_mission') required this.apiMstMission,
      @JsonKey(name: 'api_mst_const') required this.apiMstConst,
      @JsonKey(name: 'api_mst_shipupgrade') required this.apiMstShipupgrade,
      @JsonKey(name: 'api_mst_bgm') required this.apiMstBgm,
      @JsonKey(name: 'api_mst_equip_ship') required this.apiMstEquipShip,
      @JsonKey(name: 'api_mst_furniture') required this.apiMstFurniture,
      @JsonKey(name: 'api_mst_shipgraph') required this.apiMstShipgraph});

  factory _$_GetDataApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GetDataApiDataEntityFromJson(json);

  @override
  @JsonKey(name: 'api_mst_ship')
  List<GetDataApiDataApiMstShipEntity> apiMstShip;
  @override
  @JsonKey(name: 'api_mst_slotitem_equiptype')
  List<GetDataApiDataApiMstSlotitemEquiptypeEntity> apiMstSlotitemEquiptype;
  @override
  @JsonKey(name: 'api_mst_equip_exslot')
  List<int> apiMstEquipExslot;
  @override
  @JsonKey(name: 'api_mst_equip_exslot_ship')
  dynamic apiMstEquipExslotShip;
  @override
  @JsonKey(name: 'api_mst_stype')
  List<GetDataApiDataApiMstStypeEntity> apiMstStype;
  @override
  @JsonKey(name: 'api_mst_slotitem')
  List<GetDataApiDataApiMstSlotitemEntity> apiMstSlotitem;
  @override
  @JsonKey(name: 'api_mst_furnituregraph')
  List<GetDataApiDataApiMstFurnituregraphEntity> apiMstFurnituregraph;
  @override
  @JsonKey(name: 'api_mst_useitem')
  List<GetDataApiDataApiMstUseitemEntity> apiMstUseitem;
  @override
  @JsonKey(name: 'api_mst_payitem')
  List<GetDataApiDataApiMstPayitemEntity> apiMstPayitem;
  @override
  @JsonKey(name: 'api_mst_item_shop')
  GetDataApiDataApiMstItemShopEntity apiMstItemShop;
  @override
  @JsonKey(name: 'api_mst_maparea')
  List<GetDataApiDataApiMstMapareaEntity> apiMstMaparea;
  @override
  @JsonKey(name: 'api_mst_mapinfo')
  List<GetDataApiDataApiMstMapinfoEntity> apiMstMapinfo;
  @override
  @JsonKey(name: 'api_mst_mapbgm')
  List<GetDataApiDataApiMstMapbgmEntity> apiMstMapbgm;
  @override
  @JsonKey(name: 'api_mst_mission')
  List<GetDataApiDataApiMstMissionEntity> apiMstMission;
  @override
  @JsonKey(name: 'api_mst_const')
  GetDataApiDataApiMstConstEntity apiMstConst;
  @override
  @JsonKey(name: 'api_mst_shipupgrade')
  List<GetDataApiDataApiMstShipupgradeEntity> apiMstShipupgrade;
  @override
  @JsonKey(name: 'api_mst_bgm')
  List<GetDataApiDataApiMstBgmEntity> apiMstBgm;
  @override
  @JsonKey(name: 'api_mst_equip_ship')
  List<GetDataApiDataApiMstEquipShipEntity> apiMstEquipShip;
  @override
  @JsonKey(name: 'api_mst_furniture')
  List<GetDataApiDataApiMstFurnitureEntity> apiMstFurniture;
  @override
  @JsonKey(name: 'api_mst_shipgraph')
  List<GetDataApiDataApiMstShipgraphEntity> apiMstShipgraph;

  @override
  String toString() {
    return 'GetDataApiDataEntity(apiMstShip: $apiMstShip, apiMstSlotitemEquiptype: $apiMstSlotitemEquiptype, apiMstEquipExslot: $apiMstEquipExslot, apiMstEquipExslotShip: $apiMstEquipExslotShip, apiMstStype: $apiMstStype, apiMstSlotitem: $apiMstSlotitem, apiMstFurnituregraph: $apiMstFurnituregraph, apiMstUseitem: $apiMstUseitem, apiMstPayitem: $apiMstPayitem, apiMstItemShop: $apiMstItemShop, apiMstMaparea: $apiMstMaparea, apiMstMapinfo: $apiMstMapinfo, apiMstMapbgm: $apiMstMapbgm, apiMstMission: $apiMstMission, apiMstConst: $apiMstConst, apiMstShipupgrade: $apiMstShipupgrade, apiMstBgm: $apiMstBgm, apiMstEquipShip: $apiMstEquipShip, apiMstFurniture: $apiMstFurniture, apiMstShipgraph: $apiMstShipgraph)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataEntityCopyWith<_$_GetDataApiDataEntity> get copyWith =>
      __$$_GetDataApiDataEntityCopyWithImpl<_$_GetDataApiDataEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataEntity implements GetDataApiDataEntity {
  factory _GetDataApiDataEntity(
      {@JsonKey(name: 'api_mst_ship')
      required List<GetDataApiDataApiMstShipEntity> apiMstShip,
      @JsonKey(name: 'api_mst_slotitem_equiptype')
      required List<GetDataApiDataApiMstSlotitemEquiptypeEntity>
          apiMstSlotitemEquiptype,
      @JsonKey(name: 'api_mst_equip_exslot')
      required List<int> apiMstEquipExslot,
      @JsonKey(name: 'api_mst_equip_exslot_ship')
      required dynamic apiMstEquipExslotShip,
      @JsonKey(name: 'api_mst_stype')
      required List<GetDataApiDataApiMstStypeEntity> apiMstStype,
      @JsonKey(name: 'api_mst_slotitem')
      required List<GetDataApiDataApiMstSlotitemEntity> apiMstSlotitem,
      @JsonKey(name: 'api_mst_furnituregraph')
      required List<GetDataApiDataApiMstFurnituregraphEntity>
          apiMstFurnituregraph,
      @JsonKey(name: 'api_mst_useitem')
      required List<GetDataApiDataApiMstUseitemEntity> apiMstUseitem,
      @JsonKey(name: 'api_mst_payitem')
      required List<GetDataApiDataApiMstPayitemEntity> apiMstPayitem,
      @JsonKey(name: 'api_mst_item_shop')
      required GetDataApiDataApiMstItemShopEntity apiMstItemShop,
      @JsonKey(name: 'api_mst_maparea')
      required List<GetDataApiDataApiMstMapareaEntity> apiMstMaparea,
      @JsonKey(name: 'api_mst_mapinfo')
      required List<GetDataApiDataApiMstMapinfoEntity> apiMstMapinfo,
      @JsonKey(name: 'api_mst_mapbgm')
      required List<GetDataApiDataApiMstMapbgmEntity> apiMstMapbgm,
      @JsonKey(name: 'api_mst_mission')
      required List<GetDataApiDataApiMstMissionEntity> apiMstMission,
      @JsonKey(name: 'api_mst_const')
      required GetDataApiDataApiMstConstEntity apiMstConst,
      @JsonKey(name: 'api_mst_shipupgrade')
      required List<GetDataApiDataApiMstShipupgradeEntity> apiMstShipupgrade,
      @JsonKey(name: 'api_mst_bgm')
      required List<GetDataApiDataApiMstBgmEntity> apiMstBgm,
      @JsonKey(name: 'api_mst_equip_ship')
      required List<GetDataApiDataApiMstEquipShipEntity> apiMstEquipShip,
      @JsonKey(name: 'api_mst_furniture')
      required List<GetDataApiDataApiMstFurnitureEntity> apiMstFurniture,
      @JsonKey(name: 'api_mst_shipgraph')
      required List<GetDataApiDataApiMstShipgraphEntity>
          apiMstShipgraph}) = _$_GetDataApiDataEntity;

  factory _GetDataApiDataEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataApiDataEntity.fromJson;

  @override
  @JsonKey(name: 'api_mst_ship')
  List<GetDataApiDataApiMstShipEntity> get apiMstShip;
  @JsonKey(name: 'api_mst_ship')
  set apiMstShip(List<GetDataApiDataApiMstShipEntity> value);
  @override
  @JsonKey(name: 'api_mst_slotitem_equiptype')
  List<GetDataApiDataApiMstSlotitemEquiptypeEntity> get apiMstSlotitemEquiptype;
  @JsonKey(name: 'api_mst_slotitem_equiptype')
  set apiMstSlotitemEquiptype(
      List<GetDataApiDataApiMstSlotitemEquiptypeEntity> value);
  @override
  @JsonKey(name: 'api_mst_equip_exslot')
  List<int> get apiMstEquipExslot;
  @JsonKey(name: 'api_mst_equip_exslot')
  set apiMstEquipExslot(List<int> value);
  @override
  @JsonKey(name: 'api_mst_equip_exslot_ship')
  dynamic get apiMstEquipExslotShip;
  @JsonKey(name: 'api_mst_equip_exslot_ship')
  set apiMstEquipExslotShip(dynamic value);
  @override
  @JsonKey(name: 'api_mst_stype')
  List<GetDataApiDataApiMstStypeEntity> get apiMstStype;
  @JsonKey(name: 'api_mst_stype')
  set apiMstStype(List<GetDataApiDataApiMstStypeEntity> value);
  @override
  @JsonKey(name: 'api_mst_slotitem')
  List<GetDataApiDataApiMstSlotitemEntity> get apiMstSlotitem;
  @JsonKey(name: 'api_mst_slotitem')
  set apiMstSlotitem(List<GetDataApiDataApiMstSlotitemEntity> value);
  @override
  @JsonKey(name: 'api_mst_furnituregraph')
  List<GetDataApiDataApiMstFurnituregraphEntity> get apiMstFurnituregraph;
  @JsonKey(name: 'api_mst_furnituregraph')
  set apiMstFurnituregraph(
      List<GetDataApiDataApiMstFurnituregraphEntity> value);
  @override
  @JsonKey(name: 'api_mst_useitem')
  List<GetDataApiDataApiMstUseitemEntity> get apiMstUseitem;
  @JsonKey(name: 'api_mst_useitem')
  set apiMstUseitem(List<GetDataApiDataApiMstUseitemEntity> value);
  @override
  @JsonKey(name: 'api_mst_payitem')
  List<GetDataApiDataApiMstPayitemEntity> get apiMstPayitem;
  @JsonKey(name: 'api_mst_payitem')
  set apiMstPayitem(List<GetDataApiDataApiMstPayitemEntity> value);
  @override
  @JsonKey(name: 'api_mst_item_shop')
  GetDataApiDataApiMstItemShopEntity get apiMstItemShop;
  @JsonKey(name: 'api_mst_item_shop')
  set apiMstItemShop(GetDataApiDataApiMstItemShopEntity value);
  @override
  @JsonKey(name: 'api_mst_maparea')
  List<GetDataApiDataApiMstMapareaEntity> get apiMstMaparea;
  @JsonKey(name: 'api_mst_maparea')
  set apiMstMaparea(List<GetDataApiDataApiMstMapareaEntity> value);
  @override
  @JsonKey(name: 'api_mst_mapinfo')
  List<GetDataApiDataApiMstMapinfoEntity> get apiMstMapinfo;
  @JsonKey(name: 'api_mst_mapinfo')
  set apiMstMapinfo(List<GetDataApiDataApiMstMapinfoEntity> value);
  @override
  @JsonKey(name: 'api_mst_mapbgm')
  List<GetDataApiDataApiMstMapbgmEntity> get apiMstMapbgm;
  @JsonKey(name: 'api_mst_mapbgm')
  set apiMstMapbgm(List<GetDataApiDataApiMstMapbgmEntity> value);
  @override
  @JsonKey(name: 'api_mst_mission')
  List<GetDataApiDataApiMstMissionEntity> get apiMstMission;
  @JsonKey(name: 'api_mst_mission')
  set apiMstMission(List<GetDataApiDataApiMstMissionEntity> value);
  @override
  @JsonKey(name: 'api_mst_const')
  GetDataApiDataApiMstConstEntity get apiMstConst;
  @JsonKey(name: 'api_mst_const')
  set apiMstConst(GetDataApiDataApiMstConstEntity value);
  @override
  @JsonKey(name: 'api_mst_shipupgrade')
  List<GetDataApiDataApiMstShipupgradeEntity> get apiMstShipupgrade;
  @JsonKey(name: 'api_mst_shipupgrade')
  set apiMstShipupgrade(List<GetDataApiDataApiMstShipupgradeEntity> value);
  @override
  @JsonKey(name: 'api_mst_bgm')
  List<GetDataApiDataApiMstBgmEntity> get apiMstBgm;
  @JsonKey(name: 'api_mst_bgm')
  set apiMstBgm(List<GetDataApiDataApiMstBgmEntity> value);
  @override
  @JsonKey(name: 'api_mst_equip_ship')
  List<GetDataApiDataApiMstEquipShipEntity> get apiMstEquipShip;
  @JsonKey(name: 'api_mst_equip_ship')
  set apiMstEquipShip(List<GetDataApiDataApiMstEquipShipEntity> value);
  @override
  @JsonKey(name: 'api_mst_furniture')
  List<GetDataApiDataApiMstFurnitureEntity> get apiMstFurniture;
  @JsonKey(name: 'api_mst_furniture')
  set apiMstFurniture(List<GetDataApiDataApiMstFurnitureEntity> value);
  @override
  @JsonKey(name: 'api_mst_shipgraph')
  List<GetDataApiDataApiMstShipgraphEntity> get apiMstShipgraph;
  @JsonKey(name: 'api_mst_shipgraph')
  set apiMstShipgraph(List<GetDataApiDataApiMstShipgraphEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataEntityCopyWith<_$_GetDataApiDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GetDataApiDataApiMstShipEntity _$GetDataApiDataApiMstShipEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstShipEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstShipEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int? get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sort_id')
  int get apiSortId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sort_id')
  set apiSortId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_yomi')
  String get apiYomi => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_yomi')
  set apiYomi(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stype')
  int get apiStype => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_stype')
  set apiStype(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ctype')
  int get apiCtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ctype')
  set apiCtype(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterlv')
  int? get apiAfterlv => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterlv')
  set apiAfterlv(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_aftershipid')
  String? get apiAftershipid => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_aftershipid')
  set apiAftershipid(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taik')
  List<int>? get apiTaik => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taik')
  set apiTaik(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_souk')
  List<int>? get apiSouk => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_souk')
  set apiSouk(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houg')
  List<int>? get apiHoug => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houg')
  set apiHoug(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raig')
  List<int>? get apiRaig => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raig')
  set apiRaig(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tyku')
  List<int>? get apiTyku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tyku')
  set apiTyku(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_luck')
  List<int>? get apiLuck => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_luck')
  set apiLuck(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  int? get apiSoku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  set apiSoku(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  int? get apiLeng => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  set apiLeng(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_num')
  int? get apiSlotNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_slot_num')
  set apiSlotNum(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maxeq')
  List<int>? get apiMaxeq => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maxeq')
  set apiMaxeq(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_buildtime')
  int? get apiBuildtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_buildtime')
  set apiBuildtime(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_broken')
  List<int>? get apiBroken => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_broken')
  set apiBroken(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_powup')
  List<int>? get apiPowup => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_powup')
  set apiPowup(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_backs')
  int? get apiBacks => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_backs')
  set apiBacks(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_getmes')
  String? get apiGetmes => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_getmes')
  set apiGetmes(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterfuel')
  int? get apiAfterfuel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterfuel')
  set apiAfterfuel(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterbull')
  int? get apiAfterbull => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_afterbull')
  set apiAfterbull(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fuel_max')
  int? get apiFuelMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_fuel_max')
  set apiFuelMax(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bull_max')
  int? get apiBullMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bull_max')
  set apiBullMax(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_voicef')
  int? get apiVoicef => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_voicef')
  set apiVoicef(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstShipEntityCopyWith<GetDataApiDataApiMstShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstShipEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstShipEntityCopyWith(
          GetDataApiDataApiMstShipEntity value,
          $Res Function(GetDataApiDataApiMstShipEntity) then) =
      _$GetDataApiDataApiMstShipEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstShipEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int? apiSortno,
      @JsonKey(name: 'api_sort_id') int apiSortId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_yomi') String apiYomi,
      @JsonKey(name: 'api_stype') int apiStype,
      @JsonKey(name: 'api_ctype') int apiCtype,
      @JsonKey(name: 'api_afterlv') int? apiAfterlv,
      @JsonKey(name: 'api_aftershipid') String? apiAftershipid,
      @JsonKey(name: 'api_taik') List<int>? apiTaik,
      @JsonKey(name: 'api_souk') List<int>? apiSouk,
      @JsonKey(name: 'api_houg') List<int>? apiHoug,
      @JsonKey(name: 'api_raig') List<int>? apiRaig,
      @JsonKey(name: 'api_tyku') List<int>? apiTyku,
      @JsonKey(name: 'api_luck') List<int>? apiLuck,
      @JsonKey(name: 'api_soku') int? apiSoku,
      @JsonKey(name: 'api_leng') int? apiLeng,
      @JsonKey(name: 'api_slot_num') int? apiSlotNum,
      @JsonKey(name: 'api_maxeq') List<int>? apiMaxeq,
      @JsonKey(name: 'api_buildtime') int? apiBuildtime,
      @JsonKey(name: 'api_broken') List<int>? apiBroken,
      @JsonKey(name: 'api_powup') List<int>? apiPowup,
      @JsonKey(name: 'api_backs') int? apiBacks,
      @JsonKey(name: 'api_getmes') String? apiGetmes,
      @JsonKey(name: 'api_afterfuel') int? apiAfterfuel,
      @JsonKey(name: 'api_afterbull') int? apiAfterbull,
      @JsonKey(name: 'api_fuel_max') int? apiFuelMax,
      @JsonKey(name: 'api_bull_max') int? apiBullMax,
      @JsonKey(name: 'api_voicef') int? apiVoicef});
}

/// @nodoc
class _$GetDataApiDataApiMstShipEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstShipEntity>
    implements $GetDataApiDataApiMstShipEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstShipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = freezed,
    Object? apiSortId = null,
    Object? apiName = null,
    Object? apiYomi = null,
    Object? apiStype = null,
    Object? apiCtype = null,
    Object? apiAfterlv = freezed,
    Object? apiAftershipid = freezed,
    Object? apiTaik = freezed,
    Object? apiSouk = freezed,
    Object? apiHoug = freezed,
    Object? apiRaig = freezed,
    Object? apiTyku = freezed,
    Object? apiLuck = freezed,
    Object? apiSoku = freezed,
    Object? apiLeng = freezed,
    Object? apiSlotNum = freezed,
    Object? apiMaxeq = freezed,
    Object? apiBuildtime = freezed,
    Object? apiBroken = freezed,
    Object? apiPowup = freezed,
    Object? apiBacks = freezed,
    Object? apiGetmes = freezed,
    Object? apiAfterfuel = freezed,
    Object? apiAfterbull = freezed,
    Object? apiFuelMax = freezed,
    Object? apiBullMax = freezed,
    Object? apiVoicef = freezed,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: freezed == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSortId: null == apiSortId
          ? _value.apiSortId
          : apiSortId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiYomi: null == apiYomi
          ? _value.apiYomi
          : apiYomi // ignore: cast_nullable_to_non_nullable
              as String,
      apiStype: null == apiStype
          ? _value.apiStype
          : apiStype // ignore: cast_nullable_to_non_nullable
              as int,
      apiCtype: null == apiCtype
          ? _value.apiCtype
          : apiCtype // ignore: cast_nullable_to_non_nullable
              as int,
      apiAfterlv: freezed == apiAfterlv
          ? _value.apiAfterlv
          : apiAfterlv // ignore: cast_nullable_to_non_nullable
              as int?,
      apiAftershipid: freezed == apiAftershipid
          ? _value.apiAftershipid
          : apiAftershipid // ignore: cast_nullable_to_non_nullable
              as String?,
      apiTaik: freezed == apiTaik
          ? _value.apiTaik
          : apiTaik // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSouk: freezed == apiSouk
          ? _value.apiSouk
          : apiSouk // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiHoug: freezed == apiHoug
          ? _value.apiHoug
          : apiHoug // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiRaig: freezed == apiRaig
          ? _value.apiRaig
          : apiRaig // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiTyku: freezed == apiTyku
          ? _value.apiTyku
          : apiTyku // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiLuck: freezed == apiLuck
          ? _value.apiLuck
          : apiLuck // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSoku: freezed == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int?,
      apiLeng: freezed == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotNum: freezed == apiSlotNum
          ? _value.apiSlotNum
          : apiSlotNum // ignore: cast_nullable_to_non_nullable
              as int?,
      apiMaxeq: freezed == apiMaxeq
          ? _value.apiMaxeq
          : apiMaxeq // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBuildtime: freezed == apiBuildtime
          ? _value.apiBuildtime
          : apiBuildtime // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBroken: freezed == apiBroken
          ? _value.apiBroken
          : apiBroken // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPowup: freezed == apiPowup
          ? _value.apiPowup
          : apiPowup // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBacks: freezed == apiBacks
          ? _value.apiBacks
          : apiBacks // ignore: cast_nullable_to_non_nullable
              as int?,
      apiGetmes: freezed == apiGetmes
          ? _value.apiGetmes
          : apiGetmes // ignore: cast_nullable_to_non_nullable
              as String?,
      apiAfterfuel: freezed == apiAfterfuel
          ? _value.apiAfterfuel
          : apiAfterfuel // ignore: cast_nullable_to_non_nullable
              as int?,
      apiAfterbull: freezed == apiAfterbull
          ? _value.apiAfterbull
          : apiAfterbull // ignore: cast_nullable_to_non_nullable
              as int?,
      apiFuelMax: freezed == apiFuelMax
          ? _value.apiFuelMax
          : apiFuelMax // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBullMax: freezed == apiBullMax
          ? _value.apiBullMax
          : apiBullMax // ignore: cast_nullable_to_non_nullable
              as int?,
      apiVoicef: freezed == apiVoicef
          ? _value.apiVoicef
          : apiVoicef // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstShipEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstShipEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstShipEntityCopyWith(
          _$_GetDataApiDataApiMstShipEntity value,
          $Res Function(_$_GetDataApiDataApiMstShipEntity) then) =
      __$$_GetDataApiDataApiMstShipEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int? apiSortno,
      @JsonKey(name: 'api_sort_id') int apiSortId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_yomi') String apiYomi,
      @JsonKey(name: 'api_stype') int apiStype,
      @JsonKey(name: 'api_ctype') int apiCtype,
      @JsonKey(name: 'api_afterlv') int? apiAfterlv,
      @JsonKey(name: 'api_aftershipid') String? apiAftershipid,
      @JsonKey(name: 'api_taik') List<int>? apiTaik,
      @JsonKey(name: 'api_souk') List<int>? apiSouk,
      @JsonKey(name: 'api_houg') List<int>? apiHoug,
      @JsonKey(name: 'api_raig') List<int>? apiRaig,
      @JsonKey(name: 'api_tyku') List<int>? apiTyku,
      @JsonKey(name: 'api_luck') List<int>? apiLuck,
      @JsonKey(name: 'api_soku') int? apiSoku,
      @JsonKey(name: 'api_leng') int? apiLeng,
      @JsonKey(name: 'api_slot_num') int? apiSlotNum,
      @JsonKey(name: 'api_maxeq') List<int>? apiMaxeq,
      @JsonKey(name: 'api_buildtime') int? apiBuildtime,
      @JsonKey(name: 'api_broken') List<int>? apiBroken,
      @JsonKey(name: 'api_powup') List<int>? apiPowup,
      @JsonKey(name: 'api_backs') int? apiBacks,
      @JsonKey(name: 'api_getmes') String? apiGetmes,
      @JsonKey(name: 'api_afterfuel') int? apiAfterfuel,
      @JsonKey(name: 'api_afterbull') int? apiAfterbull,
      @JsonKey(name: 'api_fuel_max') int? apiFuelMax,
      @JsonKey(name: 'api_bull_max') int? apiBullMax,
      @JsonKey(name: 'api_voicef') int? apiVoicef});
}

/// @nodoc
class __$$_GetDataApiDataApiMstShipEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstShipEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstShipEntity>
    implements _$$_GetDataApiDataApiMstShipEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstShipEntityCopyWithImpl(
      _$_GetDataApiDataApiMstShipEntity _value,
      $Res Function(_$_GetDataApiDataApiMstShipEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = freezed,
    Object? apiSortId = null,
    Object? apiName = null,
    Object? apiYomi = null,
    Object? apiStype = null,
    Object? apiCtype = null,
    Object? apiAfterlv = freezed,
    Object? apiAftershipid = freezed,
    Object? apiTaik = freezed,
    Object? apiSouk = freezed,
    Object? apiHoug = freezed,
    Object? apiRaig = freezed,
    Object? apiTyku = freezed,
    Object? apiLuck = freezed,
    Object? apiSoku = freezed,
    Object? apiLeng = freezed,
    Object? apiSlotNum = freezed,
    Object? apiMaxeq = freezed,
    Object? apiBuildtime = freezed,
    Object? apiBroken = freezed,
    Object? apiPowup = freezed,
    Object? apiBacks = freezed,
    Object? apiGetmes = freezed,
    Object? apiAfterfuel = freezed,
    Object? apiAfterbull = freezed,
    Object? apiFuelMax = freezed,
    Object? apiBullMax = freezed,
    Object? apiVoicef = freezed,
  }) {
    return _then(_$_GetDataApiDataApiMstShipEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: freezed == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSortId: null == apiSortId
          ? _value.apiSortId
          : apiSortId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiYomi: null == apiYomi
          ? _value.apiYomi
          : apiYomi // ignore: cast_nullable_to_non_nullable
              as String,
      apiStype: null == apiStype
          ? _value.apiStype
          : apiStype // ignore: cast_nullable_to_non_nullable
              as int,
      apiCtype: null == apiCtype
          ? _value.apiCtype
          : apiCtype // ignore: cast_nullable_to_non_nullable
              as int,
      apiAfterlv: freezed == apiAfterlv
          ? _value.apiAfterlv
          : apiAfterlv // ignore: cast_nullable_to_non_nullable
              as int?,
      apiAftershipid: freezed == apiAftershipid
          ? _value.apiAftershipid
          : apiAftershipid // ignore: cast_nullable_to_non_nullable
              as String?,
      apiTaik: freezed == apiTaik
          ? _value.apiTaik
          : apiTaik // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSouk: freezed == apiSouk
          ? _value.apiSouk
          : apiSouk // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiHoug: freezed == apiHoug
          ? _value.apiHoug
          : apiHoug // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiRaig: freezed == apiRaig
          ? _value.apiRaig
          : apiRaig // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiTyku: freezed == apiTyku
          ? _value.apiTyku
          : apiTyku // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiLuck: freezed == apiLuck
          ? _value.apiLuck
          : apiLuck // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSoku: freezed == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int?,
      apiLeng: freezed == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int?,
      apiSlotNum: freezed == apiSlotNum
          ? _value.apiSlotNum
          : apiSlotNum // ignore: cast_nullable_to_non_nullable
              as int?,
      apiMaxeq: freezed == apiMaxeq
          ? _value.apiMaxeq
          : apiMaxeq // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBuildtime: freezed == apiBuildtime
          ? _value.apiBuildtime
          : apiBuildtime // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBroken: freezed == apiBroken
          ? _value.apiBroken
          : apiBroken // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPowup: freezed == apiPowup
          ? _value.apiPowup
          : apiPowup // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBacks: freezed == apiBacks
          ? _value.apiBacks
          : apiBacks // ignore: cast_nullable_to_non_nullable
              as int?,
      apiGetmes: freezed == apiGetmes
          ? _value.apiGetmes
          : apiGetmes // ignore: cast_nullable_to_non_nullable
              as String?,
      apiAfterfuel: freezed == apiAfterfuel
          ? _value.apiAfterfuel
          : apiAfterfuel // ignore: cast_nullable_to_non_nullable
              as int?,
      apiAfterbull: freezed == apiAfterbull
          ? _value.apiAfterbull
          : apiAfterbull // ignore: cast_nullable_to_non_nullable
              as int?,
      apiFuelMax: freezed == apiFuelMax
          ? _value.apiFuelMax
          : apiFuelMax // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBullMax: freezed == apiBullMax
          ? _value.apiBullMax
          : apiBullMax // ignore: cast_nullable_to_non_nullable
              as int?,
      apiVoicef: freezed == apiVoicef
          ? _value.apiVoicef
          : apiVoicef // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstShipEntity
    implements _GetDataApiDataApiMstShipEntity {
  _$_GetDataApiDataApiMstShipEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_sortno') this.apiSortno,
      @JsonKey(name: 'api_sort_id') required this.apiSortId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_yomi') required this.apiYomi,
      @JsonKey(name: 'api_stype') required this.apiStype,
      @JsonKey(name: 'api_ctype') required this.apiCtype,
      @JsonKey(name: 'api_afterlv') this.apiAfterlv,
      @JsonKey(name: 'api_aftershipid') this.apiAftershipid,
      @JsonKey(name: 'api_taik') this.apiTaik,
      @JsonKey(name: 'api_souk') this.apiSouk,
      @JsonKey(name: 'api_houg') this.apiHoug,
      @JsonKey(name: 'api_raig') this.apiRaig,
      @JsonKey(name: 'api_tyku') this.apiTyku,
      @JsonKey(name: 'api_luck') this.apiLuck,
      @JsonKey(name: 'api_soku') this.apiSoku,
      @JsonKey(name: 'api_leng') this.apiLeng,
      @JsonKey(name: 'api_slot_num') this.apiSlotNum,
      @JsonKey(name: 'api_maxeq') this.apiMaxeq,
      @JsonKey(name: 'api_buildtime') this.apiBuildtime,
      @JsonKey(name: 'api_broken') this.apiBroken,
      @JsonKey(name: 'api_powup') this.apiPowup,
      @JsonKey(name: 'api_backs') this.apiBacks,
      @JsonKey(name: 'api_getmes') this.apiGetmes,
      @JsonKey(name: 'api_afterfuel') this.apiAfterfuel,
      @JsonKey(name: 'api_afterbull') this.apiAfterbull,
      @JsonKey(name: 'api_fuel_max') this.apiFuelMax,
      @JsonKey(name: 'api_bull_max') this.apiBullMax,
      @JsonKey(name: 'api_voicef') this.apiVoicef});

  factory _$_GetDataApiDataApiMstShipEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstShipEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_sortno')
  int? apiSortno;
  @override
  @JsonKey(name: 'api_sort_id')
  int apiSortId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_yomi')
  String apiYomi;
  @override
  @JsonKey(name: 'api_stype')
  int apiStype;
  @override
  @JsonKey(name: 'api_ctype')
  int apiCtype;
  @override
  @JsonKey(name: 'api_afterlv')
  int? apiAfterlv;
  @override
  @JsonKey(name: 'api_aftershipid')
  String? apiAftershipid;
  @override
  @JsonKey(name: 'api_taik')
  List<int>? apiTaik;
  @override
  @JsonKey(name: 'api_souk')
  List<int>? apiSouk;
  @override
  @JsonKey(name: 'api_houg')
  List<int>? apiHoug;
  @override
  @JsonKey(name: 'api_raig')
  List<int>? apiRaig;
  @override
  @JsonKey(name: 'api_tyku')
  List<int>? apiTyku;
  @override
  @JsonKey(name: 'api_luck')
  List<int>? apiLuck;
  @override
  @JsonKey(name: 'api_soku')
  int? apiSoku;
  @override
  @JsonKey(name: 'api_leng')
  int? apiLeng;
  @override
  @JsonKey(name: 'api_slot_num')
  int? apiSlotNum;
  @override
  @JsonKey(name: 'api_maxeq')
  List<int>? apiMaxeq;
  @override
  @JsonKey(name: 'api_buildtime')
  int? apiBuildtime;
  @override
  @JsonKey(name: 'api_broken')
  List<int>? apiBroken;
  @override
  @JsonKey(name: 'api_powup')
  List<int>? apiPowup;
  @override
  @JsonKey(name: 'api_backs')
  int? apiBacks;
  @override
  @JsonKey(name: 'api_getmes')
  String? apiGetmes;
  @override
  @JsonKey(name: 'api_afterfuel')
  int? apiAfterfuel;
  @override
  @JsonKey(name: 'api_afterbull')
  int? apiAfterbull;
  @override
  @JsonKey(name: 'api_fuel_max')
  int? apiFuelMax;
  @override
  @JsonKey(name: 'api_bull_max')
  int? apiBullMax;
  @override
  @JsonKey(name: 'api_voicef')
  int? apiVoicef;

  @override
  String toString() {
    return 'GetDataApiDataApiMstShipEntity(apiId: $apiId, apiSortno: $apiSortno, apiSortId: $apiSortId, apiName: $apiName, apiYomi: $apiYomi, apiStype: $apiStype, apiCtype: $apiCtype, apiAfterlv: $apiAfterlv, apiAftershipid: $apiAftershipid, apiTaik: $apiTaik, apiSouk: $apiSouk, apiHoug: $apiHoug, apiRaig: $apiRaig, apiTyku: $apiTyku, apiLuck: $apiLuck, apiSoku: $apiSoku, apiLeng: $apiLeng, apiSlotNum: $apiSlotNum, apiMaxeq: $apiMaxeq, apiBuildtime: $apiBuildtime, apiBroken: $apiBroken, apiPowup: $apiPowup, apiBacks: $apiBacks, apiGetmes: $apiGetmes, apiAfterfuel: $apiAfterfuel, apiAfterbull: $apiAfterbull, apiFuelMax: $apiFuelMax, apiBullMax: $apiBullMax, apiVoicef: $apiVoicef)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstShipEntityCopyWith<_$_GetDataApiDataApiMstShipEntity>
      get copyWith => __$$_GetDataApiDataApiMstShipEntityCopyWithImpl<
          _$_GetDataApiDataApiMstShipEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstShipEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstShipEntity
    implements GetDataApiDataApiMstShipEntity {
  factory _GetDataApiDataApiMstShipEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_sortno') int? apiSortno,
          @JsonKey(name: 'api_sort_id') required int apiSortId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_yomi') required String apiYomi,
          @JsonKey(name: 'api_stype') required int apiStype,
          @JsonKey(name: 'api_ctype') required int apiCtype,
          @JsonKey(name: 'api_afterlv') int? apiAfterlv,
          @JsonKey(name: 'api_aftershipid') String? apiAftershipid,
          @JsonKey(name: 'api_taik') List<int>? apiTaik,
          @JsonKey(name: 'api_souk') List<int>? apiSouk,
          @JsonKey(name: 'api_houg') List<int>? apiHoug,
          @JsonKey(name: 'api_raig') List<int>? apiRaig,
          @JsonKey(name: 'api_tyku') List<int>? apiTyku,
          @JsonKey(name: 'api_luck') List<int>? apiLuck,
          @JsonKey(name: 'api_soku') int? apiSoku,
          @JsonKey(name: 'api_leng') int? apiLeng,
          @JsonKey(name: 'api_slot_num') int? apiSlotNum,
          @JsonKey(name: 'api_maxeq') List<int>? apiMaxeq,
          @JsonKey(name: 'api_buildtime') int? apiBuildtime,
          @JsonKey(name: 'api_broken') List<int>? apiBroken,
          @JsonKey(name: 'api_powup') List<int>? apiPowup,
          @JsonKey(name: 'api_backs') int? apiBacks,
          @JsonKey(name: 'api_getmes') String? apiGetmes,
          @JsonKey(name: 'api_afterfuel') int? apiAfterfuel,
          @JsonKey(name: 'api_afterbull') int? apiAfterbull,
          @JsonKey(name: 'api_fuel_max') int? apiFuelMax,
          @JsonKey(name: 'api_bull_max') int? apiBullMax,
          @JsonKey(name: 'api_voicef') int? apiVoicef}) =
      _$_GetDataApiDataApiMstShipEntity;

  factory _GetDataApiDataApiMstShipEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstShipEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_sortno')
  int? get apiSortno;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int? value);
  @override
  @JsonKey(name: 'api_sort_id')
  int get apiSortId;
  @JsonKey(name: 'api_sort_id')
  set apiSortId(int value);
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_yomi')
  String get apiYomi;
  @JsonKey(name: 'api_yomi')
  set apiYomi(String value);
  @override
  @JsonKey(name: 'api_stype')
  int get apiStype;
  @JsonKey(name: 'api_stype')
  set apiStype(int value);
  @override
  @JsonKey(name: 'api_ctype')
  int get apiCtype;
  @JsonKey(name: 'api_ctype')
  set apiCtype(int value);
  @override
  @JsonKey(name: 'api_afterlv')
  int? get apiAfterlv;
  @JsonKey(name: 'api_afterlv')
  set apiAfterlv(int? value);
  @override
  @JsonKey(name: 'api_aftershipid')
  String? get apiAftershipid;
  @JsonKey(name: 'api_aftershipid')
  set apiAftershipid(String? value);
  @override
  @JsonKey(name: 'api_taik')
  List<int>? get apiTaik;
  @JsonKey(name: 'api_taik')
  set apiTaik(List<int>? value);
  @override
  @JsonKey(name: 'api_souk')
  List<int>? get apiSouk;
  @JsonKey(name: 'api_souk')
  set apiSouk(List<int>? value);
  @override
  @JsonKey(name: 'api_houg')
  List<int>? get apiHoug;
  @JsonKey(name: 'api_houg')
  set apiHoug(List<int>? value);
  @override
  @JsonKey(name: 'api_raig')
  List<int>? get apiRaig;
  @JsonKey(name: 'api_raig')
  set apiRaig(List<int>? value);
  @override
  @JsonKey(name: 'api_tyku')
  List<int>? get apiTyku;
  @JsonKey(name: 'api_tyku')
  set apiTyku(List<int>? value);
  @override
  @JsonKey(name: 'api_luck')
  List<int>? get apiLuck;
  @JsonKey(name: 'api_luck')
  set apiLuck(List<int>? value);
  @override
  @JsonKey(name: 'api_soku')
  int? get apiSoku;
  @JsonKey(name: 'api_soku')
  set apiSoku(int? value);
  @override
  @JsonKey(name: 'api_leng')
  int? get apiLeng;
  @JsonKey(name: 'api_leng')
  set apiLeng(int? value);
  @override
  @JsonKey(name: 'api_slot_num')
  int? get apiSlotNum;
  @JsonKey(name: 'api_slot_num')
  set apiSlotNum(int? value);
  @override
  @JsonKey(name: 'api_maxeq')
  List<int>? get apiMaxeq;
  @JsonKey(name: 'api_maxeq')
  set apiMaxeq(List<int>? value);
  @override
  @JsonKey(name: 'api_buildtime')
  int? get apiBuildtime;
  @JsonKey(name: 'api_buildtime')
  set apiBuildtime(int? value);
  @override
  @JsonKey(name: 'api_broken')
  List<int>? get apiBroken;
  @JsonKey(name: 'api_broken')
  set apiBroken(List<int>? value);
  @override
  @JsonKey(name: 'api_powup')
  List<int>? get apiPowup;
  @JsonKey(name: 'api_powup')
  set apiPowup(List<int>? value);
  @override
  @JsonKey(name: 'api_backs')
  int? get apiBacks;
  @JsonKey(name: 'api_backs')
  set apiBacks(int? value);
  @override
  @JsonKey(name: 'api_getmes')
  String? get apiGetmes;
  @JsonKey(name: 'api_getmes')
  set apiGetmes(String? value);
  @override
  @JsonKey(name: 'api_afterfuel')
  int? get apiAfterfuel;
  @JsonKey(name: 'api_afterfuel')
  set apiAfterfuel(int? value);
  @override
  @JsonKey(name: 'api_afterbull')
  int? get apiAfterbull;
  @JsonKey(name: 'api_afterbull')
  set apiAfterbull(int? value);
  @override
  @JsonKey(name: 'api_fuel_max')
  int? get apiFuelMax;
  @JsonKey(name: 'api_fuel_max')
  set apiFuelMax(int? value);
  @override
  @JsonKey(name: 'api_bull_max')
  int? get apiBullMax;
  @JsonKey(name: 'api_bull_max')
  set apiBullMax(int? value);
  @override
  @JsonKey(name: 'api_voicef')
  int? get apiVoicef;
  @JsonKey(name: 'api_voicef')
  set apiVoicef(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstShipEntityCopyWith<_$_GetDataApiDataApiMstShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstSlotitemEquiptypeEntity
    _$GetDataApiDataApiMstSlotitemEquiptypeEntityFromJson(
        Map<String, dynamic> json) {
  return _GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstSlotitemEquiptypeEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_show_flg')
  int get apiShowFlg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_show_flg')
  set apiShowFlg(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<
          GetDataApiDataApiMstSlotitemEquiptypeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith(
          GetDataApiDataApiMstSlotitemEquiptypeEntity value,
          $Res Function(GetDataApiDataApiMstSlotitemEquiptypeEntity) then) =
      _$GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstSlotitemEquiptypeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_show_flg') int apiShowFlg});
}

/// @nodoc
class _$GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstSlotitemEquiptypeEntity>
    implements $GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
    Object? apiShowFlg = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiShowFlg: null == apiShowFlg
          ? _value.apiShowFlg
          : apiShowFlg // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith(
          _$_GetDataApiDataApiMstSlotitemEquiptypeEntity value,
          $Res Function(_$_GetDataApiDataApiMstSlotitemEquiptypeEntity) then) =
      __$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_show_flg') int apiShowFlg});
}

/// @nodoc
class __$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstSlotitemEquiptypeEntity>
    implements _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl(
      _$_GetDataApiDataApiMstSlotitemEquiptypeEntity _value,
      $Res Function(_$_GetDataApiDataApiMstSlotitemEquiptypeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
    Object? apiShowFlg = null,
  }) {
    return _then(_$_GetDataApiDataApiMstSlotitemEquiptypeEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiShowFlg: null == apiShowFlg
          ? _value.apiShowFlg
          : apiShowFlg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstSlotitemEquiptypeEntity
    implements _GetDataApiDataApiMstSlotitemEquiptypeEntity {
  _$_GetDataApiDataApiMstSlotitemEquiptypeEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_show_flg') required this.apiShowFlg});

  factory _$_GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_show_flg')
  int apiShowFlg;

  @override
  String toString() {
    return 'GetDataApiDataApiMstSlotitemEquiptypeEntity(apiId: $apiId, apiName: $apiName, apiShowFlg: $apiShowFlg)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<
          _$_GetDataApiDataApiMstSlotitemEquiptypeEntity>
      get copyWith =>
          __$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWithImpl<
              _$_GetDataApiDataApiMstSlotitemEquiptypeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstSlotitemEquiptypeEntity
    implements GetDataApiDataApiMstSlotitemEquiptypeEntity {
  factory _GetDataApiDataApiMstSlotitemEquiptypeEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_show_flg') required int apiShowFlg}) =
      _$_GetDataApiDataApiMstSlotitemEquiptypeEntity;

  factory _GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstSlotitemEquiptypeEntity.fromJson;

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
  @JsonKey(name: 'api_show_flg')
  int get apiShowFlg;
  @JsonKey(name: 'api_show_flg')
  set apiShowFlg(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstSlotitemEquiptypeEntityCopyWith<
          _$_GetDataApiDataApiMstSlotitemEquiptypeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstStypeEntity _$GetDataApiDataApiMstStypeEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstStypeEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstStypeEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_scnt')
  int get apiScnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_scnt')
  set apiScnt(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kcnt')
  int get apiKcnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kcnt')
  set apiKcnt(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_equip_type')
  dynamic get apiEquipType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_equip_type')
  set apiEquipType(dynamic value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstStypeEntityCopyWith<GetDataApiDataApiMstStypeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstStypeEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstStypeEntityCopyWith(
          GetDataApiDataApiMstStypeEntity value,
          $Res Function(GetDataApiDataApiMstStypeEntity) then) =
      _$GetDataApiDataApiMstStypeEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstStypeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_scnt') int apiScnt,
      @JsonKey(name: 'api_kcnt') int apiKcnt,
      @JsonKey(name: 'api_equip_type') dynamic apiEquipType});
}

/// @nodoc
class _$GetDataApiDataApiMstStypeEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstStypeEntity>
    implements $GetDataApiDataApiMstStypeEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstStypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiName = null,
    Object? apiScnt = null,
    Object? apiKcnt = null,
    Object? apiEquipType = freezed,
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
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiScnt: null == apiScnt
          ? _value.apiScnt
          : apiScnt // ignore: cast_nullable_to_non_nullable
              as int,
      apiKcnt: null == apiKcnt
          ? _value.apiKcnt
          : apiKcnt // ignore: cast_nullable_to_non_nullable
              as int,
      apiEquipType: freezed == apiEquipType
          ? _value.apiEquipType
          : apiEquipType // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstStypeEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstStypeEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstStypeEntityCopyWith(
          _$_GetDataApiDataApiMstStypeEntity value,
          $Res Function(_$_GetDataApiDataApiMstStypeEntity) then) =
      __$$_GetDataApiDataApiMstStypeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_scnt') int apiScnt,
      @JsonKey(name: 'api_kcnt') int apiKcnt,
      @JsonKey(name: 'api_equip_type') dynamic apiEquipType});
}

/// @nodoc
class __$$_GetDataApiDataApiMstStypeEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstStypeEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstStypeEntity>
    implements _$$_GetDataApiDataApiMstStypeEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstStypeEntityCopyWithImpl(
      _$_GetDataApiDataApiMstStypeEntity _value,
      $Res Function(_$_GetDataApiDataApiMstStypeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiName = null,
    Object? apiScnt = null,
    Object? apiKcnt = null,
    Object? apiEquipType = freezed,
  }) {
    return _then(_$_GetDataApiDataApiMstStypeEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiScnt: null == apiScnt
          ? _value.apiScnt
          : apiScnt // ignore: cast_nullable_to_non_nullable
              as int,
      apiKcnt: null == apiKcnt
          ? _value.apiKcnt
          : apiKcnt // ignore: cast_nullable_to_non_nullable
              as int,
      apiEquipType: freezed == apiEquipType
          ? _value.apiEquipType
          : apiEquipType // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstStypeEntity
    implements _GetDataApiDataApiMstStypeEntity {
  _$_GetDataApiDataApiMstStypeEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_sortno') required this.apiSortno,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_scnt') required this.apiScnt,
      @JsonKey(name: 'api_kcnt') required this.apiKcnt,
      @JsonKey(name: 'api_equip_type') required this.apiEquipType});

  factory _$_GetDataApiDataApiMstStypeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstStypeEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_sortno')
  int apiSortno;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_scnt')
  int apiScnt;
  @override
  @JsonKey(name: 'api_kcnt')
  int apiKcnt;
  @override
  @JsonKey(name: 'api_equip_type')
  dynamic apiEquipType;

  @override
  String toString() {
    return 'GetDataApiDataApiMstStypeEntity(apiId: $apiId, apiSortno: $apiSortno, apiName: $apiName, apiScnt: $apiScnt, apiKcnt: $apiKcnt, apiEquipType: $apiEquipType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstStypeEntityCopyWith<
          _$_GetDataApiDataApiMstStypeEntity>
      get copyWith => __$$_GetDataApiDataApiMstStypeEntityCopyWithImpl<
          _$_GetDataApiDataApiMstStypeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstStypeEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstStypeEntity
    implements GetDataApiDataApiMstStypeEntity {
  factory _GetDataApiDataApiMstStypeEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_sortno') required int apiSortno,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_scnt') required int apiScnt,
          @JsonKey(name: 'api_kcnt') required int apiKcnt,
          @JsonKey(name: 'api_equip_type') required dynamic apiEquipType}) =
      _$_GetDataApiDataApiMstStypeEntity;

  factory _GetDataApiDataApiMstStypeEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstStypeEntity.fromJson;

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
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_scnt')
  int get apiScnt;
  @JsonKey(name: 'api_scnt')
  set apiScnt(int value);
  @override
  @JsonKey(name: 'api_kcnt')
  int get apiKcnt;
  @JsonKey(name: 'api_kcnt')
  set apiKcnt(int value);
  @override
  @JsonKey(name: 'api_equip_type')
  dynamic get apiEquipType;
  @JsonKey(name: 'api_equip_type')
  set apiEquipType(dynamic value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstStypeEntityCopyWith<
          _$_GetDataApiDataApiMstStypeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstSlotitemEntity _$GetDataApiDataApiMstSlotitemEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstSlotitemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstSlotitemEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  List<int> get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taik')
  int get apiTaik => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_taik')
  set apiTaik(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_souk')
  int get apiSouk => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_souk')
  set apiSouk(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houg')
  int get apiHoug => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houg')
  set apiHoug(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raig')
  int get apiRaig => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raig')
  set apiRaig(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  int get apiSoku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_soku')
  set apiSoku(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_baku')
  int get apiBaku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_baku')
  set apiBaku(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tyku')
  int get apiTyku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tyku')
  set apiTyku(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tais')
  int get apiTais => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_tais')
  set apiTais(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_atap')
  int get apiAtap => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_atap')
  set apiAtap(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houm')
  int get apiHoum => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houm')
  set apiHoum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raim')
  int get apiRaim => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raim')
  set apiRaim(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houk')
  int get apiHouk => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_houk')
  set apiHouk(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raik')
  int get apiRaik => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_raik')
  set apiRaik(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bakk')
  int get apiBakk => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_bakk')
  set apiBakk(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_saku')
  int get apiSaku => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_saku')
  set apiSaku(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sakb')
  int get apiSakb => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sakb')
  set apiSakb(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_luck')
  int get apiLuck => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_luck')
  set apiLuck(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  int get apiLeng => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_leng')
  set apiLeng(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rare')
  int get apiRare => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rare')
  set apiRare(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_broken')
  List<int> get apiBroken => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_broken')
  set apiBroken(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_usebull')
  String get apiUsebull => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_usebull')
  set apiUsebull(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  int? get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  set apiVersion(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstSlotitemEntityCopyWith<
          GetDataApiDataApiMstSlotitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstSlotitemEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstSlotitemEntityCopyWith(
          GetDataApiDataApiMstSlotitemEntity value,
          $Res Function(GetDataApiDataApiMstSlotitemEntity) then) =
      _$GetDataApiDataApiMstSlotitemEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstSlotitemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_type') List<int> apiType,
      @JsonKey(name: 'api_taik') int apiTaik,
      @JsonKey(name: 'api_souk') int apiSouk,
      @JsonKey(name: 'api_houg') int apiHoug,
      @JsonKey(name: 'api_raig') int apiRaig,
      @JsonKey(name: 'api_soku') int apiSoku,
      @JsonKey(name: 'api_baku') int apiBaku,
      @JsonKey(name: 'api_tyku') int apiTyku,
      @JsonKey(name: 'api_tais') int apiTais,
      @JsonKey(name: 'api_atap') int apiAtap,
      @JsonKey(name: 'api_houm') int apiHoum,
      @JsonKey(name: 'api_raim') int apiRaim,
      @JsonKey(name: 'api_houk') int apiHouk,
      @JsonKey(name: 'api_raik') int apiRaik,
      @JsonKey(name: 'api_bakk') int apiBakk,
      @JsonKey(name: 'api_saku') int apiSaku,
      @JsonKey(name: 'api_sakb') int apiSakb,
      @JsonKey(name: 'api_luck') int apiLuck,
      @JsonKey(name: 'api_leng') int apiLeng,
      @JsonKey(name: 'api_rare') int apiRare,
      @JsonKey(name: 'api_broken') List<int> apiBroken,
      @JsonKey(name: 'api_usebull') String apiUsebull,
      @JsonKey(name: 'api_version') int? apiVersion});
}

/// @nodoc
class _$GetDataApiDataApiMstSlotitemEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstSlotitemEntity>
    implements $GetDataApiDataApiMstSlotitemEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstSlotitemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiName = null,
    Object? apiType = null,
    Object? apiTaik = null,
    Object? apiSouk = null,
    Object? apiHoug = null,
    Object? apiRaig = null,
    Object? apiSoku = null,
    Object? apiBaku = null,
    Object? apiTyku = null,
    Object? apiTais = null,
    Object? apiAtap = null,
    Object? apiHoum = null,
    Object? apiRaim = null,
    Object? apiHouk = null,
    Object? apiRaik = null,
    Object? apiBakk = null,
    Object? apiSaku = null,
    Object? apiSakb = null,
    Object? apiLuck = null,
    Object? apiLeng = null,
    Object? apiRare = null,
    Object? apiBroken = null,
    Object? apiUsebull = null,
    Object? apiVersion = freezed,
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
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaik: null == apiTaik
          ? _value.apiTaik
          : apiTaik // ignore: cast_nullable_to_non_nullable
              as int,
      apiSouk: null == apiSouk
          ? _value.apiSouk
          : apiSouk // ignore: cast_nullable_to_non_nullable
              as int,
      apiHoug: null == apiHoug
          ? _value.apiHoug
          : apiHoug // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaig: null == apiRaig
          ? _value.apiRaig
          : apiRaig // ignore: cast_nullable_to_non_nullable
              as int,
      apiSoku: null == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int,
      apiBaku: null == apiBaku
          ? _value.apiBaku
          : apiBaku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTyku: null == apiTyku
          ? _value.apiTyku
          : apiTyku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTais: null == apiTais
          ? _value.apiTais
          : apiTais // ignore: cast_nullable_to_non_nullable
              as int,
      apiAtap: null == apiAtap
          ? _value.apiAtap
          : apiAtap // ignore: cast_nullable_to_non_nullable
              as int,
      apiHoum: null == apiHoum
          ? _value.apiHoum
          : apiHoum // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaim: null == apiRaim
          ? _value.apiRaim
          : apiRaim // ignore: cast_nullable_to_non_nullable
              as int,
      apiHouk: null == apiHouk
          ? _value.apiHouk
          : apiHouk // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaik: null == apiRaik
          ? _value.apiRaik
          : apiRaik // ignore: cast_nullable_to_non_nullable
              as int,
      apiBakk: null == apiBakk
          ? _value.apiBakk
          : apiBakk // ignore: cast_nullable_to_non_nullable
              as int,
      apiSaku: null == apiSaku
          ? _value.apiSaku
          : apiSaku // ignore: cast_nullable_to_non_nullable
              as int,
      apiSakb: null == apiSakb
          ? _value.apiSakb
          : apiSakb // ignore: cast_nullable_to_non_nullable
              as int,
      apiLuck: null == apiLuck
          ? _value.apiLuck
          : apiLuck // ignore: cast_nullable_to_non_nullable
              as int,
      apiLeng: null == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int,
      apiRare: null == apiRare
          ? _value.apiRare
          : apiRare // ignore: cast_nullable_to_non_nullable
              as int,
      apiBroken: null == apiBroken
          ? _value.apiBroken
          : apiBroken // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiUsebull: null == apiUsebull
          ? _value.apiUsebull
          : apiUsebull // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: freezed == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstSlotitemEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstSlotitemEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstSlotitemEntityCopyWith(
          _$_GetDataApiDataApiMstSlotitemEntity value,
          $Res Function(_$_GetDataApiDataApiMstSlotitemEntity) then) =
      __$$_GetDataApiDataApiMstSlotitemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_sortno') int apiSortno,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_type') List<int> apiType,
      @JsonKey(name: 'api_taik') int apiTaik,
      @JsonKey(name: 'api_souk') int apiSouk,
      @JsonKey(name: 'api_houg') int apiHoug,
      @JsonKey(name: 'api_raig') int apiRaig,
      @JsonKey(name: 'api_soku') int apiSoku,
      @JsonKey(name: 'api_baku') int apiBaku,
      @JsonKey(name: 'api_tyku') int apiTyku,
      @JsonKey(name: 'api_tais') int apiTais,
      @JsonKey(name: 'api_atap') int apiAtap,
      @JsonKey(name: 'api_houm') int apiHoum,
      @JsonKey(name: 'api_raim') int apiRaim,
      @JsonKey(name: 'api_houk') int apiHouk,
      @JsonKey(name: 'api_raik') int apiRaik,
      @JsonKey(name: 'api_bakk') int apiBakk,
      @JsonKey(name: 'api_saku') int apiSaku,
      @JsonKey(name: 'api_sakb') int apiSakb,
      @JsonKey(name: 'api_luck') int apiLuck,
      @JsonKey(name: 'api_leng') int apiLeng,
      @JsonKey(name: 'api_rare') int apiRare,
      @JsonKey(name: 'api_broken') List<int> apiBroken,
      @JsonKey(name: 'api_usebull') String apiUsebull,
      @JsonKey(name: 'api_version') int? apiVersion});
}

/// @nodoc
class __$$_GetDataApiDataApiMstSlotitemEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstSlotitemEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstSlotitemEntity>
    implements _$$_GetDataApiDataApiMstSlotitemEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstSlotitemEntityCopyWithImpl(
      _$_GetDataApiDataApiMstSlotitemEntity _value,
      $Res Function(_$_GetDataApiDataApiMstSlotitemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiSortno = null,
    Object? apiName = null,
    Object? apiType = null,
    Object? apiTaik = null,
    Object? apiSouk = null,
    Object? apiHoug = null,
    Object? apiRaig = null,
    Object? apiSoku = null,
    Object? apiBaku = null,
    Object? apiTyku = null,
    Object? apiTais = null,
    Object? apiAtap = null,
    Object? apiHoum = null,
    Object? apiRaim = null,
    Object? apiHouk = null,
    Object? apiRaik = null,
    Object? apiBakk = null,
    Object? apiSaku = null,
    Object? apiSakb = null,
    Object? apiLuck = null,
    Object? apiLeng = null,
    Object? apiRare = null,
    Object? apiBroken = null,
    Object? apiUsebull = null,
    Object? apiVersion = freezed,
  }) {
    return _then(_$_GetDataApiDataApiMstSlotitemEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiTaik: null == apiTaik
          ? _value.apiTaik
          : apiTaik // ignore: cast_nullable_to_non_nullable
              as int,
      apiSouk: null == apiSouk
          ? _value.apiSouk
          : apiSouk // ignore: cast_nullable_to_non_nullable
              as int,
      apiHoug: null == apiHoug
          ? _value.apiHoug
          : apiHoug // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaig: null == apiRaig
          ? _value.apiRaig
          : apiRaig // ignore: cast_nullable_to_non_nullable
              as int,
      apiSoku: null == apiSoku
          ? _value.apiSoku
          : apiSoku // ignore: cast_nullable_to_non_nullable
              as int,
      apiBaku: null == apiBaku
          ? _value.apiBaku
          : apiBaku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTyku: null == apiTyku
          ? _value.apiTyku
          : apiTyku // ignore: cast_nullable_to_non_nullable
              as int,
      apiTais: null == apiTais
          ? _value.apiTais
          : apiTais // ignore: cast_nullable_to_non_nullable
              as int,
      apiAtap: null == apiAtap
          ? _value.apiAtap
          : apiAtap // ignore: cast_nullable_to_non_nullable
              as int,
      apiHoum: null == apiHoum
          ? _value.apiHoum
          : apiHoum // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaim: null == apiRaim
          ? _value.apiRaim
          : apiRaim // ignore: cast_nullable_to_non_nullable
              as int,
      apiHouk: null == apiHouk
          ? _value.apiHouk
          : apiHouk // ignore: cast_nullable_to_non_nullable
              as int,
      apiRaik: null == apiRaik
          ? _value.apiRaik
          : apiRaik // ignore: cast_nullable_to_non_nullable
              as int,
      apiBakk: null == apiBakk
          ? _value.apiBakk
          : apiBakk // ignore: cast_nullable_to_non_nullable
              as int,
      apiSaku: null == apiSaku
          ? _value.apiSaku
          : apiSaku // ignore: cast_nullable_to_non_nullable
              as int,
      apiSakb: null == apiSakb
          ? _value.apiSakb
          : apiSakb // ignore: cast_nullable_to_non_nullable
              as int,
      apiLuck: null == apiLuck
          ? _value.apiLuck
          : apiLuck // ignore: cast_nullable_to_non_nullable
              as int,
      apiLeng: null == apiLeng
          ? _value.apiLeng
          : apiLeng // ignore: cast_nullable_to_non_nullable
              as int,
      apiRare: null == apiRare
          ? _value.apiRare
          : apiRare // ignore: cast_nullable_to_non_nullable
              as int,
      apiBroken: null == apiBroken
          ? _value.apiBroken
          : apiBroken // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiUsebull: null == apiUsebull
          ? _value.apiUsebull
          : apiUsebull // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: freezed == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstSlotitemEntity
    implements _GetDataApiDataApiMstSlotitemEntity {
  _$_GetDataApiDataApiMstSlotitemEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_sortno') required this.apiSortno,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_type') required this.apiType,
      @JsonKey(name: 'api_taik') required this.apiTaik,
      @JsonKey(name: 'api_souk') required this.apiSouk,
      @JsonKey(name: 'api_houg') required this.apiHoug,
      @JsonKey(name: 'api_raig') required this.apiRaig,
      @JsonKey(name: 'api_soku') required this.apiSoku,
      @JsonKey(name: 'api_baku') required this.apiBaku,
      @JsonKey(name: 'api_tyku') required this.apiTyku,
      @JsonKey(name: 'api_tais') required this.apiTais,
      @JsonKey(name: 'api_atap') required this.apiAtap,
      @JsonKey(name: 'api_houm') required this.apiHoum,
      @JsonKey(name: 'api_raim') required this.apiRaim,
      @JsonKey(name: 'api_houk') required this.apiHouk,
      @JsonKey(name: 'api_raik') required this.apiRaik,
      @JsonKey(name: 'api_bakk') required this.apiBakk,
      @JsonKey(name: 'api_saku') required this.apiSaku,
      @JsonKey(name: 'api_sakb') required this.apiSakb,
      @JsonKey(name: 'api_luck') required this.apiLuck,
      @JsonKey(name: 'api_leng') required this.apiLeng,
      @JsonKey(name: 'api_rare') required this.apiRare,
      @JsonKey(name: 'api_broken') required this.apiBroken,
      @JsonKey(name: 'api_usebull') required this.apiUsebull,
      @JsonKey(name: 'api_version') this.apiVersion});

  factory _$_GetDataApiDataApiMstSlotitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstSlotitemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_sortno')
  int apiSortno;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_type')
  List<int> apiType;
  @override
  @JsonKey(name: 'api_taik')
  int apiTaik;
  @override
  @JsonKey(name: 'api_souk')
  int apiSouk;
  @override
  @JsonKey(name: 'api_houg')
  int apiHoug;
  @override
  @JsonKey(name: 'api_raig')
  int apiRaig;
  @override
  @JsonKey(name: 'api_soku')
  int apiSoku;
  @override
  @JsonKey(name: 'api_baku')
  int apiBaku;
  @override
  @JsonKey(name: 'api_tyku')
  int apiTyku;
  @override
  @JsonKey(name: 'api_tais')
  int apiTais;
  @override
  @JsonKey(name: 'api_atap')
  int apiAtap;
  @override
  @JsonKey(name: 'api_houm')
  int apiHoum;
  @override
  @JsonKey(name: 'api_raim')
  int apiRaim;
  @override
  @JsonKey(name: 'api_houk')
  int apiHouk;
  @override
  @JsonKey(name: 'api_raik')
  int apiRaik;
  @override
  @JsonKey(name: 'api_bakk')
  int apiBakk;
  @override
  @JsonKey(name: 'api_saku')
  int apiSaku;
  @override
  @JsonKey(name: 'api_sakb')
  int apiSakb;
  @override
  @JsonKey(name: 'api_luck')
  int apiLuck;
  @override
  @JsonKey(name: 'api_leng')
  int apiLeng;
  @override
  @JsonKey(name: 'api_rare')
  int apiRare;
  @override
  @JsonKey(name: 'api_broken')
  List<int> apiBroken;
  @override
  @JsonKey(name: 'api_usebull')
  String apiUsebull;
  @override
  @JsonKey(name: 'api_version')
  int? apiVersion;

  @override
  String toString() {
    return 'GetDataApiDataApiMstSlotitemEntity(apiId: $apiId, apiSortno: $apiSortno, apiName: $apiName, apiType: $apiType, apiTaik: $apiTaik, apiSouk: $apiSouk, apiHoug: $apiHoug, apiRaig: $apiRaig, apiSoku: $apiSoku, apiBaku: $apiBaku, apiTyku: $apiTyku, apiTais: $apiTais, apiAtap: $apiAtap, apiHoum: $apiHoum, apiRaim: $apiRaim, apiHouk: $apiHouk, apiRaik: $apiRaik, apiBakk: $apiBakk, apiSaku: $apiSaku, apiSakb: $apiSakb, apiLuck: $apiLuck, apiLeng: $apiLeng, apiRare: $apiRare, apiBroken: $apiBroken, apiUsebull: $apiUsebull, apiVersion: $apiVersion)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstSlotitemEntityCopyWith<
          _$_GetDataApiDataApiMstSlotitemEntity>
      get copyWith => __$$_GetDataApiDataApiMstSlotitemEntityCopyWithImpl<
          _$_GetDataApiDataApiMstSlotitemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstSlotitemEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstSlotitemEntity
    implements GetDataApiDataApiMstSlotitemEntity {
  factory _GetDataApiDataApiMstSlotitemEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_sortno') required int apiSortno,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_type') required List<int> apiType,
          @JsonKey(name: 'api_taik') required int apiTaik,
          @JsonKey(name: 'api_souk') required int apiSouk,
          @JsonKey(name: 'api_houg') required int apiHoug,
          @JsonKey(name: 'api_raig') required int apiRaig,
          @JsonKey(name: 'api_soku') required int apiSoku,
          @JsonKey(name: 'api_baku') required int apiBaku,
          @JsonKey(name: 'api_tyku') required int apiTyku,
          @JsonKey(name: 'api_tais') required int apiTais,
          @JsonKey(name: 'api_atap') required int apiAtap,
          @JsonKey(name: 'api_houm') required int apiHoum,
          @JsonKey(name: 'api_raim') required int apiRaim,
          @JsonKey(name: 'api_houk') required int apiHouk,
          @JsonKey(name: 'api_raik') required int apiRaik,
          @JsonKey(name: 'api_bakk') required int apiBakk,
          @JsonKey(name: 'api_saku') required int apiSaku,
          @JsonKey(name: 'api_sakb') required int apiSakb,
          @JsonKey(name: 'api_luck') required int apiLuck,
          @JsonKey(name: 'api_leng') required int apiLeng,
          @JsonKey(name: 'api_rare') required int apiRare,
          @JsonKey(name: 'api_broken') required List<int> apiBroken,
          @JsonKey(name: 'api_usebull') required String apiUsebull,
          @JsonKey(name: 'api_version') int? apiVersion}) =
      _$_GetDataApiDataApiMstSlotitemEntity;

  factory _GetDataApiDataApiMstSlotitemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstSlotitemEntity.fromJson;

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
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_type')
  List<int> get apiType;
  @JsonKey(name: 'api_type')
  set apiType(List<int> value);
  @override
  @JsonKey(name: 'api_taik')
  int get apiTaik;
  @JsonKey(name: 'api_taik')
  set apiTaik(int value);
  @override
  @JsonKey(name: 'api_souk')
  int get apiSouk;
  @JsonKey(name: 'api_souk')
  set apiSouk(int value);
  @override
  @JsonKey(name: 'api_houg')
  int get apiHoug;
  @JsonKey(name: 'api_houg')
  set apiHoug(int value);
  @override
  @JsonKey(name: 'api_raig')
  int get apiRaig;
  @JsonKey(name: 'api_raig')
  set apiRaig(int value);
  @override
  @JsonKey(name: 'api_soku')
  int get apiSoku;
  @JsonKey(name: 'api_soku')
  set apiSoku(int value);
  @override
  @JsonKey(name: 'api_baku')
  int get apiBaku;
  @JsonKey(name: 'api_baku')
  set apiBaku(int value);
  @override
  @JsonKey(name: 'api_tyku')
  int get apiTyku;
  @JsonKey(name: 'api_tyku')
  set apiTyku(int value);
  @override
  @JsonKey(name: 'api_tais')
  int get apiTais;
  @JsonKey(name: 'api_tais')
  set apiTais(int value);
  @override
  @JsonKey(name: 'api_atap')
  int get apiAtap;
  @JsonKey(name: 'api_atap')
  set apiAtap(int value);
  @override
  @JsonKey(name: 'api_houm')
  int get apiHoum;
  @JsonKey(name: 'api_houm')
  set apiHoum(int value);
  @override
  @JsonKey(name: 'api_raim')
  int get apiRaim;
  @JsonKey(name: 'api_raim')
  set apiRaim(int value);
  @override
  @JsonKey(name: 'api_houk')
  int get apiHouk;
  @JsonKey(name: 'api_houk')
  set apiHouk(int value);
  @override
  @JsonKey(name: 'api_raik')
  int get apiRaik;
  @JsonKey(name: 'api_raik')
  set apiRaik(int value);
  @override
  @JsonKey(name: 'api_bakk')
  int get apiBakk;
  @JsonKey(name: 'api_bakk')
  set apiBakk(int value);
  @override
  @JsonKey(name: 'api_saku')
  int get apiSaku;
  @JsonKey(name: 'api_saku')
  set apiSaku(int value);
  @override
  @JsonKey(name: 'api_sakb')
  int get apiSakb;
  @JsonKey(name: 'api_sakb')
  set apiSakb(int value);
  @override
  @JsonKey(name: 'api_luck')
  int get apiLuck;
  @JsonKey(name: 'api_luck')
  set apiLuck(int value);
  @override
  @JsonKey(name: 'api_leng')
  int get apiLeng;
  @JsonKey(name: 'api_leng')
  set apiLeng(int value);
  @override
  @JsonKey(name: 'api_rare')
  int get apiRare;
  @JsonKey(name: 'api_rare')
  set apiRare(int value);
  @override
  @JsonKey(name: 'api_broken')
  List<int> get apiBroken;
  @JsonKey(name: 'api_broken')
  set apiBroken(List<int> value);
  @override
  @JsonKey(name: 'api_usebull')
  String get apiUsebull;
  @JsonKey(name: 'api_usebull')
  set apiUsebull(String value);
  @override
  @JsonKey(name: 'api_version')
  int? get apiVersion;
  @JsonKey(name: 'api_version')
  set apiVersion(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstSlotitemEntityCopyWith<
          _$_GetDataApiDataApiMstSlotitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstFurnituregraphEntity
    _$GetDataApiDataApiMstFurnituregraphEntityFromJson(
        Map<String, dynamic> json) {
  return _GetDataApiDataApiMstFurnituregraphEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstFurnituregraphEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  int get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_filename')
  String get apiFilename => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_filename')
  set apiFilename(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  String get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  set apiVersion(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstFurnituregraphEntityCopyWith<
          GetDataApiDataApiMstFurnituregraphEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstFurnituregraphEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstFurnituregraphEntityCopyWith(
          GetDataApiDataApiMstFurnituregraphEntity value,
          $Res Function(GetDataApiDataApiMstFurnituregraphEntity) then) =
      _$GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstFurnituregraphEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_filename') String apiFilename,
      @JsonKey(name: 'api_version') String apiVersion});
}

/// @nodoc
class _$GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstFurnituregraphEntity>
    implements $GetDataApiDataApiMstFurnituregraphEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiNo = null,
    Object? apiFilename = null,
    Object? apiVersion = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiFilename: null == apiFilename
          ? _value.apiFilename
          : apiFilename // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstFurnituregraphEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstFurnituregraphEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstFurnituregraphEntityCopyWith(
          _$_GetDataApiDataApiMstFurnituregraphEntity value,
          $Res Function(_$_GetDataApiDataApiMstFurnituregraphEntity) then) =
      __$$_GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_filename') String apiFilename,
      @JsonKey(name: 'api_version') String apiVersion});
}

/// @nodoc
class __$$_GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstFurnituregraphEntity>
    implements _$$_GetDataApiDataApiMstFurnituregraphEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl(
      _$_GetDataApiDataApiMstFurnituregraphEntity _value,
      $Res Function(_$_GetDataApiDataApiMstFurnituregraphEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiNo = null,
    Object? apiFilename = null,
    Object? apiVersion = null,
  }) {
    return _then(_$_GetDataApiDataApiMstFurnituregraphEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiFilename: null == apiFilename
          ? _value.apiFilename
          : apiFilename // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstFurnituregraphEntity
    implements _GetDataApiDataApiMstFurnituregraphEntity {
  _$_GetDataApiDataApiMstFurnituregraphEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_type') required this.apiType,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_filename') required this.apiFilename,
      @JsonKey(name: 'api_version') required this.apiVersion});

  factory _$_GetDataApiDataApiMstFurnituregraphEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstFurnituregraphEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_type')
  int apiType;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_filename')
  String apiFilename;
  @override
  @JsonKey(name: 'api_version')
  String apiVersion;

  @override
  String toString() {
    return 'GetDataApiDataApiMstFurnituregraphEntity(apiId: $apiId, apiType: $apiType, apiNo: $apiNo, apiFilename: $apiFilename, apiVersion: $apiVersion)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstFurnituregraphEntityCopyWith<
          _$_GetDataApiDataApiMstFurnituregraphEntity>
      get copyWith => __$$_GetDataApiDataApiMstFurnituregraphEntityCopyWithImpl<
          _$_GetDataApiDataApiMstFurnituregraphEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstFurnituregraphEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstFurnituregraphEntity
    implements GetDataApiDataApiMstFurnituregraphEntity {
  factory _GetDataApiDataApiMstFurnituregraphEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_type') required int apiType,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_filename') required String apiFilename,
          @JsonKey(name: 'api_version') required String apiVersion}) =
      _$_GetDataApiDataApiMstFurnituregraphEntity;

  factory _GetDataApiDataApiMstFurnituregraphEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstFurnituregraphEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_type')
  int get apiType;
  @JsonKey(name: 'api_type')
  set apiType(int value);
  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_filename')
  String get apiFilename;
  @JsonKey(name: 'api_filename')
  set apiFilename(String value);
  @override
  @JsonKey(name: 'api_version')
  String get apiVersion;
  @JsonKey(name: 'api_version')
  set apiVersion(String value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstFurnituregraphEntityCopyWith<
          _$_GetDataApiDataApiMstFurnituregraphEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstUseitemEntity _$GetDataApiDataApiMstUseitemEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstUseitemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstUseitemEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_usetype')
  int get apiUsetype => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_usetype')
  set apiUsetype(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_category')
  int get apiCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_category')
  set apiCategory(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  List<String> get apiDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  set apiDescription(List<String> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  int get apiPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  set apiPrice(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstUseitemEntityCopyWith<GetDataApiDataApiMstUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstUseitemEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstUseitemEntityCopyWith(
          GetDataApiDataApiMstUseitemEntity value,
          $Res Function(GetDataApiDataApiMstUseitemEntity) then) =
      _$GetDataApiDataApiMstUseitemEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstUseitemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_usetype') int apiUsetype,
      @JsonKey(name: 'api_category') int apiCategory,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_description') List<String> apiDescription,
      @JsonKey(name: 'api_price') int apiPrice});
}

/// @nodoc
class _$GetDataApiDataApiMstUseitemEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstUseitemEntity>
    implements $GetDataApiDataApiMstUseitemEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstUseitemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiUsetype = null,
    Object? apiCategory = null,
    Object? apiName = null,
    Object? apiDescription = null,
    Object? apiPrice = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiUsetype: null == apiUsetype
          ? _value.apiUsetype
          : apiUsetype // ignore: cast_nullable_to_non_nullable
              as int,
      apiCategory: null == apiCategory
          ? _value.apiCategory
          : apiCategory // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstUseitemEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstUseitemEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstUseitemEntityCopyWith(
          _$_GetDataApiDataApiMstUseitemEntity value,
          $Res Function(_$_GetDataApiDataApiMstUseitemEntity) then) =
      __$$_GetDataApiDataApiMstUseitemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_usetype') int apiUsetype,
      @JsonKey(name: 'api_category') int apiCategory,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_description') List<String> apiDescription,
      @JsonKey(name: 'api_price') int apiPrice});
}

/// @nodoc
class __$$_GetDataApiDataApiMstUseitemEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstUseitemEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstUseitemEntity>
    implements _$$_GetDataApiDataApiMstUseitemEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstUseitemEntityCopyWithImpl(
      _$_GetDataApiDataApiMstUseitemEntity _value,
      $Res Function(_$_GetDataApiDataApiMstUseitemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiUsetype = null,
    Object? apiCategory = null,
    Object? apiName = null,
    Object? apiDescription = null,
    Object? apiPrice = null,
  }) {
    return _then(_$_GetDataApiDataApiMstUseitemEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiUsetype: null == apiUsetype
          ? _value.apiUsetype
          : apiUsetype // ignore: cast_nullable_to_non_nullable
              as int,
      apiCategory: null == apiCategory
          ? _value.apiCategory
          : apiCategory // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstUseitemEntity
    implements _GetDataApiDataApiMstUseitemEntity {
  _$_GetDataApiDataApiMstUseitemEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_usetype') required this.apiUsetype,
      @JsonKey(name: 'api_category') required this.apiCategory,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_description') required this.apiDescription,
      @JsonKey(name: 'api_price') required this.apiPrice});

  factory _$_GetDataApiDataApiMstUseitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstUseitemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_usetype')
  int apiUsetype;
  @override
  @JsonKey(name: 'api_category')
  int apiCategory;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_description')
  List<String> apiDescription;
  @override
  @JsonKey(name: 'api_price')
  int apiPrice;

  @override
  String toString() {
    return 'GetDataApiDataApiMstUseitemEntity(apiId: $apiId, apiUsetype: $apiUsetype, apiCategory: $apiCategory, apiName: $apiName, apiDescription: $apiDescription, apiPrice: $apiPrice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstUseitemEntityCopyWith<
          _$_GetDataApiDataApiMstUseitemEntity>
      get copyWith => __$$_GetDataApiDataApiMstUseitemEntityCopyWithImpl<
          _$_GetDataApiDataApiMstUseitemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstUseitemEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstUseitemEntity
    implements GetDataApiDataApiMstUseitemEntity {
  factory _GetDataApiDataApiMstUseitemEntity(
      {@JsonKey(name: 'api_id') required int apiId,
      @JsonKey(name: 'api_usetype') required int apiUsetype,
      @JsonKey(name: 'api_category') required int apiCategory,
      @JsonKey(name: 'api_name') required String apiName,
      @JsonKey(name: 'api_description') required List<String> apiDescription,
      @JsonKey(name: 'api_price')
      required int apiPrice}) = _$_GetDataApiDataApiMstUseitemEntity;

  factory _GetDataApiDataApiMstUseitemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstUseitemEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_usetype')
  int get apiUsetype;
  @JsonKey(name: 'api_usetype')
  set apiUsetype(int value);
  @override
  @JsonKey(name: 'api_category')
  int get apiCategory;
  @JsonKey(name: 'api_category')
  set apiCategory(int value);
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_description')
  List<String> get apiDescription;
  @JsonKey(name: 'api_description')
  set apiDescription(List<String> value);
  @override
  @JsonKey(name: 'api_price')
  int get apiPrice;
  @JsonKey(name: 'api_price')
  set apiPrice(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstUseitemEntityCopyWith<
          _$_GetDataApiDataApiMstUseitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstPayitemEntity _$GetDataApiDataApiMstPayitemEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstPayitemEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstPayitemEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  int get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  String get apiDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  set apiDescription(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_shop_description')
  String get apiShopDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_shop_description')
  set apiShopDescription(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item')
  List<int> get apiItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item')
  set apiItem(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  int get apiPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  set apiPrice(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstPayitemEntityCopyWith<GetDataApiDataApiMstPayitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstPayitemEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstPayitemEntityCopyWith(
          GetDataApiDataApiMstPayitemEntity value,
          $Res Function(GetDataApiDataApiMstPayitemEntity) then) =
      _$GetDataApiDataApiMstPayitemEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstPayitemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_description') String apiDescription,
      @JsonKey(name: 'api_shop_description') String apiShopDescription,
      @JsonKey(name: 'api_item') List<int> apiItem,
      @JsonKey(name: 'api_price') int apiPrice});
}

/// @nodoc
class _$GetDataApiDataApiMstPayitemEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstPayitemEntity>
    implements $GetDataApiDataApiMstPayitemEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstPayitemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiName = null,
    Object? apiDescription = null,
    Object? apiShopDescription = null,
    Object? apiItem = null,
    Object? apiPrice = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiShopDescription: null == apiShopDescription
          ? _value.apiShopDescription
          : apiShopDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem: null == apiItem
          ? _value.apiItem
          : apiItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstPayitemEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstPayitemEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstPayitemEntityCopyWith(
          _$_GetDataApiDataApiMstPayitemEntity value,
          $Res Function(_$_GetDataApiDataApiMstPayitemEntity) then) =
      __$$_GetDataApiDataApiMstPayitemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_description') String apiDescription,
      @JsonKey(name: 'api_shop_description') String apiShopDescription,
      @JsonKey(name: 'api_item') List<int> apiItem,
      @JsonKey(name: 'api_price') int apiPrice});
}

/// @nodoc
class __$$_GetDataApiDataApiMstPayitemEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstPayitemEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstPayitemEntity>
    implements _$$_GetDataApiDataApiMstPayitemEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstPayitemEntityCopyWithImpl(
      _$_GetDataApiDataApiMstPayitemEntity _value,
      $Res Function(_$_GetDataApiDataApiMstPayitemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiName = null,
    Object? apiDescription = null,
    Object? apiShopDescription = null,
    Object? apiItem = null,
    Object? apiPrice = null,
  }) {
    return _then(_$_GetDataApiDataApiMstPayitemEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiShopDescription: null == apiShopDescription
          ? _value.apiShopDescription
          : apiShopDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem: null == apiItem
          ? _value.apiItem
          : apiItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstPayitemEntity
    implements _GetDataApiDataApiMstPayitemEntity {
  _$_GetDataApiDataApiMstPayitemEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_type') required this.apiType,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_description') required this.apiDescription,
      @JsonKey(name: 'api_shop_description') required this.apiShopDescription,
      @JsonKey(name: 'api_item') required this.apiItem,
      @JsonKey(name: 'api_price') required this.apiPrice});

  factory _$_GetDataApiDataApiMstPayitemEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstPayitemEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_type')
  int apiType;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_description')
  String apiDescription;
  @override
  @JsonKey(name: 'api_shop_description')
  String apiShopDescription;
  @override
  @JsonKey(name: 'api_item')
  List<int> apiItem;
  @override
  @JsonKey(name: 'api_price')
  int apiPrice;

  @override
  String toString() {
    return 'GetDataApiDataApiMstPayitemEntity(apiId: $apiId, apiType: $apiType, apiName: $apiName, apiDescription: $apiDescription, apiShopDescription: $apiShopDescription, apiItem: $apiItem, apiPrice: $apiPrice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstPayitemEntityCopyWith<
          _$_GetDataApiDataApiMstPayitemEntity>
      get copyWith => __$$_GetDataApiDataApiMstPayitemEntityCopyWithImpl<
          _$_GetDataApiDataApiMstPayitemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstPayitemEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstPayitemEntity
    implements GetDataApiDataApiMstPayitemEntity {
  factory _GetDataApiDataApiMstPayitemEntity(
      {@JsonKey(name: 'api_id') required int apiId,
      @JsonKey(name: 'api_type') required int apiType,
      @JsonKey(name: 'api_name') required String apiName,
      @JsonKey(name: 'api_description') required String apiDescription,
      @JsonKey(name: 'api_shop_description') required String apiShopDescription,
      @JsonKey(name: 'api_item') required List<int> apiItem,
      @JsonKey(name: 'api_price')
      required int apiPrice}) = _$_GetDataApiDataApiMstPayitemEntity;

  factory _GetDataApiDataApiMstPayitemEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstPayitemEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_type')
  int get apiType;
  @JsonKey(name: 'api_type')
  set apiType(int value);
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_description')
  String get apiDescription;
  @JsonKey(name: 'api_description')
  set apiDescription(String value);
  @override
  @JsonKey(name: 'api_shop_description')
  String get apiShopDescription;
  @JsonKey(name: 'api_shop_description')
  set apiShopDescription(String value);
  @override
  @JsonKey(name: 'api_item')
  List<int> get apiItem;
  @JsonKey(name: 'api_item')
  set apiItem(List<int> value);
  @override
  @JsonKey(name: 'api_price')
  int get apiPrice;
  @JsonKey(name: 'api_price')
  set apiPrice(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstPayitemEntityCopyWith<
          _$_GetDataApiDataApiMstPayitemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstItemShopEntity _$GetDataApiDataApiMstItemShopEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstItemShopEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstItemShopEntity {
  @JsonKey(name: 'api_cabinet_1')
  List<int> get apiCabinet1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cabinet_1')
  set apiCabinet1(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cabinet_2')
  List<int> get apiCabinet2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_cabinet_2')
  set apiCabinet2(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstItemShopEntityCopyWith<
          GetDataApiDataApiMstItemShopEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstItemShopEntityCopyWith(
          GetDataApiDataApiMstItemShopEntity value,
          $Res Function(GetDataApiDataApiMstItemShopEntity) then) =
      _$GetDataApiDataApiMstItemShopEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstItemShopEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_cabinet_1') List<int> apiCabinet1,
      @JsonKey(name: 'api_cabinet_2') List<int> apiCabinet2});
}

/// @nodoc
class _$GetDataApiDataApiMstItemShopEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstItemShopEntity>
    implements $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstItemShopEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCabinet1 = null,
    Object? apiCabinet2 = null,
  }) {
    return _then(_value.copyWith(
      apiCabinet1: null == apiCabinet1
          ? _value.apiCabinet1
          : apiCabinet1 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiCabinet2: null == apiCabinet2
          ? _value.apiCabinet2
          : apiCabinet2 // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstItemShopEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstItemShopEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstItemShopEntityCopyWith(
          _$_GetDataApiDataApiMstItemShopEntity value,
          $Res Function(_$_GetDataApiDataApiMstItemShopEntity) then) =
      __$$_GetDataApiDataApiMstItemShopEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_cabinet_1') List<int> apiCabinet1,
      @JsonKey(name: 'api_cabinet_2') List<int> apiCabinet2});
}

/// @nodoc
class __$$_GetDataApiDataApiMstItemShopEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstItemShopEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstItemShopEntity>
    implements _$$_GetDataApiDataApiMstItemShopEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstItemShopEntityCopyWithImpl(
      _$_GetDataApiDataApiMstItemShopEntity _value,
      $Res Function(_$_GetDataApiDataApiMstItemShopEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCabinet1 = null,
    Object? apiCabinet2 = null,
  }) {
    return _then(_$_GetDataApiDataApiMstItemShopEntity(
      apiCabinet1: null == apiCabinet1
          ? _value.apiCabinet1
          : apiCabinet1 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiCabinet2: null == apiCabinet2
          ? _value.apiCabinet2
          : apiCabinet2 // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstItemShopEntity
    implements _GetDataApiDataApiMstItemShopEntity {
  _$_GetDataApiDataApiMstItemShopEntity(
      {@JsonKey(name: 'api_cabinet_1') required this.apiCabinet1,
      @JsonKey(name: 'api_cabinet_2') required this.apiCabinet2});

  factory _$_GetDataApiDataApiMstItemShopEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstItemShopEntityFromJson(json);

  @override
  @JsonKey(name: 'api_cabinet_1')
  List<int> apiCabinet1;
  @override
  @JsonKey(name: 'api_cabinet_2')
  List<int> apiCabinet2;

  @override
  String toString() {
    return 'GetDataApiDataApiMstItemShopEntity(apiCabinet1: $apiCabinet1, apiCabinet2: $apiCabinet2)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstItemShopEntityCopyWith<
          _$_GetDataApiDataApiMstItemShopEntity>
      get copyWith => __$$_GetDataApiDataApiMstItemShopEntityCopyWithImpl<
          _$_GetDataApiDataApiMstItemShopEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstItemShopEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstItemShopEntity
    implements GetDataApiDataApiMstItemShopEntity {
  factory _GetDataApiDataApiMstItemShopEntity(
          {@JsonKey(name: 'api_cabinet_1') required List<int> apiCabinet1,
          @JsonKey(name: 'api_cabinet_2') required List<int> apiCabinet2}) =
      _$_GetDataApiDataApiMstItemShopEntity;

  factory _GetDataApiDataApiMstItemShopEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstItemShopEntity.fromJson;

  @override
  @JsonKey(name: 'api_cabinet_1')
  List<int> get apiCabinet1;
  @JsonKey(name: 'api_cabinet_1')
  set apiCabinet1(List<int> value);
  @override
  @JsonKey(name: 'api_cabinet_2')
  List<int> get apiCabinet2;
  @JsonKey(name: 'api_cabinet_2')
  set apiCabinet2(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstItemShopEntityCopyWith<
          _$_GetDataApiDataApiMstItemShopEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstMapareaEntity _$GetDataApiDataApiMstMapareaEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstMapareaEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstMapareaEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  int get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstMapareaEntityCopyWith<GetDataApiDataApiMstMapareaEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstMapareaEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstMapareaEntityCopyWith(
          GetDataApiDataApiMstMapareaEntity value,
          $Res Function(GetDataApiDataApiMstMapareaEntity) then) =
      _$GetDataApiDataApiMstMapareaEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstMapareaEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_type') int apiType});
}

/// @nodoc
class _$GetDataApiDataApiMstMapareaEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstMapareaEntity>
    implements $GetDataApiDataApiMstMapareaEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstMapareaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
    Object? apiType = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstMapareaEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstMapareaEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstMapareaEntityCopyWith(
          _$_GetDataApiDataApiMstMapareaEntity value,
          $Res Function(_$_GetDataApiDataApiMstMapareaEntity) then) =
      __$$_GetDataApiDataApiMstMapareaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_type') int apiType});
}

/// @nodoc
class __$$_GetDataApiDataApiMstMapareaEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstMapareaEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstMapareaEntity>
    implements _$$_GetDataApiDataApiMstMapareaEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstMapareaEntityCopyWithImpl(
      _$_GetDataApiDataApiMstMapareaEntity _value,
      $Res Function(_$_GetDataApiDataApiMstMapareaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
    Object? apiType = null,
  }) {
    return _then(_$_GetDataApiDataApiMstMapareaEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstMapareaEntity
    implements _GetDataApiDataApiMstMapareaEntity {
  _$_GetDataApiDataApiMstMapareaEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_type') required this.apiType});

  factory _$_GetDataApiDataApiMstMapareaEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstMapareaEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_type')
  int apiType;

  @override
  String toString() {
    return 'GetDataApiDataApiMstMapareaEntity(apiId: $apiId, apiName: $apiName, apiType: $apiType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstMapareaEntityCopyWith<
          _$_GetDataApiDataApiMstMapareaEntity>
      get copyWith => __$$_GetDataApiDataApiMstMapareaEntityCopyWithImpl<
          _$_GetDataApiDataApiMstMapareaEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstMapareaEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstMapareaEntity
    implements GetDataApiDataApiMstMapareaEntity {
  factory _GetDataApiDataApiMstMapareaEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_type') required int apiType}) =
      _$_GetDataApiDataApiMstMapareaEntity;

  factory _GetDataApiDataApiMstMapareaEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstMapareaEntity.fromJson;

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
  @JsonKey(name: 'api_type')
  int get apiType;
  @JsonKey(name: 'api_type')
  set apiType(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstMapareaEntityCopyWith<
          _$_GetDataApiDataApiMstMapareaEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstMapinfoEntity _$GetDataApiDataApiMstMapinfoEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstMapinfoEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstMapinfoEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  int get apiLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_level')
  set apiLevel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opetext')
  String get apiOpetext => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_opetext')
  set apiOpetext(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_infotext')
  String get apiInfotext => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_infotext')
  set apiInfotext(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item')
  List<int> get apiItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_item')
  set apiItem(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_maphp')
  dynamic get apiMaxMaphp => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_max_maphp')
  set apiMaxMaphp(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_required_defeat_count')
  dynamic get apiRequiredDefeatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_required_defeat_count')
  set apiRequiredDefeatCount(dynamic value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sally_flag')
  List<int> get apiSallyFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sally_flag')
  set apiSallyFlag(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstMapinfoEntityCopyWith<GetDataApiDataApiMstMapinfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstMapinfoEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstMapinfoEntityCopyWith(
          GetDataApiDataApiMstMapinfoEntity value,
          $Res Function(GetDataApiDataApiMstMapinfoEntity) then) =
      _$GetDataApiDataApiMstMapinfoEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstMapinfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_level') int apiLevel,
      @JsonKey(name: 'api_opetext') String apiOpetext,
      @JsonKey(name: 'api_infotext') String apiInfotext,
      @JsonKey(name: 'api_item') List<int> apiItem,
      @JsonKey(name: 'api_max_maphp') dynamic apiMaxMaphp,
      @JsonKey(name: 'api_required_defeat_count')
      dynamic apiRequiredDefeatCount,
      @JsonKey(name: 'api_sally_flag') List<int> apiSallyFlag});
}

/// @nodoc
class _$GetDataApiDataApiMstMapinfoEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstMapinfoEntity>
    implements $GetDataApiDataApiMstMapinfoEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstMapinfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiMapareaId = null,
    Object? apiNo = null,
    Object? apiName = null,
    Object? apiLevel = null,
    Object? apiOpetext = null,
    Object? apiInfotext = null,
    Object? apiItem = null,
    Object? apiMaxMaphp = freezed,
    Object? apiRequiredDefeatCount = freezed,
    Object? apiSallyFlag = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpetext: null == apiOpetext
          ? _value.apiOpetext
          : apiOpetext // ignore: cast_nullable_to_non_nullable
              as String,
      apiInfotext: null == apiInfotext
          ? _value.apiInfotext
          : apiInfotext // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem: null == apiItem
          ? _value.apiItem
          : apiItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMaxMaphp: freezed == apiMaxMaphp
          ? _value.apiMaxMaphp
          : apiMaxMaphp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiRequiredDefeatCount: freezed == apiRequiredDefeatCount
          ? _value.apiRequiredDefeatCount
          : apiRequiredDefeatCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiSallyFlag: null == apiSallyFlag
          ? _value.apiSallyFlag
          : apiSallyFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstMapinfoEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstMapinfoEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstMapinfoEntityCopyWith(
          _$_GetDataApiDataApiMstMapinfoEntity value,
          $Res Function(_$_GetDataApiDataApiMstMapinfoEntity) then) =
      __$$_GetDataApiDataApiMstMapinfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_level') int apiLevel,
      @JsonKey(name: 'api_opetext') String apiOpetext,
      @JsonKey(name: 'api_infotext') String apiInfotext,
      @JsonKey(name: 'api_item') List<int> apiItem,
      @JsonKey(name: 'api_max_maphp') dynamic apiMaxMaphp,
      @JsonKey(name: 'api_required_defeat_count')
      dynamic apiRequiredDefeatCount,
      @JsonKey(name: 'api_sally_flag') List<int> apiSallyFlag});
}

/// @nodoc
class __$$_GetDataApiDataApiMstMapinfoEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstMapinfoEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstMapinfoEntity>
    implements _$$_GetDataApiDataApiMstMapinfoEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstMapinfoEntityCopyWithImpl(
      _$_GetDataApiDataApiMstMapinfoEntity _value,
      $Res Function(_$_GetDataApiDataApiMstMapinfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiMapareaId = null,
    Object? apiNo = null,
    Object? apiName = null,
    Object? apiLevel = null,
    Object? apiOpetext = null,
    Object? apiInfotext = null,
    Object? apiItem = null,
    Object? apiMaxMaphp = freezed,
    Object? apiRequiredDefeatCount = freezed,
    Object? apiSallyFlag = null,
  }) {
    return _then(_$_GetDataApiDataApiMstMapinfoEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiOpetext: null == apiOpetext
          ? _value.apiOpetext
          : apiOpetext // ignore: cast_nullable_to_non_nullable
              as String,
      apiInfotext: null == apiInfotext
          ? _value.apiInfotext
          : apiInfotext // ignore: cast_nullable_to_non_nullable
              as String,
      apiItem: null == apiItem
          ? _value.apiItem
          : apiItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiMaxMaphp: freezed == apiMaxMaphp
          ? _value.apiMaxMaphp
          : apiMaxMaphp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiRequiredDefeatCount: freezed == apiRequiredDefeatCount
          ? _value.apiRequiredDefeatCount
          : apiRequiredDefeatCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiSallyFlag: null == apiSallyFlag
          ? _value.apiSallyFlag
          : apiSallyFlag // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstMapinfoEntity
    implements _GetDataApiDataApiMstMapinfoEntity {
  _$_GetDataApiDataApiMstMapinfoEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_maparea_id') required this.apiMapareaId,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_level') required this.apiLevel,
      @JsonKey(name: 'api_opetext') required this.apiOpetext,
      @JsonKey(name: 'api_infotext') required this.apiInfotext,
      @JsonKey(name: 'api_item') required this.apiItem,
      @JsonKey(name: 'api_max_maphp') required this.apiMaxMaphp,
      @JsonKey(name: 'api_required_defeat_count')
      required this.apiRequiredDefeatCount,
      @JsonKey(name: 'api_sally_flag') required this.apiSallyFlag});

  factory _$_GetDataApiDataApiMstMapinfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstMapinfoEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_maparea_id')
  int apiMapareaId;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_level')
  int apiLevel;
  @override
  @JsonKey(name: 'api_opetext')
  String apiOpetext;
  @override
  @JsonKey(name: 'api_infotext')
  String apiInfotext;
  @override
  @JsonKey(name: 'api_item')
  List<int> apiItem;
  @override
  @JsonKey(name: 'api_max_maphp')
  dynamic apiMaxMaphp;
  @override
  @JsonKey(name: 'api_required_defeat_count')
  dynamic apiRequiredDefeatCount;
  @override
  @JsonKey(name: 'api_sally_flag')
  List<int> apiSallyFlag;

  @override
  String toString() {
    return 'GetDataApiDataApiMstMapinfoEntity(apiId: $apiId, apiMapareaId: $apiMapareaId, apiNo: $apiNo, apiName: $apiName, apiLevel: $apiLevel, apiOpetext: $apiOpetext, apiInfotext: $apiInfotext, apiItem: $apiItem, apiMaxMaphp: $apiMaxMaphp, apiRequiredDefeatCount: $apiRequiredDefeatCount, apiSallyFlag: $apiSallyFlag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstMapinfoEntityCopyWith<
          _$_GetDataApiDataApiMstMapinfoEntity>
      get copyWith => __$$_GetDataApiDataApiMstMapinfoEntityCopyWithImpl<
          _$_GetDataApiDataApiMstMapinfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstMapinfoEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstMapinfoEntity
    implements GetDataApiDataApiMstMapinfoEntity {
  factory _GetDataApiDataApiMstMapinfoEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_level') required int apiLevel,
          @JsonKey(name: 'api_opetext') required String apiOpetext,
          @JsonKey(name: 'api_infotext') required String apiInfotext,
          @JsonKey(name: 'api_item') required List<int> apiItem,
          @JsonKey(name: 'api_max_maphp') required dynamic apiMaxMaphp,
          @JsonKey(name: 'api_required_defeat_count')
          required dynamic apiRequiredDefeatCount,
          @JsonKey(name: 'api_sally_flag') required List<int> apiSallyFlag}) =
      _$_GetDataApiDataApiMstMapinfoEntity;

  factory _GetDataApiDataApiMstMapinfoEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstMapinfoEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value);
  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_level')
  int get apiLevel;
  @JsonKey(name: 'api_level')
  set apiLevel(int value);
  @override
  @JsonKey(name: 'api_opetext')
  String get apiOpetext;
  @JsonKey(name: 'api_opetext')
  set apiOpetext(String value);
  @override
  @JsonKey(name: 'api_infotext')
  String get apiInfotext;
  @JsonKey(name: 'api_infotext')
  set apiInfotext(String value);
  @override
  @JsonKey(name: 'api_item')
  List<int> get apiItem;
  @JsonKey(name: 'api_item')
  set apiItem(List<int> value);
  @override
  @JsonKey(name: 'api_max_maphp')
  dynamic get apiMaxMaphp;
  @JsonKey(name: 'api_max_maphp')
  set apiMaxMaphp(dynamic value);
  @override
  @JsonKey(name: 'api_required_defeat_count')
  dynamic get apiRequiredDefeatCount;
  @JsonKey(name: 'api_required_defeat_count')
  set apiRequiredDefeatCount(dynamic value);
  @override
  @JsonKey(name: 'api_sally_flag')
  List<int> get apiSallyFlag;
  @JsonKey(name: 'api_sally_flag')
  set apiSallyFlag(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstMapinfoEntityCopyWith<
          _$_GetDataApiDataApiMstMapinfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstMapbgmEntity _$GetDataApiDataApiMstMapbgmEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstMapbgmEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstMapbgmEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_moving_bgm')
  int get apiMovingBgm => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_moving_bgm')
  set apiMovingBgm(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_bgm')
  List<int> get apiMapBgm => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_bgm')
  set apiMapBgm(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boss_bgm')
  List<int> get apiBossBgm => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boss_bgm')
  set apiBossBgm(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstMapbgmEntityCopyWith<GetDataApiDataApiMstMapbgmEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstMapbgmEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstMapbgmEntityCopyWith(
          GetDataApiDataApiMstMapbgmEntity value,
          $Res Function(GetDataApiDataApiMstMapbgmEntity) then) =
      _$GetDataApiDataApiMstMapbgmEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstMapbgmEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_moving_bgm') int apiMovingBgm,
      @JsonKey(name: 'api_map_bgm') List<int> apiMapBgm,
      @JsonKey(name: 'api_boss_bgm') List<int> apiBossBgm});
}

/// @nodoc
class _$GetDataApiDataApiMstMapbgmEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstMapbgmEntity>
    implements $GetDataApiDataApiMstMapbgmEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstMapbgmEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiMapareaId = null,
    Object? apiNo = null,
    Object? apiMovingBgm = null,
    Object? apiMapBgm = null,
    Object? apiBossBgm = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiMovingBgm: null == apiMovingBgm
          ? _value.apiMovingBgm
          : apiMovingBgm // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapBgm: null == apiMapBgm
          ? _value.apiMapBgm
          : apiMapBgm // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiBossBgm: null == apiBossBgm
          ? _value.apiBossBgm
          : apiBossBgm // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstMapbgmEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstMapbgmEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstMapbgmEntityCopyWith(
          _$_GetDataApiDataApiMstMapbgmEntity value,
          $Res Function(_$_GetDataApiDataApiMstMapbgmEntity) then) =
      __$$_GetDataApiDataApiMstMapbgmEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_moving_bgm') int apiMovingBgm,
      @JsonKey(name: 'api_map_bgm') List<int> apiMapBgm,
      @JsonKey(name: 'api_boss_bgm') List<int> apiBossBgm});
}

/// @nodoc
class __$$_GetDataApiDataApiMstMapbgmEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstMapbgmEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstMapbgmEntity>
    implements _$$_GetDataApiDataApiMstMapbgmEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstMapbgmEntityCopyWithImpl(
      _$_GetDataApiDataApiMstMapbgmEntity _value,
      $Res Function(_$_GetDataApiDataApiMstMapbgmEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiMapareaId = null,
    Object? apiNo = null,
    Object? apiMovingBgm = null,
    Object? apiMapBgm = null,
    Object? apiBossBgm = null,
  }) {
    return _then(_$_GetDataApiDataApiMstMapbgmEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiMovingBgm: null == apiMovingBgm
          ? _value.apiMovingBgm
          : apiMovingBgm // ignore: cast_nullable_to_non_nullable
              as int,
      apiMapBgm: null == apiMapBgm
          ? _value.apiMapBgm
          : apiMapBgm // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiBossBgm: null == apiBossBgm
          ? _value.apiBossBgm
          : apiBossBgm // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstMapbgmEntity
    implements _GetDataApiDataApiMstMapbgmEntity {
  _$_GetDataApiDataApiMstMapbgmEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_maparea_id') required this.apiMapareaId,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_moving_bgm') required this.apiMovingBgm,
      @JsonKey(name: 'api_map_bgm') required this.apiMapBgm,
      @JsonKey(name: 'api_boss_bgm') required this.apiBossBgm});

  factory _$_GetDataApiDataApiMstMapbgmEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstMapbgmEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_maparea_id')
  int apiMapareaId;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_moving_bgm')
  int apiMovingBgm;
  @override
  @JsonKey(name: 'api_map_bgm')
  List<int> apiMapBgm;
  @override
  @JsonKey(name: 'api_boss_bgm')
  List<int> apiBossBgm;

  @override
  String toString() {
    return 'GetDataApiDataApiMstMapbgmEntity(apiId: $apiId, apiMapareaId: $apiMapareaId, apiNo: $apiNo, apiMovingBgm: $apiMovingBgm, apiMapBgm: $apiMapBgm, apiBossBgm: $apiBossBgm)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstMapbgmEntityCopyWith<
          _$_GetDataApiDataApiMstMapbgmEntity>
      get copyWith => __$$_GetDataApiDataApiMstMapbgmEntityCopyWithImpl<
          _$_GetDataApiDataApiMstMapbgmEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstMapbgmEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstMapbgmEntity
    implements GetDataApiDataApiMstMapbgmEntity {
  factory _GetDataApiDataApiMstMapbgmEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_moving_bgm') required int apiMovingBgm,
          @JsonKey(name: 'api_map_bgm') required List<int> apiMapBgm,
          @JsonKey(name: 'api_boss_bgm') required List<int> apiBossBgm}) =
      _$_GetDataApiDataApiMstMapbgmEntity;

  factory _GetDataApiDataApiMstMapbgmEntity.fromJson(
      Map<String, dynamic> json) = _$_GetDataApiDataApiMstMapbgmEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value);
  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_moving_bgm')
  int get apiMovingBgm;
  @JsonKey(name: 'api_moving_bgm')
  set apiMovingBgm(int value);
  @override
  @JsonKey(name: 'api_map_bgm')
  List<int> get apiMapBgm;
  @JsonKey(name: 'api_map_bgm')
  set apiMapBgm(List<int> value);
  @override
  @JsonKey(name: 'api_boss_bgm')
  List<int> get apiBossBgm;
  @JsonKey(name: 'api_boss_bgm')
  set apiBossBgm(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstMapbgmEntityCopyWith<
          _$_GetDataApiDataApiMstMapbgmEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstMissionEntity _$GetDataApiDataApiMstMissionEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstMissionEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstMissionEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_disp_no')
  String get apiDispNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_disp_no')
  set apiDispNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_details')
  String get apiDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_details')
  set apiDetails(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_reset_type')
  int get apiResetType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_reset_type')
  set apiResetType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_damage_type')
  int get apiDamageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_damage_type')
  set apiDamageType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_time')
  int get apiTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_time')
  set apiTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_num')
  int get apiDeckNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_deck_num')
  set apiDeckNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_difficulty')
  int get apiDifficulty => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_difficulty')
  set apiDifficulty(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_use_fuel')
  double get apiUseFuel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_use_fuel')
  set apiUseFuel(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_use_bull')
  double get apiUseBull => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_use_bull')
  set apiUseBull(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_item1')
  List<int> get apiWinItem1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_item1')
  set apiWinItem1(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_item2')
  List<int> get apiWinItem2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_item2')
  set apiWinItem2(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_mat_level')
  List<int> get apiWinMatLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_win_mat_level')
  set apiWinMatLevel(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_return_flag')
  int get apiReturnFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_return_flag')
  set apiReturnFlag(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sample_fleet')
  List<int> get apiSampleFleet => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sample_fleet')
  set apiSampleFleet(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstMissionEntityCopyWith<GetDataApiDataApiMstMissionEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstMissionEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstMissionEntityCopyWith(
          GetDataApiDataApiMstMissionEntity value,
          $Res Function(GetDataApiDataApiMstMissionEntity) then) =
      _$GetDataApiDataApiMstMissionEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstMissionEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_disp_no') String apiDispNo,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_details') String apiDetails,
      @JsonKey(name: 'api_reset_type') int apiResetType,
      @JsonKey(name: 'api_damage_type') int apiDamageType,
      @JsonKey(name: 'api_time') int apiTime,
      @JsonKey(name: 'api_deck_num') int apiDeckNum,
      @JsonKey(name: 'api_difficulty') int apiDifficulty,
      @JsonKey(name: 'api_use_fuel') double apiUseFuel,
      @JsonKey(name: 'api_use_bull') double apiUseBull,
      @JsonKey(name: 'api_win_item1') List<int> apiWinItem1,
      @JsonKey(name: 'api_win_item2') List<int> apiWinItem2,
      @JsonKey(name: 'api_win_mat_level') List<int> apiWinMatLevel,
      @JsonKey(name: 'api_return_flag') int apiReturnFlag,
      @JsonKey(name: 'api_sample_fleet') List<int> apiSampleFleet});
}

/// @nodoc
class _$GetDataApiDataApiMstMissionEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstMissionEntity>
    implements $GetDataApiDataApiMstMissionEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstMissionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiDispNo = null,
    Object? apiMapareaId = null,
    Object? apiName = null,
    Object? apiDetails = null,
    Object? apiResetType = null,
    Object? apiDamageType = null,
    Object? apiTime = null,
    Object? apiDeckNum = null,
    Object? apiDifficulty = null,
    Object? apiUseFuel = null,
    Object? apiUseBull = null,
    Object? apiWinItem1 = null,
    Object? apiWinItem2 = null,
    Object? apiWinMatLevel = null,
    Object? apiReturnFlag = null,
    Object? apiSampleFleet = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiDispNo: null == apiDispNo
          ? _value.apiDispNo
          : apiDispNo // ignore: cast_nullable_to_non_nullable
              as String,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDetails: null == apiDetails
          ? _value.apiDetails
          : apiDetails // ignore: cast_nullable_to_non_nullable
              as String,
      apiResetType: null == apiResetType
          ? _value.apiResetType
          : apiResetType // ignore: cast_nullable_to_non_nullable
              as int,
      apiDamageType: null == apiDamageType
          ? _value.apiDamageType
          : apiDamageType // ignore: cast_nullable_to_non_nullable
              as int,
      apiTime: null == apiTime
          ? _value.apiTime
          : apiTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiDeckNum: null == apiDeckNum
          ? _value.apiDeckNum
          : apiDeckNum // ignore: cast_nullable_to_non_nullable
              as int,
      apiDifficulty: null == apiDifficulty
          ? _value.apiDifficulty
          : apiDifficulty // ignore: cast_nullable_to_non_nullable
              as int,
      apiUseFuel: null == apiUseFuel
          ? _value.apiUseFuel
          : apiUseFuel // ignore: cast_nullable_to_non_nullable
              as double,
      apiUseBull: null == apiUseBull
          ? _value.apiUseBull
          : apiUseBull // ignore: cast_nullable_to_non_nullable
              as double,
      apiWinItem1: null == apiWinItem1
          ? _value.apiWinItem1
          : apiWinItem1 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinItem2: null == apiWinItem2
          ? _value.apiWinItem2
          : apiWinItem2 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinMatLevel: null == apiWinMatLevel
          ? _value.apiWinMatLevel
          : apiWinMatLevel // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiReturnFlag: null == apiReturnFlag
          ? _value.apiReturnFlag
          : apiReturnFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSampleFleet: null == apiSampleFleet
          ? _value.apiSampleFleet
          : apiSampleFleet // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstMissionEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstMissionEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstMissionEntityCopyWith(
          _$_GetDataApiDataApiMstMissionEntity value,
          $Res Function(_$_GetDataApiDataApiMstMissionEntity) then) =
      __$$_GetDataApiDataApiMstMissionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_disp_no') String apiDispNo,
      @JsonKey(name: 'api_maparea_id') int apiMapareaId,
      @JsonKey(name: 'api_name') String apiName,
      @JsonKey(name: 'api_details') String apiDetails,
      @JsonKey(name: 'api_reset_type') int apiResetType,
      @JsonKey(name: 'api_damage_type') int apiDamageType,
      @JsonKey(name: 'api_time') int apiTime,
      @JsonKey(name: 'api_deck_num') int apiDeckNum,
      @JsonKey(name: 'api_difficulty') int apiDifficulty,
      @JsonKey(name: 'api_use_fuel') double apiUseFuel,
      @JsonKey(name: 'api_use_bull') double apiUseBull,
      @JsonKey(name: 'api_win_item1') List<int> apiWinItem1,
      @JsonKey(name: 'api_win_item2') List<int> apiWinItem2,
      @JsonKey(name: 'api_win_mat_level') List<int> apiWinMatLevel,
      @JsonKey(name: 'api_return_flag') int apiReturnFlag,
      @JsonKey(name: 'api_sample_fleet') List<int> apiSampleFleet});
}

/// @nodoc
class __$$_GetDataApiDataApiMstMissionEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstMissionEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstMissionEntity>
    implements _$$_GetDataApiDataApiMstMissionEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstMissionEntityCopyWithImpl(
      _$_GetDataApiDataApiMstMissionEntity _value,
      $Res Function(_$_GetDataApiDataApiMstMissionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiDispNo = null,
    Object? apiMapareaId = null,
    Object? apiName = null,
    Object? apiDetails = null,
    Object? apiResetType = null,
    Object? apiDamageType = null,
    Object? apiTime = null,
    Object? apiDeckNum = null,
    Object? apiDifficulty = null,
    Object? apiUseFuel = null,
    Object? apiUseBull = null,
    Object? apiWinItem1 = null,
    Object? apiWinItem2 = null,
    Object? apiWinMatLevel = null,
    Object? apiReturnFlag = null,
    Object? apiSampleFleet = null,
  }) {
    return _then(_$_GetDataApiDataApiMstMissionEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiDispNo: null == apiDispNo
          ? _value.apiDispNo
          : apiDispNo // ignore: cast_nullable_to_non_nullable
              as String,
      apiMapareaId: null == apiMapareaId
          ? _value.apiMapareaId
          : apiMapareaId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      apiDetails: null == apiDetails
          ? _value.apiDetails
          : apiDetails // ignore: cast_nullable_to_non_nullable
              as String,
      apiResetType: null == apiResetType
          ? _value.apiResetType
          : apiResetType // ignore: cast_nullable_to_non_nullable
              as int,
      apiDamageType: null == apiDamageType
          ? _value.apiDamageType
          : apiDamageType // ignore: cast_nullable_to_non_nullable
              as int,
      apiTime: null == apiTime
          ? _value.apiTime
          : apiTime // ignore: cast_nullable_to_non_nullable
              as int,
      apiDeckNum: null == apiDeckNum
          ? _value.apiDeckNum
          : apiDeckNum // ignore: cast_nullable_to_non_nullable
              as int,
      apiDifficulty: null == apiDifficulty
          ? _value.apiDifficulty
          : apiDifficulty // ignore: cast_nullable_to_non_nullable
              as int,
      apiUseFuel: null == apiUseFuel
          ? _value.apiUseFuel
          : apiUseFuel // ignore: cast_nullable_to_non_nullable
              as double,
      apiUseBull: null == apiUseBull
          ? _value.apiUseBull
          : apiUseBull // ignore: cast_nullable_to_non_nullable
              as double,
      apiWinItem1: null == apiWinItem1
          ? _value.apiWinItem1
          : apiWinItem1 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinItem2: null == apiWinItem2
          ? _value.apiWinItem2
          : apiWinItem2 // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiWinMatLevel: null == apiWinMatLevel
          ? _value.apiWinMatLevel
          : apiWinMatLevel // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apiReturnFlag: null == apiReturnFlag
          ? _value.apiReturnFlag
          : apiReturnFlag // ignore: cast_nullable_to_non_nullable
              as int,
      apiSampleFleet: null == apiSampleFleet
          ? _value.apiSampleFleet
          : apiSampleFleet // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstMissionEntity
    implements _GetDataApiDataApiMstMissionEntity {
  _$_GetDataApiDataApiMstMissionEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_disp_no') required this.apiDispNo,
      @JsonKey(name: 'api_maparea_id') required this.apiMapareaId,
      @JsonKey(name: 'api_name') required this.apiName,
      @JsonKey(name: 'api_details') required this.apiDetails,
      @JsonKey(name: 'api_reset_type') required this.apiResetType,
      @JsonKey(name: 'api_damage_type') required this.apiDamageType,
      @JsonKey(name: 'api_time') required this.apiTime,
      @JsonKey(name: 'api_deck_num') required this.apiDeckNum,
      @JsonKey(name: 'api_difficulty') required this.apiDifficulty,
      @JsonKey(name: 'api_use_fuel') required this.apiUseFuel,
      @JsonKey(name: 'api_use_bull') required this.apiUseBull,
      @JsonKey(name: 'api_win_item1') required this.apiWinItem1,
      @JsonKey(name: 'api_win_item2') required this.apiWinItem2,
      @JsonKey(name: 'api_win_mat_level') required this.apiWinMatLevel,
      @JsonKey(name: 'api_return_flag') required this.apiReturnFlag,
      @JsonKey(name: 'api_sample_fleet') required this.apiSampleFleet});

  factory _$_GetDataApiDataApiMstMissionEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstMissionEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_disp_no')
  String apiDispNo;
  @override
  @JsonKey(name: 'api_maparea_id')
  int apiMapareaId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;
  @override
  @JsonKey(name: 'api_details')
  String apiDetails;
  @override
  @JsonKey(name: 'api_reset_type')
  int apiResetType;
  @override
  @JsonKey(name: 'api_damage_type')
  int apiDamageType;
  @override
  @JsonKey(name: 'api_time')
  int apiTime;
  @override
  @JsonKey(name: 'api_deck_num')
  int apiDeckNum;
  @override
  @JsonKey(name: 'api_difficulty')
  int apiDifficulty;
  @override
  @JsonKey(name: 'api_use_fuel')
  double apiUseFuel;
  @override
  @JsonKey(name: 'api_use_bull')
  double apiUseBull;
  @override
  @JsonKey(name: 'api_win_item1')
  List<int> apiWinItem1;
  @override
  @JsonKey(name: 'api_win_item2')
  List<int> apiWinItem2;
  @override
  @JsonKey(name: 'api_win_mat_level')
  List<int> apiWinMatLevel;
  @override
  @JsonKey(name: 'api_return_flag')
  int apiReturnFlag;
  @override
  @JsonKey(name: 'api_sample_fleet')
  List<int> apiSampleFleet;

  @override
  String toString() {
    return 'GetDataApiDataApiMstMissionEntity(apiId: $apiId, apiDispNo: $apiDispNo, apiMapareaId: $apiMapareaId, apiName: $apiName, apiDetails: $apiDetails, apiResetType: $apiResetType, apiDamageType: $apiDamageType, apiTime: $apiTime, apiDeckNum: $apiDeckNum, apiDifficulty: $apiDifficulty, apiUseFuel: $apiUseFuel, apiUseBull: $apiUseBull, apiWinItem1: $apiWinItem1, apiWinItem2: $apiWinItem2, apiWinMatLevel: $apiWinMatLevel, apiReturnFlag: $apiReturnFlag, apiSampleFleet: $apiSampleFleet)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstMissionEntityCopyWith<
          _$_GetDataApiDataApiMstMissionEntity>
      get copyWith => __$$_GetDataApiDataApiMstMissionEntityCopyWithImpl<
          _$_GetDataApiDataApiMstMissionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstMissionEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstMissionEntity
    implements GetDataApiDataApiMstMissionEntity {
  factory _GetDataApiDataApiMstMissionEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_disp_no') required String apiDispNo,
          @JsonKey(name: 'api_maparea_id') required int apiMapareaId,
          @JsonKey(name: 'api_name') required String apiName,
          @JsonKey(name: 'api_details') required String apiDetails,
          @JsonKey(name: 'api_reset_type') required int apiResetType,
          @JsonKey(name: 'api_damage_type') required int apiDamageType,
          @JsonKey(name: 'api_time') required int apiTime,
          @JsonKey(name: 'api_deck_num') required int apiDeckNum,
          @JsonKey(name: 'api_difficulty') required int apiDifficulty,
          @JsonKey(name: 'api_use_fuel') required double apiUseFuel,
          @JsonKey(name: 'api_use_bull') required double apiUseBull,
          @JsonKey(name: 'api_win_item1') required List<int> apiWinItem1,
          @JsonKey(name: 'api_win_item2') required List<int> apiWinItem2,
          @JsonKey(name: 'api_win_mat_level') required List<int> apiWinMatLevel,
          @JsonKey(name: 'api_return_flag') required int apiReturnFlag,
          @JsonKey(name: 'api_sample_fleet')
          required List<int> apiSampleFleet}) =
      _$_GetDataApiDataApiMstMissionEntity;

  factory _GetDataApiDataApiMstMissionEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstMissionEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_disp_no')
  String get apiDispNo;
  @JsonKey(name: 'api_disp_no')
  set apiDispNo(String value);
  @override
  @JsonKey(name: 'api_maparea_id')
  int get apiMapareaId;
  @JsonKey(name: 'api_maparea_id')
  set apiMapareaId(int value);
  @override
  @JsonKey(name: 'api_name')
  String get apiName;
  @JsonKey(name: 'api_name')
  set apiName(String value);
  @override
  @JsonKey(name: 'api_details')
  String get apiDetails;
  @JsonKey(name: 'api_details')
  set apiDetails(String value);
  @override
  @JsonKey(name: 'api_reset_type')
  int get apiResetType;
  @JsonKey(name: 'api_reset_type')
  set apiResetType(int value);
  @override
  @JsonKey(name: 'api_damage_type')
  int get apiDamageType;
  @JsonKey(name: 'api_damage_type')
  set apiDamageType(int value);
  @override
  @JsonKey(name: 'api_time')
  int get apiTime;
  @JsonKey(name: 'api_time')
  set apiTime(int value);
  @override
  @JsonKey(name: 'api_deck_num')
  int get apiDeckNum;
  @JsonKey(name: 'api_deck_num')
  set apiDeckNum(int value);
  @override
  @JsonKey(name: 'api_difficulty')
  int get apiDifficulty;
  @JsonKey(name: 'api_difficulty')
  set apiDifficulty(int value);
  @override
  @JsonKey(name: 'api_use_fuel')
  double get apiUseFuel;
  @JsonKey(name: 'api_use_fuel')
  set apiUseFuel(double value);
  @override
  @JsonKey(name: 'api_use_bull')
  double get apiUseBull;
  @JsonKey(name: 'api_use_bull')
  set apiUseBull(double value);
  @override
  @JsonKey(name: 'api_win_item1')
  List<int> get apiWinItem1;
  @JsonKey(name: 'api_win_item1')
  set apiWinItem1(List<int> value);
  @override
  @JsonKey(name: 'api_win_item2')
  List<int> get apiWinItem2;
  @JsonKey(name: 'api_win_item2')
  set apiWinItem2(List<int> value);
  @override
  @JsonKey(name: 'api_win_mat_level')
  List<int> get apiWinMatLevel;
  @JsonKey(name: 'api_win_mat_level')
  set apiWinMatLevel(List<int> value);
  @override
  @JsonKey(name: 'api_return_flag')
  int get apiReturnFlag;
  @JsonKey(name: 'api_return_flag')
  set apiReturnFlag(int value);
  @override
  @JsonKey(name: 'api_sample_fleet')
  List<int> get apiSampleFleet;
  @JsonKey(name: 'api_sample_fleet')
  set apiSampleFleet(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstMissionEntityCopyWith<
          _$_GetDataApiDataApiMstMissionEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstConstEntity _$GetDataApiDataApiMstConstEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstConstEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstConstEntity {
  @JsonKey(name: 'api_dpflag_quest')
  GetDataApiDataApiMstConstApiDpflagQuestEntity get apiDpflagQuest =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_dpflag_quest')
  set apiDpflagQuest(GetDataApiDataApiMstConstApiDpflagQuestEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_max_ships')
  GetDataApiDataApiMstConstApiBokoMaxShipsEntity get apiBokoMaxShips =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_max_ships')
  set apiBokoMaxShips(GetDataApiDataApiMstConstApiBokoMaxShipsEntity value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_parallel_quest_max')
  GetDataApiDataApiMstConstApiParallelQuestMaxEntity get apiParallelQuestMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'api_parallel_quest_max')
  set apiParallelQuestMax(
          GetDataApiDataApiMstConstApiParallelQuestMaxEntity value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstConstEntityCopyWith<GetDataApiDataApiMstConstEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstConstEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstConstEntityCopyWith(
          GetDataApiDataApiMstConstEntity value,
          $Res Function(GetDataApiDataApiMstConstEntity) then) =
      _$GetDataApiDataApiMstConstEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstConstEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_dpflag_quest')
      GetDataApiDataApiMstConstApiDpflagQuestEntity apiDpflagQuest,
      @JsonKey(name: 'api_boko_max_ships')
      GetDataApiDataApiMstConstApiBokoMaxShipsEntity apiBokoMaxShips,
      @JsonKey(name: 'api_parallel_quest_max')
      GetDataApiDataApiMstConstApiParallelQuestMaxEntity apiParallelQuestMax});

  $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res>
      get apiDpflagQuest;
  $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res>
      get apiBokoMaxShips;
  $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res>
      get apiParallelQuestMax;
}

/// @nodoc
class _$GetDataApiDataApiMstConstEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstConstEntity>
    implements $GetDataApiDataApiMstConstEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstConstEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiDpflagQuest = null,
    Object? apiBokoMaxShips = null,
    Object? apiParallelQuestMax = null,
  }) {
    return _then(_value.copyWith(
      apiDpflagQuest: null == apiDpflagQuest
          ? _value.apiDpflagQuest
          : apiDpflagQuest // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiDpflagQuestEntity,
      apiBokoMaxShips: null == apiBokoMaxShips
          ? _value.apiBokoMaxShips
          : apiBokoMaxShips // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiBokoMaxShipsEntity,
      apiParallelQuestMax: null == apiParallelQuestMax
          ? _value.apiParallelQuestMax
          : apiParallelQuestMax // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiParallelQuestMaxEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res>
      get apiDpflagQuest {
    return $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res>(
        _value.apiDpflagQuest, (value) {
      return _then(_value.copyWith(apiDpflagQuest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res>
      get apiBokoMaxShips {
    return $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res>(
        _value.apiBokoMaxShips, (value) {
      return _then(_value.copyWith(apiBokoMaxShips: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res>
      get apiParallelQuestMax {
    return $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res>(
        _value.apiParallelQuestMax, (value) {
      return _then(_value.copyWith(apiParallelQuestMax: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstConstEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstConstEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstConstEntityCopyWith(
          _$_GetDataApiDataApiMstConstEntity value,
          $Res Function(_$_GetDataApiDataApiMstConstEntity) then) =
      __$$_GetDataApiDataApiMstConstEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_dpflag_quest')
      GetDataApiDataApiMstConstApiDpflagQuestEntity apiDpflagQuest,
      @JsonKey(name: 'api_boko_max_ships')
      GetDataApiDataApiMstConstApiBokoMaxShipsEntity apiBokoMaxShips,
      @JsonKey(name: 'api_parallel_quest_max')
      GetDataApiDataApiMstConstApiParallelQuestMaxEntity apiParallelQuestMax});

  @override
  $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res>
      get apiDpflagQuest;
  @override
  $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res>
      get apiBokoMaxShips;
  @override
  $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res>
      get apiParallelQuestMax;
}

/// @nodoc
class __$$_GetDataApiDataApiMstConstEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstConstEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstConstEntity>
    implements _$$_GetDataApiDataApiMstConstEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstConstEntityCopyWithImpl(
      _$_GetDataApiDataApiMstConstEntity _value,
      $Res Function(_$_GetDataApiDataApiMstConstEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiDpflagQuest = null,
    Object? apiBokoMaxShips = null,
    Object? apiParallelQuestMax = null,
  }) {
    return _then(_$_GetDataApiDataApiMstConstEntity(
      apiDpflagQuest: null == apiDpflagQuest
          ? _value.apiDpflagQuest
          : apiDpflagQuest // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiDpflagQuestEntity,
      apiBokoMaxShips: null == apiBokoMaxShips
          ? _value.apiBokoMaxShips
          : apiBokoMaxShips // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiBokoMaxShipsEntity,
      apiParallelQuestMax: null == apiParallelQuestMax
          ? _value.apiParallelQuestMax
          : apiParallelQuestMax // ignore: cast_nullable_to_non_nullable
              as GetDataApiDataApiMstConstApiParallelQuestMaxEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstConstEntity
    implements _GetDataApiDataApiMstConstEntity {
  _$_GetDataApiDataApiMstConstEntity(
      {@JsonKey(name: 'api_dpflag_quest') required this.apiDpflagQuest,
      @JsonKey(name: 'api_boko_max_ships') required this.apiBokoMaxShips,
      @JsonKey(name: 'api_parallel_quest_max')
      required this.apiParallelQuestMax});

  factory _$_GetDataApiDataApiMstConstEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstConstEntityFromJson(json);

  @override
  @JsonKey(name: 'api_dpflag_quest')
  GetDataApiDataApiMstConstApiDpflagQuestEntity apiDpflagQuest;
  @override
  @JsonKey(name: 'api_boko_max_ships')
  GetDataApiDataApiMstConstApiBokoMaxShipsEntity apiBokoMaxShips;
  @override
  @JsonKey(name: 'api_parallel_quest_max')
  GetDataApiDataApiMstConstApiParallelQuestMaxEntity apiParallelQuestMax;

  @override
  String toString() {
    return 'GetDataApiDataApiMstConstEntity(apiDpflagQuest: $apiDpflagQuest, apiBokoMaxShips: $apiBokoMaxShips, apiParallelQuestMax: $apiParallelQuestMax)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstConstEntityCopyWith<
          _$_GetDataApiDataApiMstConstEntity>
      get copyWith => __$$_GetDataApiDataApiMstConstEntityCopyWithImpl<
          _$_GetDataApiDataApiMstConstEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstConstEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstConstEntity
    implements GetDataApiDataApiMstConstEntity {
  factory _GetDataApiDataApiMstConstEntity(
      {@JsonKey(name: 'api_dpflag_quest')
      required GetDataApiDataApiMstConstApiDpflagQuestEntity apiDpflagQuest,
      @JsonKey(name: 'api_boko_max_ships')
      required GetDataApiDataApiMstConstApiBokoMaxShipsEntity apiBokoMaxShips,
      @JsonKey(name: 'api_parallel_quest_max')
      required GetDataApiDataApiMstConstApiParallelQuestMaxEntity
          apiParallelQuestMax}) = _$_GetDataApiDataApiMstConstEntity;

  factory _GetDataApiDataApiMstConstEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstConstEntity.fromJson;

  @override
  @JsonKey(name: 'api_dpflag_quest')
  GetDataApiDataApiMstConstApiDpflagQuestEntity get apiDpflagQuest;
  @JsonKey(name: 'api_dpflag_quest')
  set apiDpflagQuest(GetDataApiDataApiMstConstApiDpflagQuestEntity value);
  @override
  @JsonKey(name: 'api_boko_max_ships')
  GetDataApiDataApiMstConstApiBokoMaxShipsEntity get apiBokoMaxShips;
  @JsonKey(name: 'api_boko_max_ships')
  set apiBokoMaxShips(GetDataApiDataApiMstConstApiBokoMaxShipsEntity value);
  @override
  @JsonKey(name: 'api_parallel_quest_max')
  GetDataApiDataApiMstConstApiParallelQuestMaxEntity get apiParallelQuestMax;
  @JsonKey(name: 'api_parallel_quest_max')
  set apiParallelQuestMax(
      GetDataApiDataApiMstConstApiParallelQuestMaxEntity value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstConstEntityCopyWith<
          _$_GetDataApiDataApiMstConstEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstConstApiDpflagQuestEntity
    _$GetDataApiDataApiMstConstApiDpflagQuestEntityFromJson(
        Map<String, dynamic> json) {
  return _GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstConstApiDpflagQuestEntity {
  @JsonKey(name: 'api_string_value')
  String get apiStringValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  int get apiIntValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<
          GetDataApiDataApiMstConstApiDpflagQuestEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith(
          GetDataApiDataApiMstConstApiDpflagQuestEntity value,
          $Res Function(GetDataApiDataApiMstConstApiDpflagQuestEntity) then) =
      _$GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstConstApiDpflagQuestEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class _$GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstConstApiDpflagQuestEntity>
    implements $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_value.copyWith(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith(
          _$_GetDataApiDataApiMstConstApiDpflagQuestEntity value,
          $Res Function(_$_GetDataApiDataApiMstConstApiDpflagQuestEntity)
              then) =
      __$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class __$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstConstApiDpflagQuestEntity>
    implements _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl(
      _$_GetDataApiDataApiMstConstApiDpflagQuestEntity _value,
      $Res Function(_$_GetDataApiDataApiMstConstApiDpflagQuestEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_$_GetDataApiDataApiMstConstApiDpflagQuestEntity(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstConstApiDpflagQuestEntity
    implements _GetDataApiDataApiMstConstApiDpflagQuestEntity {
  _$_GetDataApiDataApiMstConstApiDpflagQuestEntity(
      {@JsonKey(name: 'api_string_value') required this.apiStringValue,
      @JsonKey(name: 'api_int_value') required this.apiIntValue});

  factory _$_GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityFromJson(json);

  @override
  @JsonKey(name: 'api_string_value')
  String apiStringValue;
  @override
  @JsonKey(name: 'api_int_value')
  int apiIntValue;

  @override
  String toString() {
    return 'GetDataApiDataApiMstConstApiDpflagQuestEntity(apiStringValue: $apiStringValue, apiIntValue: $apiIntValue)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiDpflagQuestEntity>
      get copyWith =>
          __$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWithImpl<
                  _$_GetDataApiDataApiMstConstApiDpflagQuestEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstConstApiDpflagQuestEntity
    implements GetDataApiDataApiMstConstApiDpflagQuestEntity {
  factory _GetDataApiDataApiMstConstApiDpflagQuestEntity(
          {@JsonKey(name: 'api_string_value') required String apiStringValue,
          @JsonKey(name: 'api_int_value') required int apiIntValue}) =
      _$_GetDataApiDataApiMstConstApiDpflagQuestEntity;

  factory _GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstConstApiDpflagQuestEntity.fromJson;

  @override
  @JsonKey(name: 'api_string_value')
  String get apiStringValue;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value);
  @override
  @JsonKey(name: 'api_int_value')
  int get apiIntValue;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstConstApiDpflagQuestEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiDpflagQuestEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstConstApiBokoMaxShipsEntity
    _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityFromJson(
        Map<String, dynamic> json) {
  return _GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstConstApiBokoMaxShipsEntity {
  @JsonKey(name: 'api_string_value')
  String get apiStringValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  int get apiIntValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<
          GetDataApiDataApiMstConstApiBokoMaxShipsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith(
          GetDataApiDataApiMstConstApiBokoMaxShipsEntity value,
          $Res Function(GetDataApiDataApiMstConstApiBokoMaxShipsEntity) then) =
      _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstConstApiBokoMaxShipsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstConstApiBokoMaxShipsEntity>
    implements $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_value.copyWith(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith(
          _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity value,
          $Res Function(_$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity)
              then) =
      __$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class __$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity>
    implements
        _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl(
      _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity _value,
      $Res Function(_$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity
    implements _GetDataApiDataApiMstConstApiBokoMaxShipsEntity {
  _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity(
      {@JsonKey(name: 'api_string_value') required this.apiStringValue,
      @JsonKey(name: 'api_int_value') required this.apiIntValue});

  factory _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityFromJson(json);

  @override
  @JsonKey(name: 'api_string_value')
  String apiStringValue;
  @override
  @JsonKey(name: 'api_int_value')
  int apiIntValue;

  @override
  String toString() {
    return 'GetDataApiDataApiMstConstApiBokoMaxShipsEntity(apiStringValue: $apiStringValue, apiIntValue: $apiIntValue)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity>
      get copyWith =>
          __$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWithImpl<
                  _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstConstApiBokoMaxShipsEntity
    implements GetDataApiDataApiMstConstApiBokoMaxShipsEntity {
  factory _GetDataApiDataApiMstConstApiBokoMaxShipsEntity(
          {@JsonKey(name: 'api_string_value') required String apiStringValue,
          @JsonKey(name: 'api_int_value') required int apiIntValue}) =
      _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity;

  factory _GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity.fromJson;

  @override
  @JsonKey(name: 'api_string_value')
  String get apiStringValue;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value);
  @override
  @JsonKey(name: 'api_int_value')
  int get apiIntValue;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstConstApiBokoMaxShipsEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiBokoMaxShipsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstConstApiParallelQuestMaxEntity
    _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityFromJson(
        Map<String, dynamic> json) {
  return _GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstConstApiParallelQuestMaxEntity {
  @JsonKey(name: 'api_string_value')
  String get apiStringValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  int get apiIntValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<
          GetDataApiDataApiMstConstApiParallelQuestMaxEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<
    $Res> {
  factory $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith(
          GetDataApiDataApiMstConstApiParallelQuestMaxEntity value,
          $Res Function(GetDataApiDataApiMstConstApiParallelQuestMaxEntity)
              then) =
      _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstConstApiParallelQuestMaxEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstConstApiParallelQuestMaxEntity>
    implements
        $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_value.copyWith(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<
        $Res>
    implements
        $GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith(
          _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity value,
          $Res Function(_$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity)
              then) =
      __$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_string_value') String apiStringValue,
      @JsonKey(name: 'api_int_value') int apiIntValue});
}

/// @nodoc
class __$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<
        $Res, _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity>
    implements
        _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl(
      _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity _value,
      $Res Function(_$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStringValue = null,
    Object? apiIntValue = null,
  }) {
    return _then(_$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity(
      apiStringValue: null == apiStringValue
          ? _value.apiStringValue
          : apiStringValue // ignore: cast_nullable_to_non_nullable
              as String,
      apiIntValue: null == apiIntValue
          ? _value.apiIntValue
          : apiIntValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity
    implements _GetDataApiDataApiMstConstApiParallelQuestMaxEntity {
  _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity(
      {@JsonKey(name: 'api_string_value') required this.apiStringValue,
      @JsonKey(name: 'api_int_value') required this.apiIntValue});

  factory _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityFromJson(json);

  @override
  @JsonKey(name: 'api_string_value')
  String apiStringValue;
  @override
  @JsonKey(name: 'api_int_value')
  int apiIntValue;

  @override
  String toString() {
    return 'GetDataApiDataApiMstConstApiParallelQuestMaxEntity(apiStringValue: $apiStringValue, apiIntValue: $apiIntValue)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity>
      get copyWith =>
          __$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWithImpl<
                  _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstConstApiParallelQuestMaxEntity
    implements GetDataApiDataApiMstConstApiParallelQuestMaxEntity {
  factory _GetDataApiDataApiMstConstApiParallelQuestMaxEntity(
          {@JsonKey(name: 'api_string_value') required String apiStringValue,
          @JsonKey(name: 'api_int_value') required int apiIntValue}) =
      _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity;

  factory _GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity.fromJson;

  @override
  @JsonKey(name: 'api_string_value')
  String get apiStringValue;
  @JsonKey(name: 'api_string_value')
  set apiStringValue(String value);
  @override
  @JsonKey(name: 'api_int_value')
  int get apiIntValue;
  @JsonKey(name: 'api_int_value')
  set apiIntValue(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstConstApiParallelQuestMaxEntityCopyWith<
          _$_GetDataApiDataApiMstConstApiParallelQuestMaxEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstShipupgradeEntity
    _$GetDataApiDataApiMstShipupgradeEntityFromJson(Map<String, dynamic> json) {
  return _GetDataApiDataApiMstShipupgradeEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstShipupgradeEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_current_ship_id')
  int get apiCurrentShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_current_ship_id')
  set apiCurrentShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_original_ship_id')
  int get apiOriginalShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_original_ship_id')
  set apiOriginalShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_upgrade_type')
  int get apiUpgradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_upgrade_type')
  set apiUpgradeType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_upgrade_level')
  int get apiUpgradeLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_upgrade_level')
  set apiUpgradeLevel(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_drawing_count')
  int get apiDrawingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_drawing_count')
  set apiDrawingCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_catapult_count')
  int get apiCatapultCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_catapult_count')
  set apiCatapultCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_report_count')
  int get apiReportCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_report_count')
  set apiReportCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_aviation_mat_count')
  int get apiAviationMatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_aviation_mat_count')
  set apiAviationMatCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_arms_mat_count')
  int get apiArmsMatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_arms_mat_count')
  set apiArmsMatCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstShipupgradeEntityCopyWith<
          GetDataApiDataApiMstShipupgradeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstShipupgradeEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstShipupgradeEntityCopyWith(
          GetDataApiDataApiMstShipupgradeEntity value,
          $Res Function(GetDataApiDataApiMstShipupgradeEntity) then) =
      _$GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstShipupgradeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_current_ship_id') int apiCurrentShipId,
      @JsonKey(name: 'api_original_ship_id') int apiOriginalShipId,
      @JsonKey(name: 'api_upgrade_type') int apiUpgradeType,
      @JsonKey(name: 'api_upgrade_level') int apiUpgradeLevel,
      @JsonKey(name: 'api_drawing_count') int apiDrawingCount,
      @JsonKey(name: 'api_catapult_count') int apiCatapultCount,
      @JsonKey(name: 'api_report_count') int apiReportCount,
      @JsonKey(name: 'api_aviation_mat_count') int apiAviationMatCount,
      @JsonKey(name: 'api_arms_mat_count') int apiArmsMatCount,
      @JsonKey(name: 'api_sortno') int apiSortno});
}

/// @nodoc
class _$GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstShipupgradeEntity>
    implements $GetDataApiDataApiMstShipupgradeEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstShipupgradeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiCurrentShipId = null,
    Object? apiOriginalShipId = null,
    Object? apiUpgradeType = null,
    Object? apiUpgradeLevel = null,
    Object? apiDrawingCount = null,
    Object? apiCatapultCount = null,
    Object? apiReportCount = null,
    Object? apiAviationMatCount = null,
    Object? apiArmsMatCount = null,
    Object? apiSortno = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCurrentShipId: null == apiCurrentShipId
          ? _value.apiCurrentShipId
          : apiCurrentShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiOriginalShipId: null == apiOriginalShipId
          ? _value.apiOriginalShipId
          : apiOriginalShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiUpgradeType: null == apiUpgradeType
          ? _value.apiUpgradeType
          : apiUpgradeType // ignore: cast_nullable_to_non_nullable
              as int,
      apiUpgradeLevel: null == apiUpgradeLevel
          ? _value.apiUpgradeLevel
          : apiUpgradeLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiDrawingCount: null == apiDrawingCount
          ? _value.apiDrawingCount
          : apiDrawingCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiCatapultCount: null == apiCatapultCount
          ? _value.apiCatapultCount
          : apiCatapultCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiReportCount: null == apiReportCount
          ? _value.apiReportCount
          : apiReportCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiAviationMatCount: null == apiAviationMatCount
          ? _value.apiAviationMatCount
          : apiAviationMatCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiArmsMatCount: null == apiArmsMatCount
          ? _value.apiArmsMatCount
          : apiArmsMatCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstShipupgradeEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstShipupgradeEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstShipupgradeEntityCopyWith(
          _$_GetDataApiDataApiMstShipupgradeEntity value,
          $Res Function(_$_GetDataApiDataApiMstShipupgradeEntity) then) =
      __$$_GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_current_ship_id') int apiCurrentShipId,
      @JsonKey(name: 'api_original_ship_id') int apiOriginalShipId,
      @JsonKey(name: 'api_upgrade_type') int apiUpgradeType,
      @JsonKey(name: 'api_upgrade_level') int apiUpgradeLevel,
      @JsonKey(name: 'api_drawing_count') int apiDrawingCount,
      @JsonKey(name: 'api_catapult_count') int apiCatapultCount,
      @JsonKey(name: 'api_report_count') int apiReportCount,
      @JsonKey(name: 'api_aviation_mat_count') int apiAviationMatCount,
      @JsonKey(name: 'api_arms_mat_count') int apiArmsMatCount,
      @JsonKey(name: 'api_sortno') int apiSortno});
}

/// @nodoc
class __$$_GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstShipupgradeEntity>
    implements _$$_GetDataApiDataApiMstShipupgradeEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstShipupgradeEntityCopyWithImpl(
      _$_GetDataApiDataApiMstShipupgradeEntity _value,
      $Res Function(_$_GetDataApiDataApiMstShipupgradeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiCurrentShipId = null,
    Object? apiOriginalShipId = null,
    Object? apiUpgradeType = null,
    Object? apiUpgradeLevel = null,
    Object? apiDrawingCount = null,
    Object? apiCatapultCount = null,
    Object? apiReportCount = null,
    Object? apiAviationMatCount = null,
    Object? apiArmsMatCount = null,
    Object? apiSortno = null,
  }) {
    return _then(_$_GetDataApiDataApiMstShipupgradeEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiCurrentShipId: null == apiCurrentShipId
          ? _value.apiCurrentShipId
          : apiCurrentShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiOriginalShipId: null == apiOriginalShipId
          ? _value.apiOriginalShipId
          : apiOriginalShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiUpgradeType: null == apiUpgradeType
          ? _value.apiUpgradeType
          : apiUpgradeType // ignore: cast_nullable_to_non_nullable
              as int,
      apiUpgradeLevel: null == apiUpgradeLevel
          ? _value.apiUpgradeLevel
          : apiUpgradeLevel // ignore: cast_nullable_to_non_nullable
              as int,
      apiDrawingCount: null == apiDrawingCount
          ? _value.apiDrawingCount
          : apiDrawingCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiCatapultCount: null == apiCatapultCount
          ? _value.apiCatapultCount
          : apiCatapultCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiReportCount: null == apiReportCount
          ? _value.apiReportCount
          : apiReportCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiAviationMatCount: null == apiAviationMatCount
          ? _value.apiAviationMatCount
          : apiAviationMatCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiArmsMatCount: null == apiArmsMatCount
          ? _value.apiArmsMatCount
          : apiArmsMatCount // ignore: cast_nullable_to_non_nullable
              as int,
      apiSortno: null == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstShipupgradeEntity
    implements _GetDataApiDataApiMstShipupgradeEntity {
  _$_GetDataApiDataApiMstShipupgradeEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_current_ship_id') required this.apiCurrentShipId,
      @JsonKey(name: 'api_original_ship_id') required this.apiOriginalShipId,
      @JsonKey(name: 'api_upgrade_type') required this.apiUpgradeType,
      @JsonKey(name: 'api_upgrade_level') required this.apiUpgradeLevel,
      @JsonKey(name: 'api_drawing_count') required this.apiDrawingCount,
      @JsonKey(name: 'api_catapult_count') required this.apiCatapultCount,
      @JsonKey(name: 'api_report_count') required this.apiReportCount,
      @JsonKey(name: 'api_aviation_mat_count')
      required this.apiAviationMatCount,
      @JsonKey(name: 'api_arms_mat_count') required this.apiArmsMatCount,
      @JsonKey(name: 'api_sortno') required this.apiSortno});

  factory _$_GetDataApiDataApiMstShipupgradeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstShipupgradeEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_current_ship_id')
  int apiCurrentShipId;
  @override
  @JsonKey(name: 'api_original_ship_id')
  int apiOriginalShipId;
  @override
  @JsonKey(name: 'api_upgrade_type')
  int apiUpgradeType;
  @override
  @JsonKey(name: 'api_upgrade_level')
  int apiUpgradeLevel;
  @override
  @JsonKey(name: 'api_drawing_count')
  int apiDrawingCount;
  @override
  @JsonKey(name: 'api_catapult_count')
  int apiCatapultCount;
  @override
  @JsonKey(name: 'api_report_count')
  int apiReportCount;
  @override
  @JsonKey(name: 'api_aviation_mat_count')
  int apiAviationMatCount;
  @override
  @JsonKey(name: 'api_arms_mat_count')
  int apiArmsMatCount;
  @override
  @JsonKey(name: 'api_sortno')
  int apiSortno;

  @override
  String toString() {
    return 'GetDataApiDataApiMstShipupgradeEntity(apiId: $apiId, apiCurrentShipId: $apiCurrentShipId, apiOriginalShipId: $apiOriginalShipId, apiUpgradeType: $apiUpgradeType, apiUpgradeLevel: $apiUpgradeLevel, apiDrawingCount: $apiDrawingCount, apiCatapultCount: $apiCatapultCount, apiReportCount: $apiReportCount, apiAviationMatCount: $apiAviationMatCount, apiArmsMatCount: $apiArmsMatCount, apiSortno: $apiSortno)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstShipupgradeEntityCopyWith<
          _$_GetDataApiDataApiMstShipupgradeEntity>
      get copyWith => __$$_GetDataApiDataApiMstShipupgradeEntityCopyWithImpl<
          _$_GetDataApiDataApiMstShipupgradeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstShipupgradeEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstShipupgradeEntity
    implements GetDataApiDataApiMstShipupgradeEntity {
  factory _GetDataApiDataApiMstShipupgradeEntity(
      {@JsonKey(name: 'api_id') required int apiId,
      @JsonKey(name: 'api_current_ship_id') required int apiCurrentShipId,
      @JsonKey(name: 'api_original_ship_id') required int apiOriginalShipId,
      @JsonKey(name: 'api_upgrade_type') required int apiUpgradeType,
      @JsonKey(name: 'api_upgrade_level') required int apiUpgradeLevel,
      @JsonKey(name: 'api_drawing_count') required int apiDrawingCount,
      @JsonKey(name: 'api_catapult_count') required int apiCatapultCount,
      @JsonKey(name: 'api_report_count') required int apiReportCount,
      @JsonKey(name: 'api_aviation_mat_count') required int apiAviationMatCount,
      @JsonKey(name: 'api_arms_mat_count') required int apiArmsMatCount,
      @JsonKey(name: 'api_sortno')
      required int apiSortno}) = _$_GetDataApiDataApiMstShipupgradeEntity;

  factory _GetDataApiDataApiMstShipupgradeEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstShipupgradeEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_current_ship_id')
  int get apiCurrentShipId;
  @JsonKey(name: 'api_current_ship_id')
  set apiCurrentShipId(int value);
  @override
  @JsonKey(name: 'api_original_ship_id')
  int get apiOriginalShipId;
  @JsonKey(name: 'api_original_ship_id')
  set apiOriginalShipId(int value);
  @override
  @JsonKey(name: 'api_upgrade_type')
  int get apiUpgradeType;
  @JsonKey(name: 'api_upgrade_type')
  set apiUpgradeType(int value);
  @override
  @JsonKey(name: 'api_upgrade_level')
  int get apiUpgradeLevel;
  @JsonKey(name: 'api_upgrade_level')
  set apiUpgradeLevel(int value);
  @override
  @JsonKey(name: 'api_drawing_count')
  int get apiDrawingCount;
  @JsonKey(name: 'api_drawing_count')
  set apiDrawingCount(int value);
  @override
  @JsonKey(name: 'api_catapult_count')
  int get apiCatapultCount;
  @JsonKey(name: 'api_catapult_count')
  set apiCatapultCount(int value);
  @override
  @JsonKey(name: 'api_report_count')
  int get apiReportCount;
  @JsonKey(name: 'api_report_count')
  set apiReportCount(int value);
  @override
  @JsonKey(name: 'api_aviation_mat_count')
  int get apiAviationMatCount;
  @JsonKey(name: 'api_aviation_mat_count')
  set apiAviationMatCount(int value);
  @override
  @JsonKey(name: 'api_arms_mat_count')
  int get apiArmsMatCount;
  @JsonKey(name: 'api_arms_mat_count')
  set apiArmsMatCount(int value);
  @override
  @JsonKey(name: 'api_sortno')
  int get apiSortno;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstShipupgradeEntityCopyWith<
          _$_GetDataApiDataApiMstShipupgradeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstBgmEntity _$GetDataApiDataApiMstBgmEntityFromJson(
    Map<String, dynamic> json) {
  return _GetDataApiDataApiMstBgmEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstBgmEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  String get apiName => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_name')
  set apiName(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstBgmEntityCopyWith<GetDataApiDataApiMstBgmEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstBgmEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstBgmEntityCopyWith(
          GetDataApiDataApiMstBgmEntity value,
          $Res Function(GetDataApiDataApiMstBgmEntity) then) =
      _$GetDataApiDataApiMstBgmEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstBgmEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName});
}

/// @nodoc
class _$GetDataApiDataApiMstBgmEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstBgmEntity>
    implements $GetDataApiDataApiMstBgmEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstBgmEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstBgmEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstBgmEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstBgmEntityCopyWith(
          _$_GetDataApiDataApiMstBgmEntity value,
          $Res Function(_$_GetDataApiDataApiMstBgmEntity) then) =
      __$$_GetDataApiDataApiMstBgmEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_name') String apiName});
}

/// @nodoc
class __$$_GetDataApiDataApiMstBgmEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstBgmEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstBgmEntity>
    implements _$$_GetDataApiDataApiMstBgmEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstBgmEntityCopyWithImpl(
      _$_GetDataApiDataApiMstBgmEntity _value,
      $Res Function(_$_GetDataApiDataApiMstBgmEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiName = null,
  }) {
    return _then(_$_GetDataApiDataApiMstBgmEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstBgmEntity
    implements _GetDataApiDataApiMstBgmEntity {
  _$_GetDataApiDataApiMstBgmEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_name') required this.apiName});

  factory _$_GetDataApiDataApiMstBgmEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstBgmEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_name')
  String apiName;

  @override
  String toString() {
    return 'GetDataApiDataApiMstBgmEntity(apiId: $apiId, apiName: $apiName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstBgmEntityCopyWith<_$_GetDataApiDataApiMstBgmEntity>
      get copyWith => __$$_GetDataApiDataApiMstBgmEntityCopyWithImpl<
          _$_GetDataApiDataApiMstBgmEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstBgmEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstBgmEntity
    implements GetDataApiDataApiMstBgmEntity {
  factory _GetDataApiDataApiMstBgmEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_name') required String apiName}) =
      _$_GetDataApiDataApiMstBgmEntity;

  factory _GetDataApiDataApiMstBgmEntity.fromJson(Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstBgmEntity.fromJson;

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
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstBgmEntityCopyWith<_$_GetDataApiDataApiMstBgmEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstEquipShipEntity
    _$GetDataApiDataApiMstEquipShipEntityFromJson(Map<String, dynamic> json) {
  return _GetDataApiDataApiMstEquipShipEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstEquipShipEntity {
  @JsonKey(name: 'api_ship_id')
  int get apiShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_equip_type')
  List<int> get apiEquipType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_equip_type')
  set apiEquipType(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstEquipShipEntityCopyWith<
          GetDataApiDataApiMstEquipShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstEquipShipEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstEquipShipEntityCopyWith(
          GetDataApiDataApiMstEquipShipEntity value,
          $Res Function(GetDataApiDataApiMstEquipShipEntity) then) =
      _$GetDataApiDataApiMstEquipShipEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstEquipShipEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_equip_type') List<int> apiEquipType});
}

/// @nodoc
class _$GetDataApiDataApiMstEquipShipEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstEquipShipEntity>
    implements $GetDataApiDataApiMstEquipShipEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstEquipShipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiEquipType = null,
  }) {
    return _then(_value.copyWith(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiEquipType: null == apiEquipType
          ? _value.apiEquipType
          : apiEquipType // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstEquipShipEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstEquipShipEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstEquipShipEntityCopyWith(
          _$_GetDataApiDataApiMstEquipShipEntity value,
          $Res Function(_$_GetDataApiDataApiMstEquipShipEntity) then) =
      __$$_GetDataApiDataApiMstEquipShipEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_ship_id') int apiShipId,
      @JsonKey(name: 'api_equip_type') List<int> apiEquipType});
}

/// @nodoc
class __$$_GetDataApiDataApiMstEquipShipEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstEquipShipEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstEquipShipEntity>
    implements _$$_GetDataApiDataApiMstEquipShipEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstEquipShipEntityCopyWithImpl(
      _$_GetDataApiDataApiMstEquipShipEntity _value,
      $Res Function(_$_GetDataApiDataApiMstEquipShipEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiShipId = null,
    Object? apiEquipType = null,
  }) {
    return _then(_$_GetDataApiDataApiMstEquipShipEntity(
      apiShipId: null == apiShipId
          ? _value.apiShipId
          : apiShipId // ignore: cast_nullable_to_non_nullable
              as int,
      apiEquipType: null == apiEquipType
          ? _value.apiEquipType
          : apiEquipType // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstEquipShipEntity
    implements _GetDataApiDataApiMstEquipShipEntity {
  _$_GetDataApiDataApiMstEquipShipEntity(
      {@JsonKey(name: 'api_ship_id') required this.apiShipId,
      @JsonKey(name: 'api_equip_type') required this.apiEquipType});

  factory _$_GetDataApiDataApiMstEquipShipEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstEquipShipEntityFromJson(json);

  @override
  @JsonKey(name: 'api_ship_id')
  int apiShipId;
  @override
  @JsonKey(name: 'api_equip_type')
  List<int> apiEquipType;

  @override
  String toString() {
    return 'GetDataApiDataApiMstEquipShipEntity(apiShipId: $apiShipId, apiEquipType: $apiEquipType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstEquipShipEntityCopyWith<
          _$_GetDataApiDataApiMstEquipShipEntity>
      get copyWith => __$$_GetDataApiDataApiMstEquipShipEntityCopyWithImpl<
          _$_GetDataApiDataApiMstEquipShipEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstEquipShipEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstEquipShipEntity
    implements GetDataApiDataApiMstEquipShipEntity {
  factory _GetDataApiDataApiMstEquipShipEntity(
          {@JsonKey(name: 'api_ship_id') required int apiShipId,
          @JsonKey(name: 'api_equip_type') required List<int> apiEquipType}) =
      _$_GetDataApiDataApiMstEquipShipEntity;

  factory _GetDataApiDataApiMstEquipShipEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstEquipShipEntity.fromJson;

  @override
  @JsonKey(name: 'api_ship_id')
  int get apiShipId;
  @JsonKey(name: 'api_ship_id')
  set apiShipId(int value);
  @override
  @JsonKey(name: 'api_equip_type')
  List<int> get apiEquipType;
  @JsonKey(name: 'api_equip_type')
  set apiEquipType(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstEquipShipEntityCopyWith<
          _$_GetDataApiDataApiMstEquipShipEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstFurnitureEntity
    _$GetDataApiDataApiMstFurnitureEntityFromJson(Map<String, dynamic> json) {
  return _GetDataApiDataApiMstFurnitureEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstFurnitureEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  int get apiType => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_type')
  set apiType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  int get apiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_no')
  set apiNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_title')
  String get apiTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_title')
  set apiTitle(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  String get apiDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_description')
  set apiDescription(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rarity')
  int get apiRarity => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_rarity')
  set apiRarity(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  int get apiPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_price')
  set apiPrice(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_saleflg')
  int get apiSaleflg => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_saleflg')
  set apiSaleflg(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_season')
  int get apiSeason => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_season')
  set apiSeason(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  int get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  set apiVersion(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_outside_id')
  int get apiOutsideId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_outside_id')
  set apiOutsideId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_active_flag')
  int get apiActiveFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_active_flag')
  set apiActiveFlag(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstFurnitureEntityCopyWith<
          GetDataApiDataApiMstFurnitureEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstFurnitureEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstFurnitureEntityCopyWith(
          GetDataApiDataApiMstFurnitureEntity value,
          $Res Function(GetDataApiDataApiMstFurnitureEntity) then) =
      _$GetDataApiDataApiMstFurnitureEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstFurnitureEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_title') String apiTitle,
      @JsonKey(name: 'api_description') String apiDescription,
      @JsonKey(name: 'api_rarity') int apiRarity,
      @JsonKey(name: 'api_price') int apiPrice,
      @JsonKey(name: 'api_saleflg') int apiSaleflg,
      @JsonKey(name: 'api_season') int apiSeason,
      @JsonKey(name: 'api_version') int apiVersion,
      @JsonKey(name: 'api_outside_id') int apiOutsideId,
      @JsonKey(name: 'api_active_flag') int apiActiveFlag});
}

/// @nodoc
class _$GetDataApiDataApiMstFurnitureEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstFurnitureEntity>
    implements $GetDataApiDataApiMstFurnitureEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstFurnitureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiNo = null,
    Object? apiTitle = null,
    Object? apiDescription = null,
    Object? apiRarity = null,
    Object? apiPrice = null,
    Object? apiSaleflg = null,
    Object? apiSeason = null,
    Object? apiVersion = null,
    Object? apiOutsideId = null,
    Object? apiActiveFlag = null,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiTitle: null == apiTitle
          ? _value.apiTitle
          : apiTitle // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiRarity: null == apiRarity
          ? _value.apiRarity
          : apiRarity // ignore: cast_nullable_to_non_nullable
              as int,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
      apiSaleflg: null == apiSaleflg
          ? _value.apiSaleflg
          : apiSaleflg // ignore: cast_nullable_to_non_nullable
              as int,
      apiSeason: null == apiSeason
          ? _value.apiSeason
          : apiSeason // ignore: cast_nullable_to_non_nullable
              as int,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      apiOutsideId: null == apiOutsideId
          ? _value.apiOutsideId
          : apiOutsideId // ignore: cast_nullable_to_non_nullable
              as int,
      apiActiveFlag: null == apiActiveFlag
          ? _value.apiActiveFlag
          : apiActiveFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstFurnitureEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstFurnitureEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstFurnitureEntityCopyWith(
          _$_GetDataApiDataApiMstFurnitureEntity value,
          $Res Function(_$_GetDataApiDataApiMstFurnitureEntity) then) =
      __$$_GetDataApiDataApiMstFurnitureEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_type') int apiType,
      @JsonKey(name: 'api_no') int apiNo,
      @JsonKey(name: 'api_title') String apiTitle,
      @JsonKey(name: 'api_description') String apiDescription,
      @JsonKey(name: 'api_rarity') int apiRarity,
      @JsonKey(name: 'api_price') int apiPrice,
      @JsonKey(name: 'api_saleflg') int apiSaleflg,
      @JsonKey(name: 'api_season') int apiSeason,
      @JsonKey(name: 'api_version') int apiVersion,
      @JsonKey(name: 'api_outside_id') int apiOutsideId,
      @JsonKey(name: 'api_active_flag') int apiActiveFlag});
}

/// @nodoc
class __$$_GetDataApiDataApiMstFurnitureEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstFurnitureEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstFurnitureEntity>
    implements _$$_GetDataApiDataApiMstFurnitureEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstFurnitureEntityCopyWithImpl(
      _$_GetDataApiDataApiMstFurnitureEntity _value,
      $Res Function(_$_GetDataApiDataApiMstFurnitureEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiType = null,
    Object? apiNo = null,
    Object? apiTitle = null,
    Object? apiDescription = null,
    Object? apiRarity = null,
    Object? apiPrice = null,
    Object? apiSaleflg = null,
    Object? apiSeason = null,
    Object? apiVersion = null,
    Object? apiOutsideId = null,
    Object? apiActiveFlag = null,
  }) {
    return _then(_$_GetDataApiDataApiMstFurnitureEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiType: null == apiType
          ? _value.apiType
          : apiType // ignore: cast_nullable_to_non_nullable
              as int,
      apiNo: null == apiNo
          ? _value.apiNo
          : apiNo // ignore: cast_nullable_to_non_nullable
              as int,
      apiTitle: null == apiTitle
          ? _value.apiTitle
          : apiTitle // ignore: cast_nullable_to_non_nullable
              as String,
      apiDescription: null == apiDescription
          ? _value.apiDescription
          : apiDescription // ignore: cast_nullable_to_non_nullable
              as String,
      apiRarity: null == apiRarity
          ? _value.apiRarity
          : apiRarity // ignore: cast_nullable_to_non_nullable
              as int,
      apiPrice: null == apiPrice
          ? _value.apiPrice
          : apiPrice // ignore: cast_nullable_to_non_nullable
              as int,
      apiSaleflg: null == apiSaleflg
          ? _value.apiSaleflg
          : apiSaleflg // ignore: cast_nullable_to_non_nullable
              as int,
      apiSeason: null == apiSeason
          ? _value.apiSeason
          : apiSeason // ignore: cast_nullable_to_non_nullable
              as int,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      apiOutsideId: null == apiOutsideId
          ? _value.apiOutsideId
          : apiOutsideId // ignore: cast_nullable_to_non_nullable
              as int,
      apiActiveFlag: null == apiActiveFlag
          ? _value.apiActiveFlag
          : apiActiveFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstFurnitureEntity
    implements _GetDataApiDataApiMstFurnitureEntity {
  _$_GetDataApiDataApiMstFurnitureEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_type') required this.apiType,
      @JsonKey(name: 'api_no') required this.apiNo,
      @JsonKey(name: 'api_title') required this.apiTitle,
      @JsonKey(name: 'api_description') required this.apiDescription,
      @JsonKey(name: 'api_rarity') required this.apiRarity,
      @JsonKey(name: 'api_price') required this.apiPrice,
      @JsonKey(name: 'api_saleflg') required this.apiSaleflg,
      @JsonKey(name: 'api_season') required this.apiSeason,
      @JsonKey(name: 'api_version') required this.apiVersion,
      @JsonKey(name: 'api_outside_id') required this.apiOutsideId,
      @JsonKey(name: 'api_active_flag') required this.apiActiveFlag});

  factory _$_GetDataApiDataApiMstFurnitureEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstFurnitureEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_type')
  int apiType;
  @override
  @JsonKey(name: 'api_no')
  int apiNo;
  @override
  @JsonKey(name: 'api_title')
  String apiTitle;
  @override
  @JsonKey(name: 'api_description')
  String apiDescription;
  @override
  @JsonKey(name: 'api_rarity')
  int apiRarity;
  @override
  @JsonKey(name: 'api_price')
  int apiPrice;
  @override
  @JsonKey(name: 'api_saleflg')
  int apiSaleflg;
  @override
  @JsonKey(name: 'api_season')
  int apiSeason;
  @override
  @JsonKey(name: 'api_version')
  int apiVersion;
  @override
  @JsonKey(name: 'api_outside_id')
  int apiOutsideId;
  @override
  @JsonKey(name: 'api_active_flag')
  int apiActiveFlag;

  @override
  String toString() {
    return 'GetDataApiDataApiMstFurnitureEntity(apiId: $apiId, apiType: $apiType, apiNo: $apiNo, apiTitle: $apiTitle, apiDescription: $apiDescription, apiRarity: $apiRarity, apiPrice: $apiPrice, apiSaleflg: $apiSaleflg, apiSeason: $apiSeason, apiVersion: $apiVersion, apiOutsideId: $apiOutsideId, apiActiveFlag: $apiActiveFlag)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstFurnitureEntityCopyWith<
          _$_GetDataApiDataApiMstFurnitureEntity>
      get copyWith => __$$_GetDataApiDataApiMstFurnitureEntityCopyWithImpl<
          _$_GetDataApiDataApiMstFurnitureEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstFurnitureEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstFurnitureEntity
    implements GetDataApiDataApiMstFurnitureEntity {
  factory _GetDataApiDataApiMstFurnitureEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_type') required int apiType,
          @JsonKey(name: 'api_no') required int apiNo,
          @JsonKey(name: 'api_title') required String apiTitle,
          @JsonKey(name: 'api_description') required String apiDescription,
          @JsonKey(name: 'api_rarity') required int apiRarity,
          @JsonKey(name: 'api_price') required int apiPrice,
          @JsonKey(name: 'api_saleflg') required int apiSaleflg,
          @JsonKey(name: 'api_season') required int apiSeason,
          @JsonKey(name: 'api_version') required int apiVersion,
          @JsonKey(name: 'api_outside_id') required int apiOutsideId,
          @JsonKey(name: 'api_active_flag') required int apiActiveFlag}) =
      _$_GetDataApiDataApiMstFurnitureEntity;

  factory _GetDataApiDataApiMstFurnitureEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstFurnitureEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_type')
  int get apiType;
  @JsonKey(name: 'api_type')
  set apiType(int value);
  @override
  @JsonKey(name: 'api_no')
  int get apiNo;
  @JsonKey(name: 'api_no')
  set apiNo(int value);
  @override
  @JsonKey(name: 'api_title')
  String get apiTitle;
  @JsonKey(name: 'api_title')
  set apiTitle(String value);
  @override
  @JsonKey(name: 'api_description')
  String get apiDescription;
  @JsonKey(name: 'api_description')
  set apiDescription(String value);
  @override
  @JsonKey(name: 'api_rarity')
  int get apiRarity;
  @JsonKey(name: 'api_rarity')
  set apiRarity(int value);
  @override
  @JsonKey(name: 'api_price')
  int get apiPrice;
  @JsonKey(name: 'api_price')
  set apiPrice(int value);
  @override
  @JsonKey(name: 'api_saleflg')
  int get apiSaleflg;
  @JsonKey(name: 'api_saleflg')
  set apiSaleflg(int value);
  @override
  @JsonKey(name: 'api_season')
  int get apiSeason;
  @JsonKey(name: 'api_season')
  set apiSeason(int value);
  @override
  @JsonKey(name: 'api_version')
  int get apiVersion;
  @JsonKey(name: 'api_version')
  set apiVersion(int value);
  @override
  @JsonKey(name: 'api_outside_id')
  int get apiOutsideId;
  @JsonKey(name: 'api_outside_id')
  set apiOutsideId(int value);
  @override
  @JsonKey(name: 'api_active_flag')
  int get apiActiveFlag;
  @JsonKey(name: 'api_active_flag')
  set apiActiveFlag(int value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstFurnitureEntityCopyWith<
          _$_GetDataApiDataApiMstFurnitureEntity>
      get copyWith => throw _privateConstructorUsedError;
}

GetDataApiDataApiMstShipgraphEntity
    _$GetDataApiDataApiMstShipgraphEntityFromJson(Map<String, dynamic> json) {
  return _GetDataApiDataApiMstShipgraphEntity.fromJson(json);
}

/// @nodoc
mixin _$GetDataApiDataApiMstShipgraphEntity {
  @JsonKey(name: 'api_id')
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  set apiId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_filename')
  String get apiFilename => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_filename')
  set apiFilename(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  List<String> get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version')
  set apiVersion(List<String> value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_battle_n')
  List<int>? get apiBattleN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_battle_n')
  set apiBattleN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_battle_d')
  List<int>? get apiBattleD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_battle_d')
  set apiBattleD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  int? get apiSortno => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_n')
  List<int>? get apiBokoN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_n')
  set apiBokoN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_d')
  List<int>? get apiBokoD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_boko_d')
  set apiBokoD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaisyu_n')
  List<int>? get apiKaisyuN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaisyu_n')
  set apiKaisyuN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaisyu_d')
  List<int>? get apiKaisyuD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaisyu_d')
  set apiKaisyuD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaizo_n')
  List<int>? get apiKaizoN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaizo_n')
  set apiKaizoN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaizo_d')
  List<int>? get apiKaizoD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_kaizo_d')
  set apiKaizoD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_n')
  List<int>? get apiMapN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_n')
  set apiMapN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_d')
  List<int>? get apiMapD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_map_d')
  set apiMapD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyuf_n')
  List<int>? get apiEnsyufN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyuf_n')
  set apiEnsyufN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyuf_d')
  List<int>? get apiEnsyufD => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyuf_d')
  set apiEnsyufD(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyue_n')
  List<int>? get apiEnsyueN => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_ensyue_n')
  set apiEnsyueN(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_weda')
  List<int>? get apiWeda => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_weda')
  set apiWeda(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_wedb')
  List<int>? get apiWedb => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_wedb')
  set apiWedb(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pa')
  List<int>? get apiPa => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pa')
  set apiPa(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pab')
  List<int>? get apiPab => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_pab')
  set apiPab(List<int>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataApiDataApiMstShipgraphEntityCopyWith<
          GetDataApiDataApiMstShipgraphEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataApiDataApiMstShipgraphEntityCopyWith<$Res> {
  factory $GetDataApiDataApiMstShipgraphEntityCopyWith(
          GetDataApiDataApiMstShipgraphEntity value,
          $Res Function(GetDataApiDataApiMstShipgraphEntity) then) =
      _$GetDataApiDataApiMstShipgraphEntityCopyWithImpl<$Res,
          GetDataApiDataApiMstShipgraphEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_filename') String apiFilename,
      @JsonKey(name: 'api_version') List<String> apiVersion,
      @JsonKey(name: 'api_battle_n') List<int>? apiBattleN,
      @JsonKey(name: 'api_battle_d') List<int>? apiBattleD,
      @JsonKey(name: 'api_sortno') int? apiSortno,
      @JsonKey(name: 'api_boko_n') List<int>? apiBokoN,
      @JsonKey(name: 'api_boko_d') List<int>? apiBokoD,
      @JsonKey(name: 'api_kaisyu_n') List<int>? apiKaisyuN,
      @JsonKey(name: 'api_kaisyu_d') List<int>? apiKaisyuD,
      @JsonKey(name: 'api_kaizo_n') List<int>? apiKaizoN,
      @JsonKey(name: 'api_kaizo_d') List<int>? apiKaizoD,
      @JsonKey(name: 'api_map_n') List<int>? apiMapN,
      @JsonKey(name: 'api_map_d') List<int>? apiMapD,
      @JsonKey(name: 'api_ensyuf_n') List<int>? apiEnsyufN,
      @JsonKey(name: 'api_ensyuf_d') List<int>? apiEnsyufD,
      @JsonKey(name: 'api_ensyue_n') List<int>? apiEnsyueN,
      @JsonKey(name: 'api_weda') List<int>? apiWeda,
      @JsonKey(name: 'api_wedb') List<int>? apiWedb,
      @JsonKey(name: 'api_pa') List<int>? apiPa,
      @JsonKey(name: 'api_pab') List<int>? apiPab});
}

/// @nodoc
class _$GetDataApiDataApiMstShipgraphEntityCopyWithImpl<$Res,
        $Val extends GetDataApiDataApiMstShipgraphEntity>
    implements $GetDataApiDataApiMstShipgraphEntityCopyWith<$Res> {
  _$GetDataApiDataApiMstShipgraphEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiFilename = null,
    Object? apiVersion = null,
    Object? apiBattleN = freezed,
    Object? apiBattleD = freezed,
    Object? apiSortno = freezed,
    Object? apiBokoN = freezed,
    Object? apiBokoD = freezed,
    Object? apiKaisyuN = freezed,
    Object? apiKaisyuD = freezed,
    Object? apiKaizoN = freezed,
    Object? apiKaizoD = freezed,
    Object? apiMapN = freezed,
    Object? apiMapD = freezed,
    Object? apiEnsyufN = freezed,
    Object? apiEnsyufD = freezed,
    Object? apiEnsyueN = freezed,
    Object? apiWeda = freezed,
    Object? apiWedb = freezed,
    Object? apiPa = freezed,
    Object? apiPab = freezed,
  }) {
    return _then(_value.copyWith(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFilename: null == apiFilename
          ? _value.apiFilename
          : apiFilename // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiBattleN: freezed == apiBattleN
          ? _value.apiBattleN
          : apiBattleN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBattleD: freezed == apiBattleD
          ? _value.apiBattleD
          : apiBattleD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSortno: freezed == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBokoN: freezed == apiBokoN
          ? _value.apiBokoN
          : apiBokoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBokoD: freezed == apiBokoD
          ? _value.apiBokoD
          : apiBokoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaisyuN: freezed == apiKaisyuN
          ? _value.apiKaisyuN
          : apiKaisyuN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaisyuD: freezed == apiKaisyuD
          ? _value.apiKaisyuD
          : apiKaisyuD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaizoN: freezed == apiKaizoN
          ? _value.apiKaizoN
          : apiKaizoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaizoD: freezed == apiKaizoD
          ? _value.apiKaizoD
          : apiKaizoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiMapN: freezed == apiMapN
          ? _value.apiMapN
          : apiMapN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiMapD: freezed == apiMapD
          ? _value.apiMapD
          : apiMapD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyufN: freezed == apiEnsyufN
          ? _value.apiEnsyufN
          : apiEnsyufN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyufD: freezed == apiEnsyufD
          ? _value.apiEnsyufD
          : apiEnsyufD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyueN: freezed == apiEnsyueN
          ? _value.apiEnsyueN
          : apiEnsyueN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiWeda: freezed == apiWeda
          ? _value.apiWeda
          : apiWeda // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiWedb: freezed == apiWedb
          ? _value.apiWedb
          : apiWedb // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPa: freezed == apiPa
          ? _value.apiPa
          : apiPa // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPab: freezed == apiPab
          ? _value.apiPab
          : apiPab // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataApiDataApiMstShipgraphEntityCopyWith<$Res>
    implements $GetDataApiDataApiMstShipgraphEntityCopyWith<$Res> {
  factory _$$_GetDataApiDataApiMstShipgraphEntityCopyWith(
          _$_GetDataApiDataApiMstShipgraphEntity value,
          $Res Function(_$_GetDataApiDataApiMstShipgraphEntity) then) =
      __$$_GetDataApiDataApiMstShipgraphEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id') int apiId,
      @JsonKey(name: 'api_filename') String apiFilename,
      @JsonKey(name: 'api_version') List<String> apiVersion,
      @JsonKey(name: 'api_battle_n') List<int>? apiBattleN,
      @JsonKey(name: 'api_battle_d') List<int>? apiBattleD,
      @JsonKey(name: 'api_sortno') int? apiSortno,
      @JsonKey(name: 'api_boko_n') List<int>? apiBokoN,
      @JsonKey(name: 'api_boko_d') List<int>? apiBokoD,
      @JsonKey(name: 'api_kaisyu_n') List<int>? apiKaisyuN,
      @JsonKey(name: 'api_kaisyu_d') List<int>? apiKaisyuD,
      @JsonKey(name: 'api_kaizo_n') List<int>? apiKaizoN,
      @JsonKey(name: 'api_kaizo_d') List<int>? apiKaizoD,
      @JsonKey(name: 'api_map_n') List<int>? apiMapN,
      @JsonKey(name: 'api_map_d') List<int>? apiMapD,
      @JsonKey(name: 'api_ensyuf_n') List<int>? apiEnsyufN,
      @JsonKey(name: 'api_ensyuf_d') List<int>? apiEnsyufD,
      @JsonKey(name: 'api_ensyue_n') List<int>? apiEnsyueN,
      @JsonKey(name: 'api_weda') List<int>? apiWeda,
      @JsonKey(name: 'api_wedb') List<int>? apiWedb,
      @JsonKey(name: 'api_pa') List<int>? apiPa,
      @JsonKey(name: 'api_pab') List<int>? apiPab});
}

/// @nodoc
class __$$_GetDataApiDataApiMstShipgraphEntityCopyWithImpl<$Res>
    extends _$GetDataApiDataApiMstShipgraphEntityCopyWithImpl<$Res,
        _$_GetDataApiDataApiMstShipgraphEntity>
    implements _$$_GetDataApiDataApiMstShipgraphEntityCopyWith<$Res> {
  __$$_GetDataApiDataApiMstShipgraphEntityCopyWithImpl(
      _$_GetDataApiDataApiMstShipgraphEntity _value,
      $Res Function(_$_GetDataApiDataApiMstShipgraphEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiId = null,
    Object? apiFilename = null,
    Object? apiVersion = null,
    Object? apiBattleN = freezed,
    Object? apiBattleD = freezed,
    Object? apiSortno = freezed,
    Object? apiBokoN = freezed,
    Object? apiBokoD = freezed,
    Object? apiKaisyuN = freezed,
    Object? apiKaisyuD = freezed,
    Object? apiKaizoN = freezed,
    Object? apiKaizoD = freezed,
    Object? apiMapN = freezed,
    Object? apiMapD = freezed,
    Object? apiEnsyufN = freezed,
    Object? apiEnsyufD = freezed,
    Object? apiEnsyueN = freezed,
    Object? apiWeda = freezed,
    Object? apiWedb = freezed,
    Object? apiPa = freezed,
    Object? apiPab = freezed,
  }) {
    return _then(_$_GetDataApiDataApiMstShipgraphEntity(
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiFilename: null == apiFilename
          ? _value.apiFilename
          : apiFilename // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiBattleN: freezed == apiBattleN
          ? _value.apiBattleN
          : apiBattleN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBattleD: freezed == apiBattleD
          ? _value.apiBattleD
          : apiBattleD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiSortno: freezed == apiSortno
          ? _value.apiSortno
          : apiSortno // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBokoN: freezed == apiBokoN
          ? _value.apiBokoN
          : apiBokoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiBokoD: freezed == apiBokoD
          ? _value.apiBokoD
          : apiBokoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaisyuN: freezed == apiKaisyuN
          ? _value.apiKaisyuN
          : apiKaisyuN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaisyuD: freezed == apiKaisyuD
          ? _value.apiKaisyuD
          : apiKaisyuD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaizoN: freezed == apiKaizoN
          ? _value.apiKaizoN
          : apiKaizoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiKaizoD: freezed == apiKaizoD
          ? _value.apiKaizoD
          : apiKaizoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiMapN: freezed == apiMapN
          ? _value.apiMapN
          : apiMapN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiMapD: freezed == apiMapD
          ? _value.apiMapD
          : apiMapD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyufN: freezed == apiEnsyufN
          ? _value.apiEnsyufN
          : apiEnsyufN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyufD: freezed == apiEnsyufD
          ? _value.apiEnsyufD
          : apiEnsyufD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiEnsyueN: freezed == apiEnsyueN
          ? _value.apiEnsyueN
          : apiEnsyueN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiWeda: freezed == apiWeda
          ? _value.apiWeda
          : apiWeda // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiWedb: freezed == apiWedb
          ? _value.apiWedb
          : apiWedb // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPa: freezed == apiPa
          ? _value.apiPa
          : apiPa // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apiPab: freezed == apiPab
          ? _value.apiPab
          : apiPab // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataApiDataApiMstShipgraphEntity
    implements _GetDataApiDataApiMstShipgraphEntity {
  _$_GetDataApiDataApiMstShipgraphEntity(
      {@JsonKey(name: 'api_id') required this.apiId,
      @JsonKey(name: 'api_filename') required this.apiFilename,
      @JsonKey(name: 'api_version') required this.apiVersion,
      @JsonKey(name: 'api_battle_n') this.apiBattleN,
      @JsonKey(name: 'api_battle_d') this.apiBattleD,
      @JsonKey(name: 'api_sortno') this.apiSortno,
      @JsonKey(name: 'api_boko_n') this.apiBokoN,
      @JsonKey(name: 'api_boko_d') this.apiBokoD,
      @JsonKey(name: 'api_kaisyu_n') this.apiKaisyuN,
      @JsonKey(name: 'api_kaisyu_d') this.apiKaisyuD,
      @JsonKey(name: 'api_kaizo_n') this.apiKaizoN,
      @JsonKey(name: 'api_kaizo_d') this.apiKaizoD,
      @JsonKey(name: 'api_map_n') this.apiMapN,
      @JsonKey(name: 'api_map_d') this.apiMapD,
      @JsonKey(name: 'api_ensyuf_n') this.apiEnsyufN,
      @JsonKey(name: 'api_ensyuf_d') this.apiEnsyufD,
      @JsonKey(name: 'api_ensyue_n') this.apiEnsyueN,
      @JsonKey(name: 'api_weda') this.apiWeda,
      @JsonKey(name: 'api_wedb') this.apiWedb,
      @JsonKey(name: 'api_pa') this.apiPa,
      @JsonKey(name: 'api_pab') this.apiPab});

  factory _$_GetDataApiDataApiMstShipgraphEntity.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetDataApiDataApiMstShipgraphEntityFromJson(json);

  @override
  @JsonKey(name: 'api_id')
  int apiId;
  @override
  @JsonKey(name: 'api_filename')
  String apiFilename;
  @override
  @JsonKey(name: 'api_version')
  List<String> apiVersion;
  @override
  @JsonKey(name: 'api_battle_n')
  List<int>? apiBattleN;
  @override
  @JsonKey(name: 'api_battle_d')
  List<int>? apiBattleD;
  @override
  @JsonKey(name: 'api_sortno')
  int? apiSortno;
  @override
  @JsonKey(name: 'api_boko_n')
  List<int>? apiBokoN;
  @override
  @JsonKey(name: 'api_boko_d')
  List<int>? apiBokoD;
  @override
  @JsonKey(name: 'api_kaisyu_n')
  List<int>? apiKaisyuN;
  @override
  @JsonKey(name: 'api_kaisyu_d')
  List<int>? apiKaisyuD;
  @override
  @JsonKey(name: 'api_kaizo_n')
  List<int>? apiKaizoN;
  @override
  @JsonKey(name: 'api_kaizo_d')
  List<int>? apiKaizoD;
  @override
  @JsonKey(name: 'api_map_n')
  List<int>? apiMapN;
  @override
  @JsonKey(name: 'api_map_d')
  List<int>? apiMapD;
  @override
  @JsonKey(name: 'api_ensyuf_n')
  List<int>? apiEnsyufN;
  @override
  @JsonKey(name: 'api_ensyuf_d')
  List<int>? apiEnsyufD;
  @override
  @JsonKey(name: 'api_ensyue_n')
  List<int>? apiEnsyueN;
  @override
  @JsonKey(name: 'api_weda')
  List<int>? apiWeda;
  @override
  @JsonKey(name: 'api_wedb')
  List<int>? apiWedb;
  @override
  @JsonKey(name: 'api_pa')
  List<int>? apiPa;
  @override
  @JsonKey(name: 'api_pab')
  List<int>? apiPab;

  @override
  String toString() {
    return 'GetDataApiDataApiMstShipgraphEntity(apiId: $apiId, apiFilename: $apiFilename, apiVersion: $apiVersion, apiBattleN: $apiBattleN, apiBattleD: $apiBattleD, apiSortno: $apiSortno, apiBokoN: $apiBokoN, apiBokoD: $apiBokoD, apiKaisyuN: $apiKaisyuN, apiKaisyuD: $apiKaisyuD, apiKaizoN: $apiKaizoN, apiKaizoD: $apiKaizoD, apiMapN: $apiMapN, apiMapD: $apiMapD, apiEnsyufN: $apiEnsyufN, apiEnsyufD: $apiEnsyufD, apiEnsyueN: $apiEnsyueN, apiWeda: $apiWeda, apiWedb: $apiWedb, apiPa: $apiPa, apiPab: $apiPab)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataApiDataApiMstShipgraphEntityCopyWith<
          _$_GetDataApiDataApiMstShipgraphEntity>
      get copyWith => __$$_GetDataApiDataApiMstShipgraphEntityCopyWithImpl<
          _$_GetDataApiDataApiMstShipgraphEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataApiDataApiMstShipgraphEntityToJson(
      this,
    );
  }
}

abstract class _GetDataApiDataApiMstShipgraphEntity
    implements GetDataApiDataApiMstShipgraphEntity {
  factory _GetDataApiDataApiMstShipgraphEntity(
          {@JsonKey(name: 'api_id') required int apiId,
          @JsonKey(name: 'api_filename') required String apiFilename,
          @JsonKey(name: 'api_version') required List<String> apiVersion,
          @JsonKey(name: 'api_battle_n') List<int>? apiBattleN,
          @JsonKey(name: 'api_battle_d') List<int>? apiBattleD,
          @JsonKey(name: 'api_sortno') int? apiSortno,
          @JsonKey(name: 'api_boko_n') List<int>? apiBokoN,
          @JsonKey(name: 'api_boko_d') List<int>? apiBokoD,
          @JsonKey(name: 'api_kaisyu_n') List<int>? apiKaisyuN,
          @JsonKey(name: 'api_kaisyu_d') List<int>? apiKaisyuD,
          @JsonKey(name: 'api_kaizo_n') List<int>? apiKaizoN,
          @JsonKey(name: 'api_kaizo_d') List<int>? apiKaizoD,
          @JsonKey(name: 'api_map_n') List<int>? apiMapN,
          @JsonKey(name: 'api_map_d') List<int>? apiMapD,
          @JsonKey(name: 'api_ensyuf_n') List<int>? apiEnsyufN,
          @JsonKey(name: 'api_ensyuf_d') List<int>? apiEnsyufD,
          @JsonKey(name: 'api_ensyue_n') List<int>? apiEnsyueN,
          @JsonKey(name: 'api_weda') List<int>? apiWeda,
          @JsonKey(name: 'api_wedb') List<int>? apiWedb,
          @JsonKey(name: 'api_pa') List<int>? apiPa,
          @JsonKey(name: 'api_pab') List<int>? apiPab}) =
      _$_GetDataApiDataApiMstShipgraphEntity;

  factory _GetDataApiDataApiMstShipgraphEntity.fromJson(
          Map<String, dynamic> json) =
      _$_GetDataApiDataApiMstShipgraphEntity.fromJson;

  @override
  @JsonKey(name: 'api_id')
  int get apiId;
  @JsonKey(name: 'api_id')
  set apiId(int value);
  @override
  @JsonKey(name: 'api_filename')
  String get apiFilename;
  @JsonKey(name: 'api_filename')
  set apiFilename(String value);
  @override
  @JsonKey(name: 'api_version')
  List<String> get apiVersion;
  @JsonKey(name: 'api_version')
  set apiVersion(List<String> value);
  @override
  @JsonKey(name: 'api_battle_n')
  List<int>? get apiBattleN;
  @JsonKey(name: 'api_battle_n')
  set apiBattleN(List<int>? value);
  @override
  @JsonKey(name: 'api_battle_d')
  List<int>? get apiBattleD;
  @JsonKey(name: 'api_battle_d')
  set apiBattleD(List<int>? value);
  @override
  @JsonKey(name: 'api_sortno')
  int? get apiSortno;
  @JsonKey(name: 'api_sortno')
  set apiSortno(int? value);
  @override
  @JsonKey(name: 'api_boko_n')
  List<int>? get apiBokoN;
  @JsonKey(name: 'api_boko_n')
  set apiBokoN(List<int>? value);
  @override
  @JsonKey(name: 'api_boko_d')
  List<int>? get apiBokoD;
  @JsonKey(name: 'api_boko_d')
  set apiBokoD(List<int>? value);
  @override
  @JsonKey(name: 'api_kaisyu_n')
  List<int>? get apiKaisyuN;
  @JsonKey(name: 'api_kaisyu_n')
  set apiKaisyuN(List<int>? value);
  @override
  @JsonKey(name: 'api_kaisyu_d')
  List<int>? get apiKaisyuD;
  @JsonKey(name: 'api_kaisyu_d')
  set apiKaisyuD(List<int>? value);
  @override
  @JsonKey(name: 'api_kaizo_n')
  List<int>? get apiKaizoN;
  @JsonKey(name: 'api_kaizo_n')
  set apiKaizoN(List<int>? value);
  @override
  @JsonKey(name: 'api_kaizo_d')
  List<int>? get apiKaizoD;
  @JsonKey(name: 'api_kaizo_d')
  set apiKaizoD(List<int>? value);
  @override
  @JsonKey(name: 'api_map_n')
  List<int>? get apiMapN;
  @JsonKey(name: 'api_map_n')
  set apiMapN(List<int>? value);
  @override
  @JsonKey(name: 'api_map_d')
  List<int>? get apiMapD;
  @JsonKey(name: 'api_map_d')
  set apiMapD(List<int>? value);
  @override
  @JsonKey(name: 'api_ensyuf_n')
  List<int>? get apiEnsyufN;
  @JsonKey(name: 'api_ensyuf_n')
  set apiEnsyufN(List<int>? value);
  @override
  @JsonKey(name: 'api_ensyuf_d')
  List<int>? get apiEnsyufD;
  @JsonKey(name: 'api_ensyuf_d')
  set apiEnsyufD(List<int>? value);
  @override
  @JsonKey(name: 'api_ensyue_n')
  List<int>? get apiEnsyueN;
  @JsonKey(name: 'api_ensyue_n')
  set apiEnsyueN(List<int>? value);
  @override
  @JsonKey(name: 'api_weda')
  List<int>? get apiWeda;
  @JsonKey(name: 'api_weda')
  set apiWeda(List<int>? value);
  @override
  @JsonKey(name: 'api_wedb')
  List<int>? get apiWedb;
  @JsonKey(name: 'api_wedb')
  set apiWedb(List<int>? value);
  @override
  @JsonKey(name: 'api_pa')
  List<int>? get apiPa;
  @JsonKey(name: 'api_pa')
  set apiPa(List<int>? value);
  @override
  @JsonKey(name: 'api_pab')
  List<int>? get apiPab;
  @JsonKey(name: 'api_pab')
  set apiPab(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetDataApiDataApiMstShipgraphEntityCopyWith<
          _$_GetDataApiDataApiMstShipgraphEntity>
      get copyWith => throw _privateConstructorUsedError;
}
