// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapArea _$MapAreaFromJson(Map<String, dynamic> json) {
  return _MapArea.fromJson(json);
}

/// @nodoc
mixin _$MapArea {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get maps => throw _privateConstructorUsedError;
  bool get event => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapAreaCopyWith<MapArea> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAreaCopyWith<$Res> {
  factory $MapAreaCopyWith(MapArea value, $Res Function(MapArea) then) =
      _$MapAreaCopyWithImpl<$Res, MapArea>;
  @useResult
  $Res call({int id, String name, List<int> maps, bool event, int? level});
}

/// @nodoc
class _$MapAreaCopyWithImpl<$Res, $Val extends MapArea>
    implements $MapAreaCopyWith<$Res> {
  _$MapAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maps = null,
    Object? event = null,
    Object? level = freezed,
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
      maps: null == maps
          ? _value.maps
          : maps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as bool,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapAreaCopyWith<$Res> implements $MapAreaCopyWith<$Res> {
  factory _$$_MapAreaCopyWith(
          _$_MapArea value, $Res Function(_$_MapArea) then) =
      __$$_MapAreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<int> maps, bool event, int? level});
}

/// @nodoc
class __$$_MapAreaCopyWithImpl<$Res>
    extends _$MapAreaCopyWithImpl<$Res, _$_MapArea>
    implements _$$_MapAreaCopyWith<$Res> {
  __$$_MapAreaCopyWithImpl(_$_MapArea _value, $Res Function(_$_MapArea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maps = null,
    Object? event = null,
    Object? level = freezed,
  }) {
    return _then(_$_MapArea(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maps: null == maps
          ? _value._maps
          : maps // ignore: cast_nullable_to_non_nullable
              as List<int>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as bool,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapArea implements _MapArea {
  _$_MapArea(
      {required this.id,
      required this.name,
      required final List<int> maps,
      required this.event,
      this.level})
      : _maps = maps;

  factory _$_MapArea.fromJson(Map<String, dynamic> json) =>
      _$$_MapAreaFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<int> _maps;
  @override
  List<int> get maps {
    if (_maps is EqualUnmodifiableListView) return _maps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maps);
  }

  @override
  final bool event;
  @override
  final int? level;

  @override
  String toString() {
    return 'MapArea(id: $id, name: $name, maps: $maps, event: $event, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapArea &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._maps, _maps) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_maps), event, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapAreaCopyWith<_$_MapArea> get copyWith =>
      __$$_MapAreaCopyWithImpl<_$_MapArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapAreaToJson(
      this,
    );
  }
}

abstract class _MapArea implements MapArea {
  factory _MapArea(
      {required final int id,
      required final String name,
      required final List<int> maps,
      required final bool event,
      final int? level}) = _$_MapArea;

  factory _MapArea.fromJson(Map<String, dynamic> json) = _$_MapArea.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<int> get maps;
  @override
  bool get event;
  @override
  int? get level;
  @override
  @JsonKey(ignore: true)
  _$$_MapAreaCopyWith<_$_MapArea> get copyWith =>
      throw _privateConstructorUsedError;
}
