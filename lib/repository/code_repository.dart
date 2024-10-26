import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/code_response.dart';

part 'code_repository.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class CodeClient {
  factory CodeClient(Dio dio, {String baseUrl}) = _CodeClient;

  @POST("")
  Future<CodeResponse> executeCode(
    @Body() String code,
    @Header("Content-Type") String contentType,
  );
}
