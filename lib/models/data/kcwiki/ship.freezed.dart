// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return _Ship.fromJson(json);
}

/// @nodoc
mixin _$Ship {
  int get id => throw _privateConstructorUsedError;
  int? get sortNo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get yomi => throw _privateConstructorUsedError;
  int? get stype => throw _privateConstructorUsedError;
  int? get ctype => throw _privateConstructorUsedError;
  int? get cnum => throw _privateConstructorUsedError;
  int? get backs => throw _privateConstructorUsedError;
  int? get afterLv => throw _privateConstructorUsedError;
  int? get afterShipId => throw _privateConstructorUsedError;
  String? get getMes => throw _privateConstructorUsedError;
  int? get voiceF => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  List<String> get fileVersion => throw _privateConstructorUsedError;
  List<int>? get bookTableId => throw _privateConstructorUsedError;
  String? get bookSinfo => throw _privateConstructorUsedError;
  ShipStats get stats => throw _privateConstructorUsedError;
  ShipGraph get graph => throw _privateConstructorUsedError;
  String? get wikiId => throw _privateConstructorUsedError;
  String? get chineseName => throw _privateConstructorUsedError;
  bool get canDrop => throw _privateConstructorUsedError;
  bool get canConstruct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call(
      {int id,
      int? sortNo,
      String? name,
      String? yomi,
      int? stype,
      int? ctype,
      int? cnum,
      int? backs,
      int? afterLv,
      int? afterShipId,
      String? getMes,
      int? voiceF,
      String filename,
      List<String> fileVersion,
      List<int>? bookTableId,
      String? bookSinfo,
      ShipStats stats,
      ShipGraph graph,
      String? wikiId,
      String? chineseName,
      bool canDrop,
      bool canConstruct});

  $ShipStatsCopyWith<$Res> get stats;
  $ShipGraphCopyWith<$Res> get graph;
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sortNo = freezed,
    Object? name = freezed,
    Object? yomi = freezed,
    Object? stype = freezed,
    Object? ctype = freezed,
    Object? cnum = freezed,
    Object? backs = freezed,
    Object? afterLv = freezed,
    Object? afterShipId = freezed,
    Object? getMes = freezed,
    Object? voiceF = freezed,
    Object? filename = null,
    Object? fileVersion = null,
    Object? bookTableId = freezed,
    Object? bookSinfo = freezed,
    Object? stats = null,
    Object? graph = null,
    Object? wikiId = freezed,
    Object? chineseName = freezed,
    Object? canDrop = null,
    Object? canConstruct = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sortNo: freezed == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      yomi: freezed == yomi
          ? _value.yomi
          : yomi // ignore: cast_nullable_to_non_nullable
              as String?,
      stype: freezed == stype
          ? _value.stype
          : stype // ignore: cast_nullable_to_non_nullable
              as int?,
      ctype: freezed == ctype
          ? _value.ctype
          : ctype // ignore: cast_nullable_to_non_nullable
              as int?,
      cnum: freezed == cnum
          ? _value.cnum
          : cnum // ignore: cast_nullable_to_non_nullable
              as int?,
      backs: freezed == backs
          ? _value.backs
          : backs // ignore: cast_nullable_to_non_nullable
              as int?,
      afterLv: freezed == afterLv
          ? _value.afterLv
          : afterLv // ignore: cast_nullable_to_non_nullable
              as int?,
      afterShipId: freezed == afterShipId
          ? _value.afterShipId
          : afterShipId // ignore: cast_nullable_to_non_nullable
              as int?,
      getMes: freezed == getMes
          ? _value.getMes
          : getMes // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceF: freezed == voiceF
          ? _value.voiceF
          : voiceF // ignore: cast_nullable_to_non_nullable
              as int?,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      fileVersion: null == fileVersion
          ? _value.fileVersion
          : fileVersion // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookTableId: freezed == bookTableId
          ? _value.bookTableId
          : bookTableId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bookSinfo: freezed == bookSinfo
          ? _value.bookSinfo
          : bookSinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as ShipStats,
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as ShipGraph,
      wikiId: freezed == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String?,
      chineseName: freezed == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String?,
      canDrop: null == canDrop
          ? _value.canDrop
          : canDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      canConstruct: null == canConstruct
          ? _value.canConstruct
          : canConstruct // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipStatsCopyWith<$Res> get stats {
    return $ShipStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipGraphCopyWith<$Res> get graph {
    return $ShipGraphCopyWith<$Res>(_value.graph, (value) {
      return _then(_value.copyWith(graph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$_ShipCopyWith(_$_Ship value, $Res Function(_$_Ship) then) =
      __$$_ShipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? sortNo,
      String? name,
      String? yomi,
      int? stype,
      int? ctype,
      int? cnum,
      int? backs,
      int? afterLv,
      int? afterShipId,
      String? getMes,
      int? voiceF,
      String filename,
      List<String> fileVersion,
      List<int>? bookTableId,
      String? bookSinfo,
      ShipStats stats,
      ShipGraph graph,
      String? wikiId,
      String? chineseName,
      bool canDrop,
      bool canConstruct});

  @override
  $ShipStatsCopyWith<$Res> get stats;
  @override
  $ShipGraphCopyWith<$Res> get graph;
}

/// @nodoc
class __$$_ShipCopyWithImpl<$Res> extends _$ShipCopyWithImpl<$Res, _$_Ship>
    implements _$$_ShipCopyWith<$Res> {
  __$$_ShipCopyWithImpl(_$_Ship _value, $Res Function(_$_Ship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sortNo = freezed,
    Object? name = freezed,
    Object? yomi = freezed,
    Object? stype = freezed,
    Object? ctype = freezed,
    Object? cnum = freezed,
    Object? backs = freezed,
    Object? afterLv = freezed,
    Object? afterShipId = freezed,
    Object? getMes = freezed,
    Object? voiceF = freezed,
    Object? filename = null,
    Object? fileVersion = null,
    Object? bookTableId = freezed,
    Object? bookSinfo = freezed,
    Object? stats = null,
    Object? graph = null,
    Object? wikiId = freezed,
    Object? chineseName = freezed,
    Object? canDrop = null,
    Object? canConstruct = null,
  }) {
    return _then(_$_Ship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sortNo: freezed == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      yomi: freezed == yomi
          ? _value.yomi
          : yomi // ignore: cast_nullable_to_non_nullable
              as String?,
      stype: freezed == stype
          ? _value.stype
          : stype // ignore: cast_nullable_to_non_nullable
              as int?,
      ctype: freezed == ctype
          ? _value.ctype
          : ctype // ignore: cast_nullable_to_non_nullable
              as int?,
      cnum: freezed == cnum
          ? _value.cnum
          : cnum // ignore: cast_nullable_to_non_nullable
              as int?,
      backs: freezed == backs
          ? _value.backs
          : backs // ignore: cast_nullable_to_non_nullable
              as int?,
      afterLv: freezed == afterLv
          ? _value.afterLv
          : afterLv // ignore: cast_nullable_to_non_nullable
              as int?,
      afterShipId: freezed == afterShipId
          ? _value.afterShipId
          : afterShipId // ignore: cast_nullable_to_non_nullable
              as int?,
      getMes: freezed == getMes
          ? _value.getMes
          : getMes // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceF: freezed == voiceF
          ? _value.voiceF
          : voiceF // ignore: cast_nullable_to_non_nullable
              as int?,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      fileVersion: null == fileVersion
          ? _value._fileVersion
          : fileVersion // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookTableId: freezed == bookTableId
          ? _value._bookTableId
          : bookTableId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bookSinfo: freezed == bookSinfo
          ? _value.bookSinfo
          : bookSinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as ShipStats,
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as ShipGraph,
      wikiId: freezed == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String?,
      chineseName: freezed == chineseName
          ? _value.chineseName
          : chineseName // ignore: cast_nullable_to_non_nullable
              as String?,
      canDrop: null == canDrop
          ? _value.canDrop
          : canDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      canConstruct: null == canConstruct
          ? _value.canConstruct
          : canConstruct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ship implements _Ship {
  _$_Ship(
      {required this.id,
      this.sortNo,
      this.name,
      this.yomi,
      this.stype,
      this.ctype,
      this.cnum,
      this.backs,
      this.afterLv,
      this.afterShipId,
      this.getMes,
      this.voiceF,
      required this.filename,
      required final List<String> fileVersion,
      final List<int>? bookTableId,
      this.bookSinfo,
      required this.stats,
      required this.graph,
      this.wikiId,
      this.chineseName,
      required this.canDrop,
      required this.canConstruct})
      : _fileVersion = fileVersion,
        _bookTableId = bookTableId;

  factory _$_Ship.fromJson(Map<String, dynamic> json) => _$$_ShipFromJson(json);

  @override
  final int id;
  @override
  final int? sortNo;
  @override
  final String? name;
  @override
  final String? yomi;
  @override
  final int? stype;
  @override
  final int? ctype;
  @override
  final int? cnum;
  @override
  final int? backs;
  @override
  final int? afterLv;
  @override
  final int? afterShipId;
  @override
  final String? getMes;
  @override
  final int? voiceF;
  @override
  final String filename;
  final List<String> _fileVersion;
  @override
  List<String> get fileVersion {
    if (_fileVersion is EqualUnmodifiableListView) return _fileVersion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileVersion);
  }

  final List<int>? _bookTableId;
  @override
  List<int>? get bookTableId {
    final value = _bookTableId;
    if (value == null) return null;
    if (_bookTableId is EqualUnmodifiableListView) return _bookTableId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? bookSinfo;
  @override
  final ShipStats stats;
  @override
  final ShipGraph graph;
  @override
  final String? wikiId;
  @override
  final String? chineseName;
  @override
  final bool canDrop;
  @override
  final bool canConstruct;

  @override
  String toString() {
    return 'Ship(id: $id, sortNo: $sortNo, name: $name, yomi: $yomi, stype: $stype, ctype: $ctype, cnum: $cnum, backs: $backs, afterLv: $afterLv, afterShipId: $afterShipId, getMes: $getMes, voiceF: $voiceF, filename: $filename, fileVersion: $fileVersion, bookTableId: $bookTableId, bookSinfo: $bookSinfo, stats: $stats, graph: $graph, wikiId: $wikiId, chineseName: $chineseName, canDrop: $canDrop, canConstruct: $canConstruct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sortNo, sortNo) || other.sortNo == sortNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.yomi, yomi) || other.yomi == yomi) &&
            (identical(other.stype, stype) || other.stype == stype) &&
            (identical(other.ctype, ctype) || other.ctype == ctype) &&
            (identical(other.cnum, cnum) || other.cnum == cnum) &&
            (identical(other.backs, backs) || other.backs == backs) &&
            (identical(other.afterLv, afterLv) || other.afterLv == afterLv) &&
            (identical(other.afterShipId, afterShipId) ||
                other.afterShipId == afterShipId) &&
            (identical(other.getMes, getMes) || other.getMes == getMes) &&
            (identical(other.voiceF, voiceF) || other.voiceF == voiceF) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            const DeepCollectionEquality()
                .equals(other._fileVersion, _fileVersion) &&
            const DeepCollectionEquality()
                .equals(other._bookTableId, _bookTableId) &&
            (identical(other.bookSinfo, bookSinfo) ||
                other.bookSinfo == bookSinfo) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.graph, graph) || other.graph == graph) &&
            (identical(other.wikiId, wikiId) || other.wikiId == wikiId) &&
            (identical(other.chineseName, chineseName) ||
                other.chineseName == chineseName) &&
            (identical(other.canDrop, canDrop) || other.canDrop == canDrop) &&
            (identical(other.canConstruct, canConstruct) ||
                other.canConstruct == canConstruct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        sortNo,
        name,
        yomi,
        stype,
        ctype,
        cnum,
        backs,
        afterLv,
        afterShipId,
        getMes,
        voiceF,
        filename,
        const DeepCollectionEquality().hash(_fileVersion),
        const DeepCollectionEquality().hash(_bookTableId),
        bookSinfo,
        stats,
        graph,
        wikiId,
        chineseName,
        canDrop,
        canConstruct
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipCopyWith<_$_Ship> get copyWith =>
      __$$_ShipCopyWithImpl<_$_Ship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipToJson(
      this,
    );
  }
}

abstract class _Ship implements Ship {
  factory _Ship(
      {required final int id,
      final int? sortNo,
      final String? name,
      final String? yomi,
      final int? stype,
      final int? ctype,
      final int? cnum,
      final int? backs,
      final int? afterLv,
      final int? afterShipId,
      final String? getMes,
      final int? voiceF,
      required final String filename,
      required final List<String> fileVersion,
      final List<int>? bookTableId,
      final String? bookSinfo,
      required final ShipStats stats,
      required final ShipGraph graph,
      final String? wikiId,
      final String? chineseName,
      required final bool canDrop,
      required final bool canConstruct}) = _$_Ship;

  factory _Ship.fromJson(Map<String, dynamic> json) = _$_Ship.fromJson;

  @override
  int get id;
  @override
  int? get sortNo;
  @override
  String? get name;
  @override
  String? get yomi;
  @override
  int? get stype;
  @override
  int? get ctype;
  @override
  int? get cnum;
  @override
  int? get backs;
  @override
  int? get afterLv;
  @override
  int? get afterShipId;
  @override
  String? get getMes;
  @override
  int? get voiceF;
  @override
  String get filename;
  @override
  List<String> get fileVersion;
  @override
  List<int>? get bookTableId;
  @override
  String? get bookSinfo;
  @override
  ShipStats get stats;
  @override
  ShipGraph get graph;
  @override
  String? get wikiId;
  @override
  String? get chineseName;
  @override
  bool get canDrop;
  @override
  bool get canConstruct;
  @override
  @JsonKey(ignore: true)
  _$$_ShipCopyWith<_$_Ship> get copyWith => throw _privateConstructorUsedError;
}

ShipStats _$ShipStatsFromJson(Map<String, dynamic> json) {
  return _ShipStats.fromJson(json);
}

/// @nodoc
mixin _$ShipStats {
  List<int>? get taik => throw _privateConstructorUsedError;
  List<int>? get souk => throw _privateConstructorUsedError;
  List<int>? get houg => throw _privateConstructorUsedError;
  List<int>? get raig => throw _privateConstructorUsedError;
  List<int>? get tyku => throw _privateConstructorUsedError;
  List<int>? get luck => throw _privateConstructorUsedError;
  int? get soku => throw _privateConstructorUsedError;
  int? get leng => throw _privateConstructorUsedError;
  int? get kaih => throw _privateConstructorUsedError;
  int? get tais => throw _privateConstructorUsedError;
  int? get slotNum => throw _privateConstructorUsedError;
  List<int>? get maxEq => throw _privateConstructorUsedError;
  int? get afterFuel => throw _privateConstructorUsedError;
  int? get afterBull => throw _privateConstructorUsedError;
  int? get fuelMax => throw _privateConstructorUsedError;
  int? get bullMax => throw _privateConstructorUsedError;
  List<int>? get broken => throw _privateConstructorUsedError;
  List<int>? get powUp => throw _privateConstructorUsedError;
  int? get buildTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipStatsCopyWith<ShipStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipStatsCopyWith<$Res> {
  factory $ShipStatsCopyWith(ShipStats value, $Res Function(ShipStats) then) =
      _$ShipStatsCopyWithImpl<$Res, ShipStats>;
  @useResult
  $Res call(
      {List<int>? taik,
      List<int>? souk,
      List<int>? houg,
      List<int>? raig,
      List<int>? tyku,
      List<int>? luck,
      int? soku,
      int? leng,
      int? kaih,
      int? tais,
      int? slotNum,
      List<int>? maxEq,
      int? afterFuel,
      int? afterBull,
      int? fuelMax,
      int? bullMax,
      List<int>? broken,
      List<int>? powUp,
      int? buildTime});
}

/// @nodoc
class _$ShipStatsCopyWithImpl<$Res, $Val extends ShipStats>
    implements $ShipStatsCopyWith<$Res> {
  _$ShipStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taik = freezed,
    Object? souk = freezed,
    Object? houg = freezed,
    Object? raig = freezed,
    Object? tyku = freezed,
    Object? luck = freezed,
    Object? soku = freezed,
    Object? leng = freezed,
    Object? kaih = freezed,
    Object? tais = freezed,
    Object? slotNum = freezed,
    Object? maxEq = freezed,
    Object? afterFuel = freezed,
    Object? afterBull = freezed,
    Object? fuelMax = freezed,
    Object? bullMax = freezed,
    Object? broken = freezed,
    Object? powUp = freezed,
    Object? buildTime = freezed,
  }) {
    return _then(_value.copyWith(
      taik: freezed == taik
          ? _value.taik
          : taik // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      souk: freezed == souk
          ? _value.souk
          : souk // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      houg: freezed == houg
          ? _value.houg
          : houg // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      raig: freezed == raig
          ? _value.raig
          : raig // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tyku: freezed == tyku
          ? _value.tyku
          : tyku // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      luck: freezed == luck
          ? _value.luck
          : luck // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      soku: freezed == soku
          ? _value.soku
          : soku // ignore: cast_nullable_to_non_nullable
              as int?,
      leng: freezed == leng
          ? _value.leng
          : leng // ignore: cast_nullable_to_non_nullable
              as int?,
      kaih: freezed == kaih
          ? _value.kaih
          : kaih // ignore: cast_nullable_to_non_nullable
              as int?,
      tais: freezed == tais
          ? _value.tais
          : tais // ignore: cast_nullable_to_non_nullable
              as int?,
      slotNum: freezed == slotNum
          ? _value.slotNum
          : slotNum // ignore: cast_nullable_to_non_nullable
              as int?,
      maxEq: freezed == maxEq
          ? _value.maxEq
          : maxEq // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      afterFuel: freezed == afterFuel
          ? _value.afterFuel
          : afterFuel // ignore: cast_nullable_to_non_nullable
              as int?,
      afterBull: freezed == afterBull
          ? _value.afterBull
          : afterBull // ignore: cast_nullable_to_non_nullable
              as int?,
      fuelMax: freezed == fuelMax
          ? _value.fuelMax
          : fuelMax // ignore: cast_nullable_to_non_nullable
              as int?,
      bullMax: freezed == bullMax
          ? _value.bullMax
          : bullMax // ignore: cast_nullable_to_non_nullable
              as int?,
      broken: freezed == broken
          ? _value.broken
          : broken // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      powUp: freezed == powUp
          ? _value.powUp
          : powUp // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      buildTime: freezed == buildTime
          ? _value.buildTime
          : buildTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipStatsCopyWith<$Res> implements $ShipStatsCopyWith<$Res> {
  factory _$$_ShipStatsCopyWith(
          _$_ShipStats value, $Res Function(_$_ShipStats) then) =
      __$$_ShipStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? taik,
      List<int>? souk,
      List<int>? houg,
      List<int>? raig,
      List<int>? tyku,
      List<int>? luck,
      int? soku,
      int? leng,
      int? kaih,
      int? tais,
      int? slotNum,
      List<int>? maxEq,
      int? afterFuel,
      int? afterBull,
      int? fuelMax,
      int? bullMax,
      List<int>? broken,
      List<int>? powUp,
      int? buildTime});
}

/// @nodoc
class __$$_ShipStatsCopyWithImpl<$Res>
    extends _$ShipStatsCopyWithImpl<$Res, _$_ShipStats>
    implements _$$_ShipStatsCopyWith<$Res> {
  __$$_ShipStatsCopyWithImpl(
      _$_ShipStats _value, $Res Function(_$_ShipStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taik = freezed,
    Object? souk = freezed,
    Object? houg = freezed,
    Object? raig = freezed,
    Object? tyku = freezed,
    Object? luck = freezed,
    Object? soku = freezed,
    Object? leng = freezed,
    Object? kaih = freezed,
    Object? tais = freezed,
    Object? slotNum = freezed,
    Object? maxEq = freezed,
    Object? afterFuel = freezed,
    Object? afterBull = freezed,
    Object? fuelMax = freezed,
    Object? bullMax = freezed,
    Object? broken = freezed,
    Object? powUp = freezed,
    Object? buildTime = freezed,
  }) {
    return _then(_$_ShipStats(
      taik: freezed == taik
          ? _value._taik
          : taik // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      souk: freezed == souk
          ? _value._souk
          : souk // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      houg: freezed == houg
          ? _value._houg
          : houg // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      raig: freezed == raig
          ? _value._raig
          : raig // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tyku: freezed == tyku
          ? _value._tyku
          : tyku // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      luck: freezed == luck
          ? _value._luck
          : luck // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      soku: freezed == soku
          ? _value.soku
          : soku // ignore: cast_nullable_to_non_nullable
              as int?,
      leng: freezed == leng
          ? _value.leng
          : leng // ignore: cast_nullable_to_non_nullable
              as int?,
      kaih: freezed == kaih
          ? _value.kaih
          : kaih // ignore: cast_nullable_to_non_nullable
              as int?,
      tais: freezed == tais
          ? _value.tais
          : tais // ignore: cast_nullable_to_non_nullable
              as int?,
      slotNum: freezed == slotNum
          ? _value.slotNum
          : slotNum // ignore: cast_nullable_to_non_nullable
              as int?,
      maxEq: freezed == maxEq
          ? _value._maxEq
          : maxEq // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      afterFuel: freezed == afterFuel
          ? _value.afterFuel
          : afterFuel // ignore: cast_nullable_to_non_nullable
              as int?,
      afterBull: freezed == afterBull
          ? _value.afterBull
          : afterBull // ignore: cast_nullable_to_non_nullable
              as int?,
      fuelMax: freezed == fuelMax
          ? _value.fuelMax
          : fuelMax // ignore: cast_nullable_to_non_nullable
              as int?,
      bullMax: freezed == bullMax
          ? _value.bullMax
          : bullMax // ignore: cast_nullable_to_non_nullable
              as int?,
      broken: freezed == broken
          ? _value._broken
          : broken // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      powUp: freezed == powUp
          ? _value._powUp
          : powUp // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      buildTime: freezed == buildTime
          ? _value.buildTime
          : buildTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipStats implements _ShipStats {
  _$_ShipStats(
      {final List<int>? taik,
      final List<int>? souk,
      final List<int>? houg,
      final List<int>? raig,
      final List<int>? tyku,
      final List<int>? luck,
      this.soku,
      this.leng,
      this.kaih,
      this.tais,
      this.slotNum,
      final List<int>? maxEq,
      this.afterFuel,
      this.afterBull,
      this.fuelMax,
      this.bullMax,
      final List<int>? broken,
      final List<int>? powUp,
      this.buildTime})
      : _taik = taik,
        _souk = souk,
        _houg = houg,
        _raig = raig,
        _tyku = tyku,
        _luck = luck,
        _maxEq = maxEq,
        _broken = broken,
        _powUp = powUp;

  factory _$_ShipStats.fromJson(Map<String, dynamic> json) =>
      _$$_ShipStatsFromJson(json);

  final List<int>? _taik;
  @override
  List<int>? get taik {
    final value = _taik;
    if (value == null) return null;
    if (_taik is EqualUnmodifiableListView) return _taik;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _souk;
  @override
  List<int>? get souk {
    final value = _souk;
    if (value == null) return null;
    if (_souk is EqualUnmodifiableListView) return _souk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _houg;
  @override
  List<int>? get houg {
    final value = _houg;
    if (value == null) return null;
    if (_houg is EqualUnmodifiableListView) return _houg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _raig;
  @override
  List<int>? get raig {
    final value = _raig;
    if (value == null) return null;
    if (_raig is EqualUnmodifiableListView) return _raig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _tyku;
  @override
  List<int>? get tyku {
    final value = _tyku;
    if (value == null) return null;
    if (_tyku is EqualUnmodifiableListView) return _tyku;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _luck;
  @override
  List<int>? get luck {
    final value = _luck;
    if (value == null) return null;
    if (_luck is EqualUnmodifiableListView) return _luck;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? soku;
  @override
  final int? leng;
  @override
  final int? kaih;
  @override
  final int? tais;
  @override
  final int? slotNum;
  final List<int>? _maxEq;
  @override
  List<int>? get maxEq {
    final value = _maxEq;
    if (value == null) return null;
    if (_maxEq is EqualUnmodifiableListView) return _maxEq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? afterFuel;
  @override
  final int? afterBull;
  @override
  final int? fuelMax;
  @override
  final int? bullMax;
  final List<int>? _broken;
  @override
  List<int>? get broken {
    final value = _broken;
    if (value == null) return null;
    if (_broken is EqualUnmodifiableListView) return _broken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _powUp;
  @override
  List<int>? get powUp {
    final value = _powUp;
    if (value == null) return null;
    if (_powUp is EqualUnmodifiableListView) return _powUp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? buildTime;

  @override
  String toString() {
    return 'ShipStats(taik: $taik, souk: $souk, houg: $houg, raig: $raig, tyku: $tyku, luck: $luck, soku: $soku, leng: $leng, kaih: $kaih, tais: $tais, slotNum: $slotNum, maxEq: $maxEq, afterFuel: $afterFuel, afterBull: $afterBull, fuelMax: $fuelMax, bullMax: $bullMax, broken: $broken, powUp: $powUp, buildTime: $buildTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipStats &&
            const DeepCollectionEquality().equals(other._taik, _taik) &&
            const DeepCollectionEquality().equals(other._souk, _souk) &&
            const DeepCollectionEquality().equals(other._houg, _houg) &&
            const DeepCollectionEquality().equals(other._raig, _raig) &&
            const DeepCollectionEquality().equals(other._tyku, _tyku) &&
            const DeepCollectionEquality().equals(other._luck, _luck) &&
            (identical(other.soku, soku) || other.soku == soku) &&
            (identical(other.leng, leng) || other.leng == leng) &&
            (identical(other.kaih, kaih) || other.kaih == kaih) &&
            (identical(other.tais, tais) || other.tais == tais) &&
            (identical(other.slotNum, slotNum) || other.slotNum == slotNum) &&
            const DeepCollectionEquality().equals(other._maxEq, _maxEq) &&
            (identical(other.afterFuel, afterFuel) ||
                other.afterFuel == afterFuel) &&
            (identical(other.afterBull, afterBull) ||
                other.afterBull == afterBull) &&
            (identical(other.fuelMax, fuelMax) || other.fuelMax == fuelMax) &&
            (identical(other.bullMax, bullMax) || other.bullMax == bullMax) &&
            const DeepCollectionEquality().equals(other._broken, _broken) &&
            const DeepCollectionEquality().equals(other._powUp, _powUp) &&
            (identical(other.buildTime, buildTime) ||
                other.buildTime == buildTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_taik),
        const DeepCollectionEquality().hash(_souk),
        const DeepCollectionEquality().hash(_houg),
        const DeepCollectionEquality().hash(_raig),
        const DeepCollectionEquality().hash(_tyku),
        const DeepCollectionEquality().hash(_luck),
        soku,
        leng,
        kaih,
        tais,
        slotNum,
        const DeepCollectionEquality().hash(_maxEq),
        afterFuel,
        afterBull,
        fuelMax,
        bullMax,
        const DeepCollectionEquality().hash(_broken),
        const DeepCollectionEquality().hash(_powUp),
        buildTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipStatsCopyWith<_$_ShipStats> get copyWith =>
      __$$_ShipStatsCopyWithImpl<_$_ShipStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipStatsToJson(
      this,
    );
  }
}

abstract class _ShipStats implements ShipStats {
  factory _ShipStats(
      {final List<int>? taik,
      final List<int>? souk,
      final List<int>? houg,
      final List<int>? raig,
      final List<int>? tyku,
      final List<int>? luck,
      final int? soku,
      final int? leng,
      final int? kaih,
      final int? tais,
      final int? slotNum,
      final List<int>? maxEq,
      final int? afterFuel,
      final int? afterBull,
      final int? fuelMax,
      final int? bullMax,
      final List<int>? broken,
      final List<int>? powUp,
      final int? buildTime}) = _$_ShipStats;

  factory _ShipStats.fromJson(Map<String, dynamic> json) =
      _$_ShipStats.fromJson;

  @override
  List<int>? get taik;
  @override
  List<int>? get souk;
  @override
  List<int>? get houg;
  @override
  List<int>? get raig;
  @override
  List<int>? get tyku;
  @override
  List<int>? get luck;
  @override
  int? get soku;
  @override
  int? get leng;
  @override
  int? get kaih;
  @override
  int? get tais;
  @override
  int? get slotNum;
  @override
  List<int>? get maxEq;
  @override
  int? get afterFuel;
  @override
  int? get afterBull;
  @override
  int? get fuelMax;
  @override
  int? get bullMax;
  @override
  List<int>? get broken;
  @override
  List<int>? get powUp;
  @override
  int? get buildTime;
  @override
  @JsonKey(ignore: true)
  _$$_ShipStatsCopyWith<_$_ShipStats> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipGraph _$ShipGraphFromJson(Map<String, dynamic> json) {
  return _ShipGraph.fromJson(json);
}

/// @nodoc
mixin _$ShipGraph {
  List<int>? get bokoN => throw _privateConstructorUsedError;
  List<int>? get bokoD => throw _privateConstructorUsedError;
  List<int>? get kaisyuN => throw _privateConstructorUsedError;
  List<int>? get kaisyuD => throw _privateConstructorUsedError;
  List<int>? get kaizoN => throw _privateConstructorUsedError;
  List<int>? get kaizoD => throw _privateConstructorUsedError;
  List<int>? get mapN => throw _privateConstructorUsedError;
  List<int>? get mapD => throw _privateConstructorUsedError;
  List<int>? get ensyufN => throw _privateConstructorUsedError;
  List<int>? get ensyufD => throw _privateConstructorUsedError;
  List<int>? get ensyueN => throw _privateConstructorUsedError;
  List<int>? get battleN => throw _privateConstructorUsedError;
  List<int>? get battleD => throw _privateConstructorUsedError;
  List<int>? get wedA => throw _privateConstructorUsedError;
  List<int>? get wedB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipGraphCopyWith<ShipGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipGraphCopyWith<$Res> {
  factory $ShipGraphCopyWith(ShipGraph value, $Res Function(ShipGraph) then) =
      _$ShipGraphCopyWithImpl<$Res, ShipGraph>;
  @useResult
  $Res call(
      {List<int>? bokoN,
      List<int>? bokoD,
      List<int>? kaisyuN,
      List<int>? kaisyuD,
      List<int>? kaizoN,
      List<int>? kaizoD,
      List<int>? mapN,
      List<int>? mapD,
      List<int>? ensyufN,
      List<int>? ensyufD,
      List<int>? ensyueN,
      List<int>? battleN,
      List<int>? battleD,
      List<int>? wedA,
      List<int>? wedB});
}

/// @nodoc
class _$ShipGraphCopyWithImpl<$Res, $Val extends ShipGraph>
    implements $ShipGraphCopyWith<$Res> {
  _$ShipGraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bokoN = freezed,
    Object? bokoD = freezed,
    Object? kaisyuN = freezed,
    Object? kaisyuD = freezed,
    Object? kaizoN = freezed,
    Object? kaizoD = freezed,
    Object? mapN = freezed,
    Object? mapD = freezed,
    Object? ensyufN = freezed,
    Object? ensyufD = freezed,
    Object? ensyueN = freezed,
    Object? battleN = freezed,
    Object? battleD = freezed,
    Object? wedA = freezed,
    Object? wedB = freezed,
  }) {
    return _then(_value.copyWith(
      bokoN: freezed == bokoN
          ? _value.bokoN
          : bokoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bokoD: freezed == bokoD
          ? _value.bokoD
          : bokoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaisyuN: freezed == kaisyuN
          ? _value.kaisyuN
          : kaisyuN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaisyuD: freezed == kaisyuD
          ? _value.kaisyuD
          : kaisyuD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaizoN: freezed == kaizoN
          ? _value.kaizoN
          : kaizoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaizoD: freezed == kaizoD
          ? _value.kaizoD
          : kaizoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mapN: freezed == mapN
          ? _value.mapN
          : mapN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mapD: freezed == mapD
          ? _value.mapD
          : mapD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyufN: freezed == ensyufN
          ? _value.ensyufN
          : ensyufN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyufD: freezed == ensyufD
          ? _value.ensyufD
          : ensyufD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyueN: freezed == ensyueN
          ? _value.ensyueN
          : ensyueN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      battleN: freezed == battleN
          ? _value.battleN
          : battleN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      battleD: freezed == battleD
          ? _value.battleD
          : battleD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      wedA: freezed == wedA
          ? _value.wedA
          : wedA // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      wedB: freezed == wedB
          ? _value.wedB
          : wedB // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipGraphCopyWith<$Res> implements $ShipGraphCopyWith<$Res> {
  factory _$$_ShipGraphCopyWith(
          _$_ShipGraph value, $Res Function(_$_ShipGraph) then) =
      __$$_ShipGraphCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? bokoN,
      List<int>? bokoD,
      List<int>? kaisyuN,
      List<int>? kaisyuD,
      List<int>? kaizoN,
      List<int>? kaizoD,
      List<int>? mapN,
      List<int>? mapD,
      List<int>? ensyufN,
      List<int>? ensyufD,
      List<int>? ensyueN,
      List<int>? battleN,
      List<int>? battleD,
      List<int>? wedA,
      List<int>? wedB});
}

/// @nodoc
class __$$_ShipGraphCopyWithImpl<$Res>
    extends _$ShipGraphCopyWithImpl<$Res, _$_ShipGraph>
    implements _$$_ShipGraphCopyWith<$Res> {
  __$$_ShipGraphCopyWithImpl(
      _$_ShipGraph _value, $Res Function(_$_ShipGraph) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bokoN = freezed,
    Object? bokoD = freezed,
    Object? kaisyuN = freezed,
    Object? kaisyuD = freezed,
    Object? kaizoN = freezed,
    Object? kaizoD = freezed,
    Object? mapN = freezed,
    Object? mapD = freezed,
    Object? ensyufN = freezed,
    Object? ensyufD = freezed,
    Object? ensyueN = freezed,
    Object? battleN = freezed,
    Object? battleD = freezed,
    Object? wedA = freezed,
    Object? wedB = freezed,
  }) {
    return _then(_$_ShipGraph(
      bokoN: freezed == bokoN
          ? _value._bokoN
          : bokoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bokoD: freezed == bokoD
          ? _value._bokoD
          : bokoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaisyuN: freezed == kaisyuN
          ? _value._kaisyuN
          : kaisyuN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaisyuD: freezed == kaisyuD
          ? _value._kaisyuD
          : kaisyuD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaizoN: freezed == kaizoN
          ? _value._kaizoN
          : kaizoN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      kaizoD: freezed == kaizoD
          ? _value._kaizoD
          : kaizoD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mapN: freezed == mapN
          ? _value._mapN
          : mapN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mapD: freezed == mapD
          ? _value._mapD
          : mapD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyufN: freezed == ensyufN
          ? _value._ensyufN
          : ensyufN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyufD: freezed == ensyufD
          ? _value._ensyufD
          : ensyufD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ensyueN: freezed == ensyueN
          ? _value._ensyueN
          : ensyueN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      battleN: freezed == battleN
          ? _value._battleN
          : battleN // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      battleD: freezed == battleD
          ? _value._battleD
          : battleD // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      wedA: freezed == wedA
          ? _value._wedA
          : wedA // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      wedB: freezed == wedB
          ? _value._wedB
          : wedB // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipGraph implements _ShipGraph {
  _$_ShipGraph(
      {final List<int>? bokoN,
      final List<int>? bokoD,
      final List<int>? kaisyuN,
      final List<int>? kaisyuD,
      final List<int>? kaizoN,
      final List<int>? kaizoD,
      final List<int>? mapN,
      final List<int>? mapD,
      final List<int>? ensyufN,
      final List<int>? ensyufD,
      final List<int>? ensyueN,
      final List<int>? battleN,
      final List<int>? battleD,
      final List<int>? wedA,
      final List<int>? wedB})
      : _bokoN = bokoN,
        _bokoD = bokoD,
        _kaisyuN = kaisyuN,
        _kaisyuD = kaisyuD,
        _kaizoN = kaizoN,
        _kaizoD = kaizoD,
        _mapN = mapN,
        _mapD = mapD,
        _ensyufN = ensyufN,
        _ensyufD = ensyufD,
        _ensyueN = ensyueN,
        _battleN = battleN,
        _battleD = battleD,
        _wedA = wedA,
        _wedB = wedB;

  factory _$_ShipGraph.fromJson(Map<String, dynamic> json) =>
      _$$_ShipGraphFromJson(json);

  final List<int>? _bokoN;
  @override
  List<int>? get bokoN {
    final value = _bokoN;
    if (value == null) return null;
    if (_bokoN is EqualUnmodifiableListView) return _bokoN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _bokoD;
  @override
  List<int>? get bokoD {
    final value = _bokoD;
    if (value == null) return null;
    if (_bokoD is EqualUnmodifiableListView) return _bokoD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _kaisyuN;
  @override
  List<int>? get kaisyuN {
    final value = _kaisyuN;
    if (value == null) return null;
    if (_kaisyuN is EqualUnmodifiableListView) return _kaisyuN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _kaisyuD;
  @override
  List<int>? get kaisyuD {
    final value = _kaisyuD;
    if (value == null) return null;
    if (_kaisyuD is EqualUnmodifiableListView) return _kaisyuD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _kaizoN;
  @override
  List<int>? get kaizoN {
    final value = _kaizoN;
    if (value == null) return null;
    if (_kaizoN is EqualUnmodifiableListView) return _kaizoN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _kaizoD;
  @override
  List<int>? get kaizoD {
    final value = _kaizoD;
    if (value == null) return null;
    if (_kaizoD is EqualUnmodifiableListView) return _kaizoD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _mapN;
  @override
  List<int>? get mapN {
    final value = _mapN;
    if (value == null) return null;
    if (_mapN is EqualUnmodifiableListView) return _mapN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _mapD;
  @override
  List<int>? get mapD {
    final value = _mapD;
    if (value == null) return null;
    if (_mapD is EqualUnmodifiableListView) return _mapD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _ensyufN;
  @override
  List<int>? get ensyufN {
    final value = _ensyufN;
    if (value == null) return null;
    if (_ensyufN is EqualUnmodifiableListView) return _ensyufN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _ensyufD;
  @override
  List<int>? get ensyufD {
    final value = _ensyufD;
    if (value == null) return null;
    if (_ensyufD is EqualUnmodifiableListView) return _ensyufD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _ensyueN;
  @override
  List<int>? get ensyueN {
    final value = _ensyueN;
    if (value == null) return null;
    if (_ensyueN is EqualUnmodifiableListView) return _ensyueN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _battleN;
  @override
  List<int>? get battleN {
    final value = _battleN;
    if (value == null) return null;
    if (_battleN is EqualUnmodifiableListView) return _battleN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _battleD;
  @override
  List<int>? get battleD {
    final value = _battleD;
    if (value == null) return null;
    if (_battleD is EqualUnmodifiableListView) return _battleD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _wedA;
  @override
  List<int>? get wedA {
    final value = _wedA;
    if (value == null) return null;
    if (_wedA is EqualUnmodifiableListView) return _wedA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _wedB;
  @override
  List<int>? get wedB {
    final value = _wedB;
    if (value == null) return null;
    if (_wedB is EqualUnmodifiableListView) return _wedB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShipGraph(bokoN: $bokoN, bokoD: $bokoD, kaisyuN: $kaisyuN, kaisyuD: $kaisyuD, kaizoN: $kaizoN, kaizoD: $kaizoD, mapN: $mapN, mapD: $mapD, ensyufN: $ensyufN, ensyufD: $ensyufD, ensyueN: $ensyueN, battleN: $battleN, battleD: $battleD, wedA: $wedA, wedB: $wedB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipGraph &&
            const DeepCollectionEquality().equals(other._bokoN, _bokoN) &&
            const DeepCollectionEquality().equals(other._bokoD, _bokoD) &&
            const DeepCollectionEquality().equals(other._kaisyuN, _kaisyuN) &&
            const DeepCollectionEquality().equals(other._kaisyuD, _kaisyuD) &&
            const DeepCollectionEquality().equals(other._kaizoN, _kaizoN) &&
            const DeepCollectionEquality().equals(other._kaizoD, _kaizoD) &&
            const DeepCollectionEquality().equals(other._mapN, _mapN) &&
            const DeepCollectionEquality().equals(other._mapD, _mapD) &&
            const DeepCollectionEquality().equals(other._ensyufN, _ensyufN) &&
            const DeepCollectionEquality().equals(other._ensyufD, _ensyufD) &&
            const DeepCollectionEquality().equals(other._ensyueN, _ensyueN) &&
            const DeepCollectionEquality().equals(other._battleN, _battleN) &&
            const DeepCollectionEquality().equals(other._battleD, _battleD) &&
            const DeepCollectionEquality().equals(other._wedA, _wedA) &&
            const DeepCollectionEquality().equals(other._wedB, _wedB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bokoN),
      const DeepCollectionEquality().hash(_bokoD),
      const DeepCollectionEquality().hash(_kaisyuN),
      const DeepCollectionEquality().hash(_kaisyuD),
      const DeepCollectionEquality().hash(_kaizoN),
      const DeepCollectionEquality().hash(_kaizoD),
      const DeepCollectionEquality().hash(_mapN),
      const DeepCollectionEquality().hash(_mapD),
      const DeepCollectionEquality().hash(_ensyufN),
      const DeepCollectionEquality().hash(_ensyufD),
      const DeepCollectionEquality().hash(_ensyueN),
      const DeepCollectionEquality().hash(_battleN),
      const DeepCollectionEquality().hash(_battleD),
      const DeepCollectionEquality().hash(_wedA),
      const DeepCollectionEquality().hash(_wedB));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipGraphCopyWith<_$_ShipGraph> get copyWith =>
      __$$_ShipGraphCopyWithImpl<_$_ShipGraph>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipGraphToJson(
      this,
    );
  }
}

abstract class _ShipGraph implements ShipGraph {
  factory _ShipGraph(
      {final List<int>? bokoN,
      final List<int>? bokoD,
      final List<int>? kaisyuN,
      final List<int>? kaisyuD,
      final List<int>? kaizoN,
      final List<int>? kaizoD,
      final List<int>? mapN,
      final List<int>? mapD,
      final List<int>? ensyufN,
      final List<int>? ensyufD,
      final List<int>? ensyueN,
      final List<int>? battleN,
      final List<int>? battleD,
      final List<int>? wedA,
      final List<int>? wedB}) = _$_ShipGraph;

  factory _ShipGraph.fromJson(Map<String, dynamic> json) =
      _$_ShipGraph.fromJson;

  @override
  List<int>? get bokoN;
  @override
  List<int>? get bokoD;
  @override
  List<int>? get kaisyuN;
  @override
  List<int>? get kaisyuD;
  @override
  List<int>? get kaizoN;
  @override
  List<int>? get kaizoD;
  @override
  List<int>? get mapN;
  @override
  List<int>? get mapD;
  @override
  List<int>? get ensyufN;
  @override
  List<int>? get ensyufD;
  @override
  List<int>? get ensyueN;
  @override
  List<int>? get battleN;
  @override
  List<int>? get battleD;
  @override
  List<int>? get wedA;
  @override
  List<int>? get wedB;
  @override
  @JsonKey(ignore: true)
  _$$_ShipGraphCopyWith<_$_ShipGraph> get copyWith =>
      throw _privateConstructorUsedError;
}
