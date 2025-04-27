// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/api_service.dart' as _i844;
import '../core/injection_module.dart' as _i237;
import '../data/remote.dart' as _i748;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i361.Dio>(() => apiModule.dio());
    gh.singleton<_i844.ApiClient>(() => _i844.ApiClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i748.RepoServiceSource>(
        () => _i748.RepoSourceImp(gh<_i844.ApiClient>()));
    return this;
  }
}

class _$ApiModule extends _i237.ApiModule {}
