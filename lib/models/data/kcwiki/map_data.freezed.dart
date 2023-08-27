// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapData _$MapDataFromJson(Map<String, dynamic> json) {
  return _MapData.fromJson(json);
}

/// @nodoc
mixin _$MapData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, Route> get routes => throw _privateConstructorUsedError;
  Map<String, Cell> get cells => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapDataCopyWith<MapData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDataCopyWith<$Res> {
  factory $MapDataCopyWith(MapData value, $Res Function(MapData) then) =
      _$MapDataCopyWithImpl<$Res, MapData>;
  @useResult
  $Res call(
      {int id,
      String name,
      Map<String, Route> routes,
      Map<String, Cell> cells,
      String image});
}

/// @nodoc
class _$MapDataCopyWithImpl<$Res, $Val extends MapData>
    implements $MapDataCopyWith<$Res> {
  _$MapDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? routes = null,
    Object? cells = null,
    Object? image = null,
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
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as Map<String, Route>,
      cells: null == cells
          ? _value.cells
          : cells // ignore: cast_nullable_to_non_nullable
              as Map<String, Cell>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapDataCopyWith<$Res> implements $MapDataCopyWith<$Res> {
  factory _$$_MapDataCopyWith(
          _$_MapData value, $Res Function(_$_MapData) then) =
      __$$_MapDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Map<String, Route> routes,
      Map<String, Cell> cells,
      String image});
}

/// @nodoc
class __$$_MapDataCopyWithImpl<$Res>
    extends _$MapDataCopyWithImpl<$Res, _$_MapData>
    implements _$$_MapDataCopyWith<$Res> {
  __$$_MapDataCopyWithImpl(_$_MapData _value, $Res Function(_$_MapData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? routes = null,
    Object? cells = null,
    Object? image = null,
  }) {
    return _then(_$_MapData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as Map<String, Route>,
      cells: null == cells
          ? _value._cells
          : cells // ignore: cast_nullable_to_non_nullable
              as Map<String, Cell>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapData implements _MapData {
  _$_MapData(
      {required this.id,
      required this.name,
      required final Map<String, Route> routes,
      required final Map<String, Cell> cells,
      required this.image})
      : _routes = routes,
        _cells = cells;

  factory _$_MapData.fromJson(Map<String, dynamic> json) =>
      _$$_MapDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final Map<String, Route> _routes;
  @override
  Map<String, Route> get routes {
    if (_routes is EqualUnmodifiableMapView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_routes);
  }

  final Map<String, Cell> _cells;
  @override
  Map<String, Cell> get cells {
    if (_cells is EqualUnmodifiableMapView) return _cells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cells);
  }

  @override
  final String image;

  @override
  String toString() {
    return 'MapData(id: $id, name: $name, routes: $routes, cells: $cells, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality().equals(other._cells, _cells) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_cells),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapDataCopyWith<_$_MapData> get copyWith =>
      __$$_MapDataCopyWithImpl<_$_MapData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapDataToJson(
      this,
    );
  }
}

abstract class _MapData implements MapData {
  factory _MapData(
      {required final int id,
      required final String name,
      required final Map<String, Route> routes,
      required final Map<String, Cell> cells,
      required final String image}) = _$_MapData;

  factory _MapData.fromJson(Map<String, dynamic> json) = _$_MapData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Map<String, Route> get routes;
  @override
  Map<String, Cell> get cells;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_MapDataCopyWith<_$_MapData> get copyWith =>
      throw _privateConstructorUsedError;
}

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  dynamic get from => throw _privateConstructorUsedError;
  dynamic get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call({dynamic from, dynamic to});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$_RouteCopyWith(_$_Route value, $Res Function(_$_Route) then) =
      __$$_RouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic from, dynamic to});
}

/// @nodoc
class __$$_RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res, _$_Route>
    implements _$$_RouteCopyWith<$Res> {
  __$$_RouteCopyWithImpl(_$_Route _value, $Res Function(_$_Route) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_Route(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route implements _Route {
  _$_Route({this.from, this.to});

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFromJson(json);

  @override
  final dynamic from;
  @override
  final dynamic to;

  @override
  String toString() {
    return 'Route(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Route &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      __$$_RouteCopyWithImpl<_$_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  factory _Route({final dynamic from, final dynamic to}) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  dynamic get from;
  @override
  dynamic get to;
  @override
  @JsonKey(ignore: true)
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      throw _privateConstructorUsedError;
}

Cell _$CellFromJson(Map<String, dynamic> json) {
  return _Cell.fromJson(json);
}

/// @nodoc
mixin _$Cell {
  String get name => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;
  bool get boss => throw _privateConstructorUsedError;
  List<int> get routes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res, Cell>;
  @useResult
  $Res call({String name, dynamic type, bool boss, List<int> routes});
}

/// @nodoc
class _$CellCopyWithImpl<$Res, $Val extends Cell>
    implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = freezed,
    Object? boss = null,
    Object? routes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      boss: null == boss
          ? _value.boss
          : boss // ignore: cast_nullable_to_non_nullable
              as bool,
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$_CellCopyWith(_$_Cell value, $Res Function(_$_Cell) then) =
      __$$_CellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic type, bool boss, List<int> routes});
}

/// @nodoc
class __$$_CellCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res, _$_Cell>
    implements _$$_CellCopyWith<$Res> {
  __$$_CellCopyWithImpl(_$_Cell _value, $Res Function(_$_Cell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = freezed,
    Object? boss = null,
    Object? routes = null,
  }) {
    return _then(_$_Cell(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      boss: null == boss
          ? _value.boss
          : boss // ignore: cast_nullable_to_non_nullable
              as bool,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cell implements _Cell {
  _$_Cell(
      {required this.name,
      this.type,
      required this.boss,
      required final List<int> routes})
      : _routes = routes;

  factory _$_Cell.fromJson(Map<String, dynamic> json) => _$$_CellFromJson(json);

  @override
  final String name;
  @override
  final dynamic type;
  @override
  final bool boss;
  final List<int> _routes;
  @override
  List<int> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'Cell(name: $name, type: $type, boss: $boss, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cell &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.boss, boss) || other.boss == boss) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(type),
      boss,
      const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellCopyWith<_$_Cell> get copyWith =>
      __$$_CellCopyWithImpl<_$_Cell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellToJson(
      this,
    );
  }
}

abstract class _Cell implements Cell {
  factory _Cell(
      {required final String name,
      final dynamic type,
      required final bool boss,
      required final List<int> routes}) = _$_Cell;

  factory _Cell.fromJson(Map<String, dynamic> json) = _$_Cell.fromJson;

  @override
  String get name;
  @override
  dynamic get type;
  @override
  bool get boss;
  @override
  List<int> get routes;
  @override
  @JsonKey(ignore: true)
  _$$_CellCopyWith<_$_Cell> get copyWith => throw _privateConstructorUsedError;
}
