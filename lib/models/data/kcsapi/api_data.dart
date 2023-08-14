import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_data.freezed.dart';
part 'api_data.g.dart';

@freezed
class ApiData with _$ApiData {
  factory ApiData({
    required List<Map<String, dynamic>>  data,
  }) = _ApiData;

  factory ApiData.fromJson(json) =>
      _$ApiDataFromJson(json);
}
