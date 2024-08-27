import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

sealed class ApiResponse {}

@freezed
sealed class AnyApiResponse with _$AnyApiResponse {
  @Implements<ApiResponse>()
  factory AnyApiResponse({
    required int apiResult,
    required String apiResultMsg,
    dynamic apiData,
  }) = _AnyApiResponse;

  factory AnyApiResponse.fromJson(Map<String, dynamic> json) =>
      _$AnyApiResponseFromJson(json);
}
