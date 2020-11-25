import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/locator.dart';

class MemeRepo {
  Future<Meme> getMeme() async {
    // == PASSO 3: Pegar uma referência de uma dependência pelo seu Type ==
    return locator.get<MemeApi>().getMeme();
  }
}
