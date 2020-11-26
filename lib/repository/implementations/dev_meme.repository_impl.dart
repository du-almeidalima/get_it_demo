import 'package:get_it_demo/app/data/api/meme.api.dart';
import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/repository/meme.repository.dart';

class DevMemeRepositoryImpl implements IMemeRepository{
  final MemeApi api;

  DevMemeRepositoryImpl(this.api);

  Future<Meme> getMeme() async {
    print('Hello from DevMemeRepo!');
    return this.api.getMeme();
  }
}
