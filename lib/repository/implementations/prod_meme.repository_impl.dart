import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/repository/meme.repository.dart';
class ProdMemeRepositoryImpl implements IMemeRepository{
  final MemeApi api;

  ProdMemeRepositoryImpl(this.api);

  Future<Meme> getMeme() async {
    print('Hello from ProdMemeRepo!');
    return this.api.getMeme();
  }
}
