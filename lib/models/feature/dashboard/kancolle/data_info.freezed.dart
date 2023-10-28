// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataInfo {
  Map<int, GetDataApiDataApiMstShipEntity>? get shipInfo =>
      throw _privateConstructorUsedError;
  set shipInfo(Map<int, GetDataApiDataApiMstShipEntity>? value) =>
      throw _privateConstructorUsedError;
  Map<int, dynamic>? get itemInfo => throw _privateConstructorUsedError;
  set itemInfo(Map<int, dynamic>? value) => throw _privateConstructorUsedError;
  Map<int, GetDataApiDataApiMstMissionEntity>? get missionInfo =>
      throw _privateConstructorUsedError;
  set missionInfo(Map<int, GetDataApiDataApiMstMissionEntity>? value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataInfoCopyWith<DataInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataInfoCopyWith<$Res> {
  factory $DataInfoCopyWith(DataInfo value, $Res Function(DataInfo) then) =
      _$DataInfoCopyWithImpl<$Res, DataInfo>;
  @useResult
  $Res call(
      {Map<int, GetDataApiDataApiMstShipEntity>? shipInfo,
      Map<int, dynamic>? itemInfo,
      Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo});
}

/// @nodoc
class _$DataInfoCopyWithImpl<$Res, $Val extends DataInfo>
    implements $DataInfoCopyWith<$Res> {
  _$DataInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipInfo = freezed,
    Object? itemInfo = freezed,
    Object? missionInfo = freezed,
  }) {
    return _then(_value.copyWith(
      shipInfo: freezed == shipInfo
          ? _value.shipInfo
          : shipInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, GetDataApiDataApiMstShipEntity>?,
      itemInfo: freezed == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, dynamic>?,
      missionInfo: freezed == missionInfo
          ? _value.missionInfo
          : missionInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, GetDataApiDataApiMstMissionEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataInfoCopyWith<$Res> implements $DataInfoCopyWith<$Res> {
  factory _$$_DataInfoCopyWith(
          _$_DataInfo value, $Res Function(_$_DataInfo) then) =
      __$$_DataInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, GetDataApiDataApiMstShipEntity>? shipInfo,
      Map<int, dynamic>? itemInfo,
      Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo});
}

/// @nodoc
class __$$_DataInfoCopyWithImpl<$Res>
    extends _$DataInfoCopyWithImpl<$Res, _$_DataInfo>
    implements _$$_DataInfoCopyWith<$Res> {
  __$$_DataInfoCopyWithImpl(
      _$_DataInfo _value, $Res Function(_$_DataInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipInfo = freezed,
    Object? itemInfo = freezed,
    Object? missionInfo = freezed,
  }) {
    return _then(_$_DataInfo(
      shipInfo: freezed == shipInfo
          ? _value.shipInfo
          : shipInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, GetDataApiDataApiMstShipEntity>?,
      itemInfo: freezed == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, dynamic>?,
      missionInfo: freezed == missionInfo
          ? _value.missionInfo
          : missionInfo // ignore: cast_nullable_to_non_nullable
              as Map<int, GetDataApiDataApiMstMissionEntity>?,
    ));
  }
}

/// @nodoc

class _$_DataInfo with DiagnosticableTreeMixin implements _DataInfo {
  _$_DataInfo({this.shipInfo, this.itemInfo, this.missionInfo});

  @override
  Map<int, GetDataApiDataApiMstShipEntity>? shipInfo;
  @override
  Map<int, dynamic>? itemInfo;
  @override
  Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataInfo(shipInfo: $shipInfo, itemInfo: $itemInfo, missionInfo: $missionInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataInfo'))
      ..add(DiagnosticsProperty('shipInfo', shipInfo))
      ..add(DiagnosticsProperty('itemInfo', itemInfo))
      ..add(DiagnosticsProperty('missionInfo', missionInfo));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataInfoCopyWith<_$_DataInfo> get copyWith =>
      __$$_DataInfoCopyWithImpl<_$_DataInfo>(this, _$identity);
}

abstract class _DataInfo implements DataInfo {
  factory _DataInfo(
      {Map<int, GetDataApiDataApiMstShipEntity>? shipInfo,
      Map<int, dynamic>? itemInfo,
      Map<int, GetDataApiDataApiMstMissionEntity>? missionInfo}) = _$_DataInfo;

  @override
  Map<int, GetDataApiDataApiMstShipEntity>? get shipInfo;
  set shipInfo(Map<int, GetDataApiDataApiMstShipEntity>? value);
  @override
  Map<int, dynamic>? get itemInfo;
  set itemInfo(Map<int, dynamic>? value);
  @override
  Map<int, GetDataApiDataApiMstMissionEntity>? get missionInfo;
  set missionInfo(Map<int, GetDataApiDataApiMstMissionEntity>? value);
  @override
  @JsonKey(ignore: true)
  _$$_DataInfoCopyWith<_$_DataInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
