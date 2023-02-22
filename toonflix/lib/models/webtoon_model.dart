class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}

// API로부터 받는 json형태의 데이터 예시
// {
//    title: 일렉시드, 
//    thumb: https://shared-comic.pstatic.net/thumb/webtoon/717481/thumbnail/thumbnail_IMAG21_3545800975505057126.jpg, 
//    id: 717481
// }
