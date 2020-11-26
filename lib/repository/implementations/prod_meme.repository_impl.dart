import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/repository/meme.repository.dart';
import 'package:injectable/injectable.dart';

import '../../injection.dart';

// == PASSO 4: Apontando que essa classe poderá ser injetada e que ela poderá ser chamada
// pela interface/classe IMemeRepository. o @Named() é necessário pois há mais de 1 classe
// Que está podendo ser injetada por essa interface. Bem similar ao @Qualifier do Spring

// Para fazer injeções baseadas numa interface/classe precisa usar o injectable com o 
// "i" maiúsculo com parênteses
// @Named('prodMemeRepository')
@Injectable(as: IMemeRepository, env: [Env.prod])
class ProdMemeRepositoryImpl implements IMemeRepository{
  final MemeApi api;

  // == PASSO 6: Injetar a MemeApi no nível do construtor ==
  ProdMemeRepositoryImpl(this.api);

  Future<Meme> getMeme() async {
    print('Hello from ProdMemeRepo!');
    return this.api.getMeme();
  }
}
