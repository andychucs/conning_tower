// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebMessageData _$WebMessageDataFromJson(Map<String, dynamic> json) {
  return _WebMessageData.fromJson(json);
}

/// @nodoc
mixin _$WebMessageData {
  String get responseUrl => throw _privateConstructorUsedError;
  String get responseText => throw _privateConstructorUsedError;
  int get readyState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebMessageDataCopyWith<WebMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebMessageDataCopyWith<$Res> {
  factory $WebMessageDataCopyWith(
          WebMessageData value, $Res Function(WebMessageData) then) =
      _$WebMessageDataCopyWithImpl<$Res, WebMessageData>;
  @useResult
  $Res call({String responseUrl, String responseText, int readyState});
}

/// @nodoc
class _$WebMessageDataCopyWithImpl<$Res, $Val extends WebMessageData>
    implements $WebMessageDataCopyWith<$Res> {
  _$WebMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseUrl = null,
    Object? responseText = null,
    Object? readyState = null,
  }) {
    return _then(_value.copyWith(
      responseUrl: null == responseUrl
          ? _value.responseUrl
          : responseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      responseText: null == responseText
          ? _value.responseText
          : responseText // ignore: cast_nullable_to_non_nullable
              as String,
      readyState: null == readyState
          ? _value.readyState
          : readyState // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebMessageDataCopyWith<$Res>
    implements $WebMessageDataCopyWith<$Res> {
  factory _$$_WebMessageDataCopyWith(
          _$_WebMessageData value, $Res Function(_$_WebMessageData) then) =
      __$$_WebMessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String responseUrl, String responseText, int readyState});
}

/// @nodoc
class __$$_WebMessageDataCopyWithImpl<$Res>
    extends _$WebMessageDataCopyWithImpl<$Res, _$_WebMessageData>
    implements _$$_WebMessageDataCopyWith<$Res> {
  __$$_WebMessageDataCopyWithImpl(
      _$_WebMessageData _value, $Res Function(_$_WebMessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseUrl = null,
    Object? responseText = null,
    Object? readyState = null,
  }) {
    return _then(_$_WebMessageData(
      responseUrl: null == responseUrl
          ? _value.responseUrl
          : responseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      responseText: null == responseText
          ? _value.responseText
          : responseText // ignore: cast_nullable_to_non_nullable
              as String,
      readyState: null == readyState
          ? _value.readyState
          : readyState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebMessageData
    with DiagnosticableTreeMixin
    implements _WebMessageData {
  const _$_WebMessageData(
      {required this.responseUrl,
      required this.responseText,
      required this.readyState});

  factory _$_WebMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_WebMessageDataFromJson(json);

  @override
  final String responseUrl;
  @override
  final String responseText;
  @override
  final int readyState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebMessageData(responseUrl: $responseUrl, responseText: $responseText, readyState: $readyState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebMessageData'))
      ..add(DiagnosticsProperty('responseUrl', responseUrl))
      ..add(DiagnosticsProperty('responseText', responseText))
      ..add(DiagnosticsProperty('readyState', readyState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebMessageData &&
            (identical(other.responseUrl, responseUrl) ||
                other.responseUrl == responseUrl) &&
            (identical(other.responseText, responseText) ||
                other.responseText == responseText) &&
            (identical(other.readyState, readyState) ||
                other.readyState == readyState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseUrl, responseText, readyState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebMessageDataCopyWith<_$_WebMessageData> get copyWith =>
      __$$_WebMessageDataCopyWithImpl<_$_WebMessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebMessageDataToJson(
      this,
    );
  }
}

abstract class _WebMessageData implements WebMessageData {
  const factory _WebMessageData(
      {required final String responseUrl,
      required final String responseText,
      required final int readyState}) = _$_WebMessageData;

  factory _WebMessageData.fromJson(Map<String, dynamic> json) =
      _$_WebMessageData.fromJson;

  @override
  String get responseUrl;
  @override
  String get responseText;
  @override
  int get readyState;
  @override
  @JsonKey(ignore: true)
  _$$_WebMessageDataCopyWith<_$_WebMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}
