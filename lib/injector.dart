import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/domain/meme.domain.dart';
import 'package:get_it_demo/repository/implementations/dev_meme.repository_impl.dart';
import 'package:get_it_demo/repository/implementations/prod_meme.repository_impl.dart';
import 'package:get_it_demo/repository/meme.repository.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

// Essa classe vai ser pega pelo kiwi_generator e ele vai montar todas as injeções que
// definirmos
abstract class Injector {
  // Aqui nós definimos os tipos de inção a serem aplicadas no Injector gerado.
  // - common(): Injeções que servirão para todos os ambientes (dev, test, prod, qa...)
  // - development(): Injeções específicas para o ambiente dev
  // - production(): Injeções específicas para o ambiente prod

  @Register.singleton(MemeDomain)
  @Register.singleton(MemeApi)
  void common();

  @Register.singleton(IMemeRepository, from: DevMemeRepositoryImpl)
  void development();

  @Register.singleton(IMemeRepository, from: ProdMemeRepositoryImpl)
  void production();

  static void setup(String env) {
    // A concrete class named _$TheNameOfYourAbstractClass will be generated and you can
    // call the method where you like. 
    final injector = _$Injector();

    // Carregando as injeções comuns a todos os ambientes
    injector.common();

    if (env == Env.prod) {
      injector.production();
    } else {
      injector.development();
    }
  }
}

abstract class Env {
  static const String dev = 'dev';
  static const String prod = 'prod';
}