import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

// == PASSO 1: Criar o "main" para settar as dependências ==
final getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env){
  // Função gerada automaticamente pelo injectable, essa função fará o "wiring" das
  // dependencias
  $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const String dev = 'dev';
  static const String prod = 'prod';
}