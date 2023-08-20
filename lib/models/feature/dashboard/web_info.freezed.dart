// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebInfo {
  String get url => throw _privateConstructorUsedError;
  List<Cookie> get cookies => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebInfoCopyWith<WebInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebInfoCopyWith<$Res> {
  factory $WebInfoCopyWith(WebInfo value, $Res Function(WebInfo) then) =
      _$WebInfoCopyWithImpl<$Res, WebInfo>;
  @useResult
  $Res call({String url, List<Cookie> cookies, int statusCode});
}

/// @nodoc
class _$WebInfoCopyWithImpl<$Res, $Val extends WebInfo>
    implements $WebInfoCopyWith<$Res> {
  _$WebInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? cookies = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cookies: null == cookies
          ? _value.cookies
          : cookies // ignore: cast_nullable_to_non_nullable
              as List<Cookie>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebInfoCopyWith<$Res> implements $WebInfoCopyWith<$Res> {
  factory _$$_WebInfoCopyWith(
          _$_WebInfo value, $Res Function(_$_WebInfo) then) =
      __$$_WebInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, List<Cookie> cookies, int statusCode});
}

/// @nodoc
class __$$_WebInfoCopyWithImpl<$Res>
    extends _$WebInfoCopyWithImpl<$Res, _$_WebInfo>
    implements _$$_WebInfoCopyWith<$Res> {
  __$$_WebInfoCopyWithImpl(_$_WebInfo _value, $Res Function(_$_WebInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? cookies = null,
    Object? statusCode = null,
  }) {
    return _then(_$_WebInfo(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cookies: null == cookies
          ? _value._cookies
          : cookies // ignore: cast_nullable_to_non_nullable
              as List<Cookie>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WebInfo implements _WebInfo {
  const _$_WebInfo(
      {required this.url,
      required final List<Cookie> cookies,
      required this.statusCode})
      : _cookies = cookies;

  @override
  final String url;
  final List<Cookie> _cookies;
  @override
  List<Cookie> get cookies {
    if (_cookies is EqualUnmodifiableListView) return _cookies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cookies);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'WebInfo(url: $url, cookies: $cookies, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebInfo &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._cookies, _cookies) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url,
      const DeepCollectionEquality().hash(_cookies), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebInfoCopyWith<_$_WebInfo> get copyWith =>
      __$$_WebInfoCopyWithImpl<_$_WebInfo>(this, _$identity);
}

abstract class _WebInfo implements WebInfo {
  const factory _WebInfo(
      {required final String url,
      required final List<Cookie> cookies,
      required final int statusCode}) = _$_WebInfo;

  @override
  String get url;
  @override
  List<Cookie> get cookies;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_WebInfoCopyWith<_$_WebInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
