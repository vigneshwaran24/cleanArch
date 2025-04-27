import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class ApiwithError {
  ApiwithError._();

  static Future<Either<ErrorApi, T>> call<T>(Future<T> Function() f) async {
    try {
      return Right(await f());
    } on DioException {
      return const Left(ErrorApi());
    } catch (e) {
      return Left(ErrorApi());
    }
  }
}

class ErrorApi {
  const ErrorApi();
}
