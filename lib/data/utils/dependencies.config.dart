// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/repositories/iuser.repository.dart' as _i6;
import '../../domain/utils/app_theme.dart' as _i5;
import '../api/services/api.service.dart' as _i4;
import '../api/user.api.dart' as _i3;
import '../repositories/user.repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.UserApi>(() => _i3.UserApi(get<_i4.ApiService>()));
  gh.singleton<_i4.ApiService>(_i4.ApiService());
  gh.singleton<_i5.AppTheme>(_i5.AppTheme());
  gh.singleton<_i6.IUserRepository>(_i7.UserRepository(get<_i3.UserApi>()));
  return get;
}
