import 'dart:convert';

import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:http/http.dart' as http;

class MemeApi {
  static const String _baseURL = 'https://some-random-api.ml/meme';

  Future<Meme> getMeme() async {
    final res = await http.get(_baseURL);
    final Map<String, dynamic> jsonMeme = jsonDecode(res.body);

    return Meme.fromJson(jsonMeme);
  }
}