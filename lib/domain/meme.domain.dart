import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/repository/meme.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MemeDomain {
  final IMemeRepository _memeRepository;

  // == PASSO 7: Injetar a IMemeRepository no nível do construtor ==
  MemeDomain(this._memeRepository);

  Future<Meme> getNextMeme() async {
    return this._memeRepository.getMeme();
  }
}
