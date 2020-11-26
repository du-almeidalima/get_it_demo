import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/repository/meme.repository.dart';

class MemeDomain {
  final IMemeRepository _memeRepository;

  MemeDomain(this._memeRepository);

  Future<Meme> getNextMeme() async {
    return this._memeRepository.getMeme();
  }
}
