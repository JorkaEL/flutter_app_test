import 'package:dio/dio.dart';
import 'package:flutter_app_test/data/api/dto/result.dto.dart';
import 'package:retrofit/http.dart';

part 'user.client.g.dart';

@RestApi(baseUrl: '', parser: Parser.JsonSerializable)
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/')
  Future<DtoResult> getPageUsers(@Query('page') int page, @Query('results') int results, @Query('seed') String seed);
}
