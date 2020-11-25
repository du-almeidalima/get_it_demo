import 'package:get_it/get_it.dart';
import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/domain/meme.domain.dart';
import 'package:get_it_demo/repository/meme.repository.dart';
// == PASSO 1: Criar uma instância do Get It e suas dependências ==

// Criando o Singleton do ServiceLocator
final locator = GetIt.instance;

void setupGetItLocator() {
  // Registrando cada dependência.
  // OBS: Usar o Generic da dependência evita com que haja erros.
  locator.registerLazySingleton<MemeApi>(() => MemeApi());
  locator.registerLazySingleton<MemeRepo>(() => MemeRepo());
  locator.registerLazySingleton<MemeDomain>(() => MemeDomain());
}