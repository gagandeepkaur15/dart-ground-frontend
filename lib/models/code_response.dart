import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_response.freezed.dart';
part 'code_response.g.dart';

@freezed
class CodeResponse with _$CodeResponse {
  const factory CodeResponse({
    required String? output,
    required String? executionTime,
    required String? memoryUsed,
  }) = _CodeResponse;

  factory CodeResponse.fromJson(Map<String, dynamic> json) => _$CodeResponseFromJson(json);
}
