import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiService {
  Dio _dio = Dio();

  ApiService() {
    _initDio();
  }

  Dio getDio() {
    return _dio;
  }

  void _initDio() {
    _dio.options.connectTimeout = 15000;
    _dio.options.headers['Accept'] = 'application/json';

    /// add interceptors
    /// logging interceptor
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
