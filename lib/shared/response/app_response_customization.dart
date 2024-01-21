import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_response_customization.freezed.dart';
part 'app_response_customization.g.dart';

@freezed
class AppResponse with _$AppResponse {
  const factory AppResponse.success({
    @Default('Success') String message,
    int? statusCode,
    Map<String, dynamic>? data,
  }) = _AppResponseSuccess;
  const factory AppResponse.error({
    @Default('Error') String message,
    int? statusCode,
    Map<String, dynamic>? data,
  }) = _AppResponseError;
  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}
