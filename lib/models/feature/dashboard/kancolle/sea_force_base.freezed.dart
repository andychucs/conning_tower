// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sea_force_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeaForceBase {
  SeaForceBaseResource get resource => throw _privateConstructorUsedError;
  set resource(SeaForceBaseResource value) =>
      throw _privateConstructorUsedError;
  Commander get commander => throw _privateConstructorUsedError;
  set commander(Commander value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeaForceBaseCopyWith<SeaForceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeaForceBaseCopyWith<$Res> {
  factory $SeaForceBaseCopyWith(
          SeaForceBase value, $Res Function(SeaForceBase) then) =
      _$SeaForceBaseCopyWithImpl<$Res, SeaForceBase>;
  @useResult
  $Res call({SeaForceBaseResource resource, Commander commander});

  $SeaForceBaseResourceCopyWith<$Res> get resource;
  $CommanderCopyWith<$Res> get commander;
}

/// @nodoc
class _$SeaForceBaseCopyWithImpl<$Res, $Val extends SeaForceBase>
    implements $SeaForceBaseCopyWith<$Res> {
  _$SeaForceBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? commander = null,
  }) {
    return _then(_value.copyWith(
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as SeaForceBaseResource,
      commander: null == commander
          ? _value.commander
          : commander // ignore: cast_nullable_to_non_nullable
              as Commander,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeaForceBaseResourceCopyWith<$Res> get resource {
    return $SeaForceBaseResourceCopyWith<$Res>(_value.resource, (value) {
      return _then(_value.copyWith(resource: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommanderCopyWith<$Res> get commander {
    return $CommanderCopyWith<$Res>(_value.commander, (value) {
      return _then(_value.copyWith(commander: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeaForceBaseCopyWith<$Res>
    implements $SeaForceBaseCopyWith<$Res> {
  factory _$$_SeaForceBaseCopyWith(
          _$_SeaForceBase value, $Res Function(_$_SeaForceBase) then) =
      __$$_SeaForceBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeaForceBaseResource resource, Commander commander});

  @override
  $SeaForceBaseResourceCopyWith<$Res> get resource;
  @override
  $CommanderCopyWith<$Res> get commander;
}

/// @nodoc
class __$$_SeaForceBaseCopyWithImpl<$Res>
    extends _$SeaForceBaseCopyWithImpl<$Res, _$_SeaForceBase>
    implements _$$_SeaForceBaseCopyWith<$Res> {
  __$$_SeaForceBaseCopyWithImpl(
      _$_SeaForceBase _value, $Res Function(_$_SeaForceBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? commander = null,
  }) {
    return _then(_$_SeaForceBase(
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as SeaForceBaseResource,
      commander: null == commander
          ? _value.commander
          : commander // ignore: cast_nullable_to_non_nullable
              as Commander,
    ));
  }
}

/// @nodoc

class _$_SeaForceBase extends _SeaForceBase {
  _$_SeaForceBase({required this.resource, required this.commander})
      : super._();

  @override
  SeaForceBaseResource resource;
  @override
  Commander commander;

  @override
  String toString() {
    return 'SeaForceBase(resource: $resource, commander: $commander)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeaForceBaseCopyWith<_$_SeaForceBase> get copyWith =>
      __$$_SeaForceBaseCopyWithImpl<_$_SeaForceBase>(this, _$identity);
}

abstract class _SeaForceBase extends SeaForceBase {
  factory _SeaForceBase(
      {required SeaForceBaseResource resource,
      required Commander commander}) = _$_SeaForceBase;
  _SeaForceBase._() : super._();

  @override
  SeaForceBaseResource get resource;
  set resource(SeaForceBaseResource value);
  @override
  Commander get commander;
  set commander(Commander value);
  @override
  @JsonKey(ignore: true)
  _$$_SeaForceBaseCopyWith<_$_SeaForceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeaForceBaseResource {
  int get oil => throw _privateConstructorUsedError;
  int get ammo => throw _privateConstructorUsedError;
  int get steel => throw _privateConstructorUsedError;
  int get bauxite => throw _privateConstructorUsedError;
  int get instantCreateShip => throw _privateConstructorUsedError;
  int get instantRepairs => throw _privateConstructorUsedError;
  int get developmentMaterials => throw _privateConstructorUsedError;
  int get improvementMaterials => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeaForceBaseResourceCopyWith<SeaForceBaseResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeaForceBaseResourceCopyWith<$Res> {
  factory $SeaForceBaseResourceCopyWith(SeaForceBaseResource value,
          $Res Function(SeaForceBaseResource) then) =
      _$SeaForceBaseResourceCopyWithImpl<$Res, SeaForceBaseResource>;
  @useResult
  $Res call(
      {int oil,
      int ammo,
      int steel,
      int bauxite,
      int instantCreateShip,
      int instantRepairs,
      int developmentMaterials,
      int improvementMaterials});
}

/// @nodoc
class _$SeaForceBaseResourceCopyWithImpl<$Res,
        $Val extends SeaForceBaseResource>
    implements $SeaForceBaseResourceCopyWith<$Res> {
  _$SeaForceBaseResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oil = null,
    Object? ammo = null,
    Object? steel = null,
    Object? bauxite = null,
    Object? instantCreateShip = null,
    Object? instantRepairs = null,
    Object? developmentMaterials = null,
    Object? improvementMaterials = null,
  }) {
    return _then(_value.copyWith(
      oil: null == oil
          ? _value.oil
          : oil // ignore: cast_nullable_to_non_nullable
              as int,
      ammo: null == ammo
          ? _value.ammo
          : ammo // ignore: cast_nullable_to_non_nullable
              as int,
      steel: null == steel
          ? _value.steel
          : steel // ignore: cast_nullable_to_non_nullable
              as int,
      bauxite: null == bauxite
          ? _value.bauxite
          : bauxite // ignore: cast_nullable_to_non_nullable
              as int,
      instantCreateShip: null == instantCreateShip
          ? _value.instantCreateShip
          : instantCreateShip // ignore: cast_nullable_to_non_nullable
              as int,
      instantRepairs: null == instantRepairs
          ? _value.instantRepairs
          : instantRepairs // ignore: cast_nullable_to_non_nullable
              as int,
      developmentMaterials: null == developmentMaterials
          ? _value.developmentMaterials
          : developmentMaterials // ignore: cast_nullable_to_non_nullable
              as int,
      improvementMaterials: null == improvementMaterials
          ? _value.improvementMaterials
          : improvementMaterials // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeaForceBaseResourceCopyWith<$Res>
    implements $SeaForceBaseResourceCopyWith<$Res> {
  factory _$$_SeaForceBaseResourceCopyWith(_$_SeaForceBaseResource value,
          $Res Function(_$_SeaForceBaseResource) then) =
      __$$_SeaForceBaseResourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int oil,
      int ammo,
      int steel,
      int bauxite,
      int instantCreateShip,
      int instantRepairs,
      int developmentMaterials,
      int improvementMaterials});
}

/// @nodoc
class __$$_SeaForceBaseResourceCopyWithImpl<$Res>
    extends _$SeaForceBaseResourceCopyWithImpl<$Res, _$_SeaForceBaseResource>
    implements _$$_SeaForceBaseResourceCopyWith<$Res> {
  __$$_SeaForceBaseResourceCopyWithImpl(_$_SeaForceBaseResource _value,
      $Res Function(_$_SeaForceBaseResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oil = null,
    Object? ammo = null,
    Object? steel = null,
    Object? bauxite = null,
    Object? instantCreateShip = null,
    Object? instantRepairs = null,
    Object? developmentMaterials = null,
    Object? improvementMaterials = null,
  }) {
    return _then(_$_SeaForceBaseResource(
      oil: null == oil
          ? _value.oil
          : oil // ignore: cast_nullable_to_non_nullable
              as int,
      ammo: null == ammo
          ? _value.ammo
          : ammo // ignore: cast_nullable_to_non_nullable
              as int,
      steel: null == steel
          ? _value.steel
          : steel // ignore: cast_nullable_to_non_nullable
              as int,
      bauxite: null == bauxite
          ? _value.bauxite
          : bauxite // ignore: cast_nullable_to_non_nullable
              as int,
      instantCreateShip: null == instantCreateShip
          ? _value.instantCreateShip
          : instantCreateShip // ignore: cast_nullable_to_non_nullable
              as int,
      instantRepairs: null == instantRepairs
          ? _value.instantRepairs
          : instantRepairs // ignore: cast_nullable_to_non_nullable
              as int,
      developmentMaterials: null == developmentMaterials
          ? _value.developmentMaterials
          : developmentMaterials // ignore: cast_nullable_to_non_nullable
              as int,
      improvementMaterials: null == improvementMaterials
          ? _value.improvementMaterials
          : improvementMaterials // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SeaForceBaseResource implements _SeaForceBaseResource {
  const _$_SeaForceBaseResource(
      {required this.oil,
      required this.ammo,
      required this.steel,
      required this.bauxite,
      required this.instantCreateShip,
      required this.instantRepairs,
      required this.developmentMaterials,
      required this.improvementMaterials});

  @override
  final int oil;
  @override
  final int ammo;
  @override
  final int steel;
  @override
  final int bauxite;
  @override
  final int instantCreateShip;
  @override
  final int instantRepairs;
  @override
  final int developmentMaterials;
  @override
  final int improvementMaterials;

  @override
  String toString() {
    return 'SeaForceBaseResource(oil: $oil, ammo: $ammo, steel: $steel, bauxite: $bauxite, instantCreateShip: $instantCreateShip, instantRepairs: $instantRepairs, developmentMaterials: $developmentMaterials, improvementMaterials: $improvementMaterials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeaForceBaseResource &&
            (identical(other.oil, oil) || other.oil == oil) &&
            (identical(other.ammo, ammo) || other.ammo == ammo) &&
            (identical(other.steel, steel) || other.steel == steel) &&
            (identical(other.bauxite, bauxite) || other.bauxite == bauxite) &&
            (identical(other.instantCreateShip, instantCreateShip) ||
                other.instantCreateShip == instantCreateShip) &&
            (identical(other.instantRepairs, instantRepairs) ||
                other.instantRepairs == instantRepairs) &&
            (identical(other.developmentMaterials, developmentMaterials) ||
                other.developmentMaterials == developmentMaterials) &&
            (identical(other.improvementMaterials, improvementMaterials) ||
                other.improvementMaterials == improvementMaterials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      oil,
      ammo,
      steel,
      bauxite,
      instantCreateShip,
      instantRepairs,
      developmentMaterials,
      improvementMaterials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeaForceBaseResourceCopyWith<_$_SeaForceBaseResource> get copyWith =>
      __$$_SeaForceBaseResourceCopyWithImpl<_$_SeaForceBaseResource>(
          this, _$identity);
}

abstract class _SeaForceBaseResource implements SeaForceBaseResource {
  const factory _SeaForceBaseResource(
      {required final int oil,
      required final int ammo,
      required final int steel,
      required final int bauxite,
      required final int instantCreateShip,
      required final int instantRepairs,
      required final int developmentMaterials,
      required final int improvementMaterials}) = _$_SeaForceBaseResource;

  @override
  int get oil;
  @override
  int get ammo;
  @override
  int get steel;
  @override
  int get bauxite;
  @override
  int get instantCreateShip;
  @override
  int get instantRepairs;
  @override
  int get developmentMaterials;
  @override
  int get improvementMaterials;
  @override
  @JsonKey(ignore: true)
  _$$_SeaForceBaseResourceCopyWith<_$_SeaForceBaseResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Commander {
  String get name => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get maxShip => throw _privateConstructorUsedError;
  int get maxItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommanderCopyWith<Commander> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommanderCopyWith<$Res> {
  factory $CommanderCopyWith(Commander value, $Res Function(Commander) then) =
      _$CommanderCopyWithImpl<$Res, Commander>;
  @useResult
  $Res call({String name, int level, int rank, int maxShip, int maxItem});
}

/// @nodoc
class _$CommanderCopyWithImpl<$Res, $Val extends Commander>
    implements $CommanderCopyWith<$Res> {
  _$CommanderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? level = null,
    Object? rank = null,
    Object? maxShip = null,
    Object? maxItem = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      maxShip: null == maxShip
          ? _value.maxShip
          : maxShip // ignore: cast_nullable_to_non_nullable
              as int,
      maxItem: null == maxItem
          ? _value.maxItem
          : maxItem // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommanderCopyWith<$Res> implements $CommanderCopyWith<$Res> {
  factory _$$_CommanderCopyWith(
          _$_Commander value, $Res Function(_$_Commander) then) =
      __$$_CommanderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int level, int rank, int maxShip, int maxItem});
}

/// @nodoc
class __$$_CommanderCopyWithImpl<$Res>
    extends _$CommanderCopyWithImpl<$Res, _$_Commander>
    implements _$$_CommanderCopyWith<$Res> {
  __$$_CommanderCopyWithImpl(
      _$_Commander _value, $Res Function(_$_Commander) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? level = null,
    Object? rank = null,
    Object? maxShip = null,
    Object? maxItem = null,
  }) {
    return _then(_$_Commander(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      maxShip: null == maxShip
          ? _value.maxShip
          : maxShip // ignore: cast_nullable_to_non_nullable
              as int,
      maxItem: null == maxItem
          ? _value.maxItem
          : maxItem // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Commander extends _Commander {
  const _$_Commander(
      {required this.name,
      required this.level,
      required this.rank,
      required this.maxShip,
      required this.maxItem})
      : super._();

  @override
  final String name;
  @override
  final int level;
  @override
  final int rank;
  @override
  final int maxShip;
  @override
  final int maxItem;

  @override
  String toString() {
    return 'Commander(name: $name, level: $level, rank: $rank, maxShip: $maxShip, maxItem: $maxItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Commander &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.maxShip, maxShip) || other.maxShip == maxShip) &&
            (identical(other.maxItem, maxItem) || other.maxItem == maxItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, level, rank, maxShip, maxItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommanderCopyWith<_$_Commander> get copyWith =>
      __$$_CommanderCopyWithImpl<_$_Commander>(this, _$identity);
}

abstract class _Commander extends Commander {
  const factory _Commander(
      {required final String name,
      required final int level,
      required final int rank,
      required final int maxShip,
      required final int maxItem}) = _$_Commander;
  const _Commander._() : super._();

  @override
  String get name;
  @override
  int get level;
  @override
  int get rank;
  @override
  int get maxShip;
  @override
  int get maxItem;
  @override
  @JsonKey(ignore: true)
  _$$_CommanderCopyWith<_$_Commander> get copyWith =>
      throw _privateConstructorUsedError;
}
