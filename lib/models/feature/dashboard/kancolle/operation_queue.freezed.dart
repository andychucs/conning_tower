// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OperationQueue {
  Map<int, Operation> get map => throw _privateConstructorUsedError;
  set map(Map<int, Operation> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationQueueCopyWith<OperationQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationQueueCopyWith<$Res> {
  factory $OperationQueueCopyWith(
          OperationQueue value, $Res Function(OperationQueue) then) =
      _$OperationQueueCopyWithImpl<$Res, OperationQueue>;
  @useResult
  $Res call({Map<int, Operation> map});
}

/// @nodoc
class _$OperationQueueCopyWithImpl<$Res, $Val extends OperationQueue>
    implements $OperationQueueCopyWith<$Res> {
  _$OperationQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_value.copyWith(
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<int, Operation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperationQueueCopyWith<$Res>
    implements $OperationQueueCopyWith<$Res> {
  factory _$$_OperationQueueCopyWith(
          _$_OperationQueue value, $Res Function(_$_OperationQueue) then) =
      __$$_OperationQueueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Operation> map});
}

/// @nodoc
class __$$_OperationQueueCopyWithImpl<$Res>
    extends _$OperationQueueCopyWithImpl<$Res, _$_OperationQueue>
    implements _$$_OperationQueueCopyWith<$Res> {
  __$$_OperationQueueCopyWithImpl(
      _$_OperationQueue _value, $Res Function(_$_OperationQueue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_$_OperationQueue(
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<int, Operation>,
    ));
  }
}

/// @nodoc

class _$_OperationQueue extends _OperationQueue {
  _$_OperationQueue({required this.map}) : super._();

  @override
  Map<int, Operation> map;

  @override
  String toString() {
    return 'OperationQueue(map: $map)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationQueueCopyWith<_$_OperationQueue> get copyWith =>
      __$$_OperationQueueCopyWithImpl<_$_OperationQueue>(this, _$identity);
}

abstract class _OperationQueue extends OperationQueue {
  factory _OperationQueue({required Map<int, Operation> map}) =
      _$_OperationQueue;
  _OperationQueue._() : super._();

  @override
  Map<int, Operation> get map;
  set map(Map<int, Operation> value);
  @override
  @JsonKey(ignore: true)
  _$$_OperationQueueCopyWith<_$_OperationQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Operation {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res, Operation>;
  @useResult
  $Res call({int id, String code, DateTime endTime});
}

/// @nodoc
class _$OperationCopyWithImpl<$Res, $Val extends Operation>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$$_OperationCopyWith(
          _$_Operation value, $Res Function(_$_Operation) then) =
      __$$_OperationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, DateTime endTime});
}

/// @nodoc
class __$$_OperationCopyWithImpl<$Res>
    extends _$OperationCopyWithImpl<$Res, _$_Operation>
    implements _$$_OperationCopyWith<$Res> {
  __$$_OperationCopyWithImpl(
      _$_Operation _value, $Res Function(_$_Operation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? endTime = null,
  }) {
    return _then(_$_Operation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Operation implements _Operation {
  _$_Operation({required this.id, required this.code, required this.endTime});

  @override
  final int id;
  @override
  final String code;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'Operation(id: $id, code: $code, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Operation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, code, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationCopyWith<_$_Operation> get copyWith =>
      __$$_OperationCopyWithImpl<_$_Operation>(this, _$identity);
}

abstract class _Operation implements Operation {
  factory _Operation(
      {required final int id,
      required final String code,
      required final DateTime endTime}) = _$_Operation;

  @override
  int get id;
  @override
  String get code;
  @override
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_OperationCopyWith<_$_Operation> get copyWith =>
      throw _privateConstructorUsedError;
}
