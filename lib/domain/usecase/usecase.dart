import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:test_1/core/api_call_with_error.dart';
import 'package:test_1/data/remote.dart';
import 'package:test_1/domain/repo/repo.dart';

@injectable
class AuthUsecase {
  final RepoDomain domainRepo;

  AuthUsecase(this.domainRepo);
  Future<Either<ErrorApi, Resp>> auth(Params param) async =>
      domainRepo.fetchApi(param);
}
