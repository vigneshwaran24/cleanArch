import 'package:injectable/injectable.dart';
import 'package:test_1/core/api_service.dart';

abstract class RepoServiceSource {
  Future<Resp> fetchData(Params param);
}

@LazySingleton(as: RepoServiceSource)
class RepoSourceImp implements RepoServiceSource {
  final ApiClient _api;
  RepoSourceImp(this._api);
  @override
  Future<Resp> fetchData(Params param) async {
    return await _api.get();
  }
}

class Resp {
  Resp();
}

class Params {}
