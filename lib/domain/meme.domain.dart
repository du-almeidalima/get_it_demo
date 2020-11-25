import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/locator.dart';
import 'package:get_it_demo/repository/meme.repository.dart';

class MemeDomain {
  Future<Meme> getNextMeme() async {
    // == PASSO 3: Pegar uma referência de uma dependência pelo seu Type ==
    return locator.get<MemeRepo>().getMeme();
  }
}
