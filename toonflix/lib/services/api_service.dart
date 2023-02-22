import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseURL =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModel>> getTodaysToon() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseURL/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

// API로부터 받는 json형태의 데이터 예시
// {
//    title: 일렉시드, 
//    thumb: https://shared-comic.pstatic.net/thumb/webtoon/717481/thumbnail/thumbnail_IMAG21_3545800975505057126.jpg, 
//    id: 717481
// }
