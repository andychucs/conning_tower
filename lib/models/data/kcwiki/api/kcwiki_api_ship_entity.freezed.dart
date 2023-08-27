// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kcwiki_api_ship_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KcwikiApiShipEntity _$KcwikiApiShipEntityFromJson(Map<String, dynamic> json) {
  return _KcwikiApiShipEntity.fromJson(json);
}

/// @nodoc
mixin _$KcwikiApiShipEntity {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_no')
  int? get sortNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_no')
  set sortNo(int? value) => throw _privateConstructorUsedError;
  int get stype => throw _privateConstructorUsedError;
  set stype(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'after_ship_id')
  int? get afterShipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'after_ship_id')
  set afterShipId(int? value) => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  set filename(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_id')
  String? get wikiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_id')
  set wikiId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'chinese_name')
  String? get chineseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'chinese_name')
  set chineseName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'stype_name')
  String? get stypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'stype_name')
  set stypeName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'stype_name_chinese')
  String? get stypeNameChinese => throw _privateConstructorUsedError;
  @JsonKey(name: 'stype_name_chinese')
  set stypeNameChinese(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_drop')
  bool? get canDrop => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_drop')
  set canDrop(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KcwikiApiShipEntityCopyWith<KcwikiApiShipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KcwikiApiShipEntityCopyWith<$Res> {
  factory $KcwikiApiShipEntityCopyWith(
          KcwikiApiShipEntity value, $Res Function(KcwikiApiShipEntity) then) =
      _$KcwikiApiShipEntityCopyWithImpl<$Res, KcwikiApiShipEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'sort_no') int? sortNo,
      int stype,
      @JsonKey(name: 'after_ship_id') int? afterShipId,
      String? filename,
      @JsonKey(name: 'wiki_id') String? wikiId,
      @JsonKey(name: 'chinese_name') String? chineseName,
      @JsonKey(name: 'stype_name') String? stypeName,
      @JsonKey(name: 'stype_name_chinese') String? stypeNameChinese,
      @JsonKey(name: 'can_drop') bool? canDrop});
}

/// @nodoc
class _$KcwikiApiShipEntityCopyWithImpl<$Res, $Val extends KcwikiApiShipEntity>
    implements $KcwikiApiShipEntityCopyWith<$Res> {
  _$KcwikiApiShipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortNo = freezed,
    Object? stype = null,
    Object? afterShipId = freezed,
    Object? filename = freezed,
    Object? wikiId = freezed,
    Object? chineseName = freezed,
    Object? stypeName = freezed,
    Object? stypeNameChinese = freezed,
    Object? canDrop = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: freezed == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int?,
      stype: null == stype
          ? _value.stype
          : stype // ignore: cast_nullable_to_non_nullable
              as int,
      afterShipId: freezed == afterShipId
          ? _value.afterShipId
          : afterShipId // ignore: cast_nullable_to_non_nullable
              as int?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiId: freezed == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String?,
      chineseName: freezed == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String?,
      stypeName: freezed == stypeName
          ? _value.stypeName
          : stypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      stypeNameChinese: freezed == stypeNameChinese
          ? _value.stypeNameChinese
          : stypeNameChinese // ignore: cast_nullable_to_non_nullable
              as String?,
      canDrop: freezed == canDrop
          ? _value.canDrop
          : canDrop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KcwikiApiShipEntityCopyWith<$Res>
    implements $KcwikiApiShipEntityCopyWith<$Res> {
  factory _$$_KcwikiApiShipEntityCopyWith(_$_KcwikiApiShipEntity value,
          $Res Function(_$_KcwikiApiShipEntity) then) =
      __$$_KcwikiApiShipEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'sort_no') int? sortNo,
      int stype,
      @JsonKey(name: 'after_ship_id') int? afterShipId,
      String? filename,
      @JsonKey(name: 'wiki_id') String? wikiId,
      @JsonKey(name: 'chinese_name') String? chineseName,
      @JsonKey(name: 'stype_name') String? stypeName,
      @JsonKey(name: 'stype_name_chinese') String? stypeNameChinese,
      @JsonKey(name: 'can_drop') bool? canDrop});
}

/// @nodoc
class __$$_KcwikiApiShipEntityCopyWithImpl<$Res>
    extends _$KcwikiApiShipEntityCopyWithImpl<$Res, _$_KcwikiApiShipEntity>
    implements _$$_KcwikiApiShipEntityCopyWith<$Res> {
  __$$_KcwikiApiShipEntityCopyWithImpl(_$_KcwikiApiShipEntity _value,
      $Res Function(_$_KcwikiApiShipEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortNo = freezed,
    Object? stype = null,
    Object? afterShipId = freezed,
    Object? filename = freezed,
    Object? wikiId = freezed,
    Object? chineseName = freezed,
    Object? stypeName = freezed,
    Object? stypeNameChinese = freezed,
    Object? canDrop = freezed,
  }) {
    return _then(_$_KcwikiApiShipEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: freezed == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int?,
      stype: null == stype
          ? _value.stype
          : stype // ignore: cast_nullable_to_non_nullable
              as int,
      afterShipId: freezed == afterShipId
          ? _value.afterShipId
          : afterShipId // ignore: cast_nullable_to_non_nullable
              as int?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiId: freezed == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String?,
      chineseName: freezed == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String?,
      stypeName: freezed == stypeName
          ? _value.stypeName
          : stypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      stypeNameChinese: freezed == stypeNameChinese
          ? _value.stypeNameChinese
          : stypeNameChinese // ignore: cast_nullable_to_non_nullable
              as String?,
      canDrop: freezed == canDrop
          ? _value.canDrop
          : canDrop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KcwikiApiShipEntity implements _KcwikiApiShipEntity {
  _$_KcwikiApiShipEntity(
      {required this.id,
      required this.name,
      @JsonKey(name: 'sort_no') this.sortNo,
      required this.stype,
      @JsonKey(name: 'after_ship_id') this.afterShipId,
      this.filename,
      @JsonKey(name: 'wiki_id') this.wikiId,
      @JsonKey(name: 'chinese_name') this.chineseName,
      @JsonKey(name: 'stype_name') this.stypeName,
      @JsonKey(name: 'stype_name_chinese') this.stypeNameChinese,
      @JsonKey(name: 'can_drop') this.canDrop});

  factory _$_KcwikiApiShipEntity.fromJson(Map<String, dynamic> json) =>
      _$$_KcwikiApiShipEntityFromJson(json);

  @override
  int id;
  @override
  String name;
  @override
  @JsonKey(name: 'sort_no')
  int? sortNo;
  @override
  int stype;
  @override
  @JsonKey(name: 'after_ship_id')
  int? afterShipId;
  @override
  String? filename;
  @override
  @JsonKey(name: 'wiki_id')
  String? wikiId;
  @override
  @JsonKey(name: 'chinese_name')
  String? chineseName;
  @override
  @JsonKey(name: 'stype_name')
  String? stypeName;
  @override
  @JsonKey(name: 'stype_name_chinese')
  String? stypeNameChinese;
  @override
  @JsonKey(name: 'can_drop')
  bool? canDrop;

  @override
  String toString() {
    return 'KcwikiApiShipEntity(id: $id, name: $name, sortNo: $sortNo, stype: $stype, afterShipId: $afterShipId, filename: $filename, wikiId: $wikiId, chineseName: $chineseName, stypeName: $stypeName, stypeNameChinese: $stypeNameChinese, canDrop: $canDrop)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KcwikiApiShipEntityCopyWith<_$_KcwikiApiShipEntity> get copyWith =>
      __$$_KcwikiApiShipEntityCopyWithImpl<_$_KcwikiApiShipEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KcwikiApiShipEntityToJson(
      this,
    );
  }
}

abstract class _KcwikiApiShipEntity implements KcwikiApiShipEntity {
  factory _KcwikiApiShipEntity(
      {required int id,
      required String name,
      @JsonKey(name: 'sort_no') int? sortNo,
      required int stype,
      @JsonKey(name: 'after_ship_id') int? afterShipId,
      String? filename,
      @JsonKey(name: 'wiki_id') String? wikiId,
      @JsonKey(name: 'chinese_name') String? chineseName,
      @JsonKey(name: 'stype_name') String? stypeName,
      @JsonKey(name: 'stype_name_chinese') String? stypeNameChinese,
      @JsonKey(name: 'can_drop') bool? canDrop}) = _$_KcwikiApiShipEntity;

  factory _KcwikiApiShipEntity.fromJson(Map<String, dynamic> json) =
      _$_KcwikiApiShipEntity.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(name: 'sort_no')
  int? get sortNo;
  @JsonKey(name: 'sort_no')
  set sortNo(int? value);
  @override
  int get stype;
  set stype(int value);
  @override
  @JsonKey(name: 'after_ship_id')
  int? get afterShipId;
  @JsonKey(name: 'after_ship_id')
  set afterShipId(int? value);
  @override
  String? get filename;
  set filename(String? value);
  @override
  @JsonKey(name: 'wiki_id')
  String? get wikiId;
  @JsonKey(name: 'wiki_id')
  set wikiId(String? value);
  @override
  @JsonKey(name: 'chinese_name')
  String? get chineseName;
  @JsonKey(name: 'chinese_name')
  set chineseName(String? value);
  @override
  @JsonKey(name: 'stype_name')
  String? get stypeName;
  @JsonKey(name: 'stype_name')
  set stypeName(String? value);
  @override
  @JsonKey(name: 'stype_name_chinese')
  String? get stypeNameChinese;
  @JsonKey(name: 'stype_name_chinese')
  set stypeNameChinese(String? value);
  @override
  @JsonKey(name: 'can_drop')
  bool? get canDrop;
  @JsonKey(name: 'can_drop')
  set canDrop(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_KcwikiApiShipEntityCopyWith<_$_KcwikiApiShipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
