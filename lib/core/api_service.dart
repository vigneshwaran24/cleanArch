import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  dynamic get() {
    return _dio.get("path");
  }

  dynamic post() {
    return _dio.post("path");
  }
}
