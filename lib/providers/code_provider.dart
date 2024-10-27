import 'package:dart_ground_frontend/repository/code_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/code_response.dart';

part 'code_provider.g.dart';

@riverpod
class CodeResponseNotifier extends _$CodeResponseNotifier {
  @override
  FutureOr<CodeResponse?> build() async => null;

  Future<CodeResponse> executeCode(String code) async {
    state = const AsyncLoading();

    final dio = Dio(BaseOptions(
      baseUrl: "http://localhost:8080",
      contentType: "text/plain",
      responseType: ResponseType.json,
    ));
    final client = CodeClient(dio);

    try {
      final response = await client.executeCode(code, "text/plain");
      state = AsyncValue.data(response);
      return response;
    } catch (error, st) {
      state = AsyncValue.error(error, st);
      rethrow;
    }
  }
}
