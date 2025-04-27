import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:test_1/core/api_call_with_error.dart';
import 'package:test_1/domain/repo/repo.dart';

import '../remote.dart';

@LazySingleton(as: RepoDomain)
class RepoSourceImp implements RepoDomain {
  final RepoServiceSource _repo;
  RepoSourceImp(this._repo);
  @override
  Future<Either<ErrorApi, Resp>> fetchApi(Params param) async =>
      ApiwithError.call(() => _repo.fetchData(param));
}
