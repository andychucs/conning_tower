// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskUtilState {
  String get source => throw _privateConstructorUsedError;
  Tasks get tasks => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  TextEditingController get urlSourceController =>
      throw _privateConstructorUsedError;
  TextEditingController get textSourceController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskUtilStateCopyWith<TaskUtilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUtilStateCopyWith<$Res> {
  factory $TaskUtilStateCopyWith(
          TaskUtilState value, $Res Function(TaskUtilState) then) =
      _$TaskUtilStateCopyWithImpl<$Res, TaskUtilState>;
  @useResult
  $Res call(
      {String source,
      Tasks tasks,
      String url,
      TextEditingController urlSourceController,
      TextEditingController textSourceController});

  $TasksCopyWith<$Res> get tasks;
}

/// @nodoc
class _$TaskUtilStateCopyWithImpl<$Res, $Val extends TaskUtilState>
    implements $TaskUtilStateCopyWith<$Res> {
  _$TaskUtilStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? tasks = null,
    Object? url = null,
    Object? urlSourceController = null,
    Object? textSourceController = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Tasks,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlSourceController: null == urlSourceController
          ? _value.urlSourceController
          : urlSourceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      textSourceController: null == textSourceController
          ? _value.textSourceController
          : textSourceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TasksCopyWith<$Res> get tasks {
    return $TasksCopyWith<$Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskUtilStateCopyWith<$Res>
    implements $TaskUtilStateCopyWith<$Res> {
  factory _$$_TaskUtilStateCopyWith(
          _$_TaskUtilState value, $Res Function(_$_TaskUtilState) then) =
      __$$_TaskUtilStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String source,
      Tasks tasks,
      String url,
      TextEditingController urlSourceController,
      TextEditingController textSourceController});

  @override
  $TasksCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$_TaskUtilStateCopyWithImpl<$Res>
    extends _$TaskUtilStateCopyWithImpl<$Res, _$_TaskUtilState>
    implements _$$_TaskUtilStateCopyWith<$Res> {
  __$$_TaskUtilStateCopyWithImpl(
      _$_TaskUtilState _value, $Res Function(_$_TaskUtilState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? tasks = null,
    Object? url = null,
    Object? urlSourceController = null,
    Object? textSourceController = null,
  }) {
    return _then(_$_TaskUtilState(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Tasks,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlSourceController: null == urlSourceController
          ? _value.urlSourceController
          : urlSourceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      textSourceController: null == textSourceController
          ? _value.textSourceController
          : textSourceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_TaskUtilState implements _TaskUtilState {
  _$_TaskUtilState(
      {required this.source,
      required this.tasks,
      required this.url,
      required this.urlSourceController,
      required this.textSourceController});

  @override
  final String source;
  @override
  final Tasks tasks;
  @override
  final String url;
  @override
  final TextEditingController urlSourceController;
  @override
  final TextEditingController textSourceController;

  @override
  String toString() {
    return 'TaskUtilState(source: $source, tasks: $tasks, url: $url, urlSourceController: $urlSourceController, textSourceController: $textSourceController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskUtilState &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlSourceController, urlSourceController) ||
                other.urlSourceController == urlSourceController) &&
            (identical(other.textSourceController, textSourceController) ||
                other.textSourceController == textSourceController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, tasks, url,
      urlSourceController, textSourceController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskUtilStateCopyWith<_$_TaskUtilState> get copyWith =>
      __$$_TaskUtilStateCopyWithImpl<_$_TaskUtilState>(this, _$identity);
}

abstract class _TaskUtilState implements TaskUtilState {
  factory _TaskUtilState(
          {required final String source,
          required final Tasks tasks,
          required final String url,
          required final TextEditingController urlSourceController,
          required final TextEditingController textSourceController}) =
      _$_TaskUtilState;

  @override
  String get source;
  @override
  Tasks get tasks;
  @override
  String get url;
  @override
  TextEditingController get urlSourceController;
  @override
  TextEditingController get textSourceController;
  @override
  @JsonKey(ignore: true)
  _$$_TaskUtilStateCopyWith<_$_TaskUtilState> get copyWith =>
      throw _privateConstructorUsedError;
}
