import 'dart:convert';

import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

// == PASSO 5: Anotar a API como @injectable para que ela possa ser injetada nas 
// implementações do IMemeRepository

// Quando o injectable é usado na sua forma com o "i" minúsculo, é como se fosse um
// construtor mais simples, diferente do @Injectable() que aceita alguns argumentos
@injectable
class MemeApi {
  static const String _baseURL = 'https://some-random-api.ml/meme';

  Future<Meme> getMeme() async {
    final res = await http.get(_baseURL);
    final Map<String, dynamic> jsonMeme = jsonDecode(res.body);

    return Meme.fromJson(jsonMeme);
  }
}