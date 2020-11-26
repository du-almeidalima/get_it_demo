import 'package:get_it_demo/app/data/model/meme.dart';

// == PASSO 3: Definir uma interface para fazer as injeções ==

abstract class IMemeRepository {
  Future<Meme> getMeme();
}