// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'repository/implementations/dev_meme.repository_impl.dart';
import 'repository/meme.repository.dart';
import 'app/data/api/meme.api.dart';
import 'domain/meme.domain.dart';
import 'repository/implementations/prod_meme.repository_impl.dart';

/// Environment names
const _dev = 'dev';
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<MemeApi>(() => MemeApi());
  gh.factory<IMemeRepository>(() => DevMemeRepositoryImpl(get<MemeApi>()),
      registerFor: {_dev});
  gh.factory<IMemeRepository>(() => ProdMemeRepositoryImpl(get<MemeApi>()),
      registerFor: {_prod});
  gh.factory<MemeDomain>(() => MemeDomain(get<IMemeRepository>()));
  return get;
}
