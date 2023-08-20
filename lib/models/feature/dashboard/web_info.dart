import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_info.freezed.dart';


@freezed
class WebInfo with _$WebInfo {
  const factory WebInfo({
    required String url,
    required List<Cookie> cookies,
    required int statusCode
}) = _WebInfo;
}

final webInfoProvider = StateProvider<WebInfo>((ref) {
  return WebInfo(url: '', cookies: [], statusCode: 100);
});
