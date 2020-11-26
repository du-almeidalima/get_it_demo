import 'package:get_it_demo/app/data/model/meme.dart';

abstract class IMemeRepository {
  Future<Meme> getMeme();
}