// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'useitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UseItem _$UseItemFromJson(Map<String, dynamic> json) {
  return _UseItem.fromJson(json);
}

/// @nodoc
mixin _$UseItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'usetype')
  int get useType => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get chineseName => throw _privateConstructorUsedError;
  String get chineseDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UseItemCopyWith<UseItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseItemCopyWith<$Res> {
  factory $UseItemCopyWith(UseItem value, $Res Function(UseItem) then) =
      _$UseItemCopyWithImpl<$Res, UseItem>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'usetype') int useType,
      int category,
      String name,
      List<String> description,
      int price,
      String chineseName,
      String chineseDescription});
}

/// @nodoc
class _$UseItemCopyWithImpl<$Res, $Val extends UseItem>
    implements $UseItemCopyWith<$Res> {
  _$UseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? useType = null,
    Object? category = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? chineseName = null,
    Object? chineseDescription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      useType: null == useType
          ? _value.useType
          : useType // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      chineseName: null == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String,
      chineseDescription: null == chineseDescription
          ? _value.chineseDescription
          : chineseDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UseItemCopyWith<$Res> implements $UseItemCopyWith<$Res> {
  factory _$$_UseItemCopyWith(
          _$_UseItem value, $Res Function(_$_UseItem) then) =
      __$$_UseItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'usetype') int useType,
      int category,
      String name,
      List<String> description,
      int price,
      String chineseName,
      String chineseDescription});
}

/// @nodoc
class __$$_UseItemCopyWithImpl<$Res>
    extends _$UseItemCopyWithImpl<$Res, _$_UseItem>
    implements _$$_UseItemCopyWith<$Res> {
  __$$_UseItemCopyWithImpl(_$_UseItem _value, $Res Function(_$_UseItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? useType = null,
    Object? category = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? chineseName = null,
    Object? chineseDescription = null,
  }) {
    return _then(_$_UseItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      useType: null == useType
          ? _value.useType
          : useType // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      chineseName: null == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String,
      chineseDescription: null == chineseDescription
          ? _value.chineseDescription
          : chineseDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UseItem implements _UseItem {
  _$_UseItem(
      {required this.id,
      @JsonKey(name: 'usetype') required this.useType,
      required this.category,
      required this.name,
      required final List<String> description,
      required this.price,
      required this.chineseName,
      required this.chineseDescription})
      : _description = description;

  factory _$_UseItem.fromJson(Map<String, dynamic> json) =>
      _$$_UseItemFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'usetype')
  final int useType;
  @override
  final int category;
  @override
  final String name;
  final List<String> _description;
  @override
  List<String> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  @override
  final int price;
  @override
  final String chineseName;
  @override
  final String chineseDescription;

  @override
  String toString() {
    return 'UseItem(id: $id, useType: $useType, category: $category, name: $name, description: $description, price: $price, chineseName: $chineseName, chineseDescription: $chineseDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.useType, useType) || other.useType == useType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.chineseName, chineseName) ||
                other.chineseName == chineseName) &&
            (identical(other.chineseDescription, chineseDescription) ||
                other.chineseDescription == chineseDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      useType,
      category,
      name,
      const DeepCollectionEquality().hash(_description),
      price,
      chineseName,
      chineseDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseItemCopyWith<_$_UseItem> get copyWith =>
      __$$_UseItemCopyWithImpl<_$_UseItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UseItemToJson(
      this,
    );
  }
}

abstract class _UseItem implements UseItem {
  factory _UseItem(
      {required final int id,
      @JsonKey(name: 'usetype') required final int useType,
      required final int category,
      required final String name,
      required final List<String> description,
      required final int price,
      required final String chineseName,
      required final String chineseDescription}) = _$_UseItem;

  factory _UseItem.fromJson(Map<String, dynamic> json) = _$_UseItem.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'usetype')
  int get useType;
  @override
  int get category;
  @override
  String get name;
  @override
  List<String> get description;
  @override
  int get price;
  @override
  String get chineseName;
  @override
  String get chineseDescription;
  @override
  @JsonKey(ignore: true)
  _$$_UseItemCopyWith<_$_UseItem> get copyWith =>
      throw _privateConstructorUsedError;
}
