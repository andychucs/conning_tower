// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webview_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebControllerState {
  InAppWebViewController? get controller => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;
  WebUri get currUrl => throw _privateConstructorUsedError;
  List<WebUri> get currPageUrls => throw _privateConstructorUsedError;
  bool get isScreenResize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebControllerStateCopyWith<WebControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebControllerStateCopyWith<$Res> {
  factory $WebControllerStateCopyWith(
          WebControllerState value, $Res Function(WebControllerState) then) =
      _$WebControllerStateCopyWithImpl<$Res, WebControllerState>;
  @useResult
  $Res call(
      {InAppWebViewController? controller,
      bool isInit,
      WebUri currUrl,
      List<WebUri> currPageUrls,
      bool isScreenResize});
}

/// @nodoc
class _$WebControllerStateCopyWithImpl<$Res, $Val extends WebControllerState>
    implements $WebControllerStateCopyWith<$Res> {
  _$WebControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? isInit = null,
    Object? currUrl = null,
    Object? currPageUrls = null,
    Object? isScreenResize = null,
  }) {
    return _then(_value.copyWith(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as InAppWebViewController?,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
      currUrl: null == currUrl
          ? _value.currUrl
          : currUrl // ignore: cast_nullable_to_non_nullable
              as WebUri,
      currPageUrls: null == currPageUrls
          ? _value.currPageUrls
          : currPageUrls // ignore: cast_nullable_to_non_nullable
              as List<WebUri>,
      isScreenResize: null == isScreenResize
          ? _value.isScreenResize
          : isScreenResize // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebControllerStateCopyWith<$Res>
    implements $WebControllerStateCopyWith<$Res> {
  factory _$$_WebControllerStateCopyWith(_$_WebControllerState value,
          $Res Function(_$_WebControllerState) then) =
      __$$_WebControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InAppWebViewController? controller,
      bool isInit,
      WebUri currUrl,
      List<WebUri> currPageUrls,
      bool isScreenResize});
}

/// @nodoc
class __$$_WebControllerStateCopyWithImpl<$Res>
    extends _$WebControllerStateCopyWithImpl<$Res, _$_WebControllerState>
    implements _$$_WebControllerStateCopyWith<$Res> {
  __$$_WebControllerStateCopyWithImpl(
      _$_WebControllerState _value, $Res Function(_$_WebControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? isInit = null,
    Object? currUrl = null,
    Object? currPageUrls = null,
    Object? isScreenResize = null,
  }) {
    return _then(_$_WebControllerState(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as InAppWebViewController?,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
      currUrl: null == currUrl
          ? _value.currUrl
          : currUrl // ignore: cast_nullable_to_non_nullable
              as WebUri,
      currPageUrls: null == currPageUrls
          ? _value._currPageUrls
          : currPageUrls // ignore: cast_nullable_to_non_nullable
              as List<WebUri>,
      isScreenResize: null == isScreenResize
          ? _value.isScreenResize
          : isScreenResize // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WebControllerState
    with DiagnosticableTreeMixin
    implements _WebControllerState {
  _$_WebControllerState(
      {required this.controller,
      required this.isInit,
      required this.currUrl,
      required final List<WebUri> currPageUrls,
      required this.isScreenResize})
      : _currPageUrls = currPageUrls;

  @override
  final InAppWebViewController? controller;
  @override
  final bool isInit;
  @override
  final WebUri currUrl;
  final List<WebUri> _currPageUrls;
  @override
  List<WebUri> get currPageUrls {
    if (_currPageUrls is EqualUnmodifiableListView) return _currPageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currPageUrls);
  }

  @override
  final bool isScreenResize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebControllerState(controller: $controller, isInit: $isInit, currUrl: $currUrl, currPageUrls: $currPageUrls, isScreenResize: $isScreenResize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebControllerState'))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('isInit', isInit))
      ..add(DiagnosticsProperty('currUrl', currUrl))
      ..add(DiagnosticsProperty('currPageUrls', currPageUrls))
      ..add(DiagnosticsProperty('isScreenResize', isScreenResize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebControllerState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.isInit, isInit) || other.isInit == isInit) &&
            (identical(other.currUrl, currUrl) || other.currUrl == currUrl) &&
            const DeepCollectionEquality()
                .equals(other._currPageUrls, _currPageUrls) &&
            (identical(other.isScreenResize, isScreenResize) ||
                other.isScreenResize == isScreenResize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, isInit, currUrl,
      const DeepCollectionEquality().hash(_currPageUrls), isScreenResize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebControllerStateCopyWith<_$_WebControllerState> get copyWith =>
      __$$_WebControllerStateCopyWithImpl<_$_WebControllerState>(
          this, _$identity);
}

abstract class _WebControllerState implements WebControllerState {
  factory _WebControllerState(
      {required final InAppWebViewController? controller,
      required final bool isInit,
      required final WebUri currUrl,
      required final List<WebUri> currPageUrls,
      required final bool isScreenResize}) = _$_WebControllerState;

  @override
  InAppWebViewController? get controller;
  @override
  bool get isInit;
  @override
  WebUri get currUrl;
  @override
  List<WebUri> get currPageUrls;
  @override
  bool get isScreenResize;
  @override
  @JsonKey(ignore: true)
  _$$_WebControllerStateCopyWith<_$_WebControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
