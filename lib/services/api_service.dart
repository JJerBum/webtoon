import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // baseUrl + today를 합친 url에 요청해 응돱된 body값을 출력하는 함수
  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    // get함수 요청시 기다려야 하고(await), 기다리는 기능이 포함된 경우 async 함수 어야 한다., 또한 await은 Future 이랑 같이 사용되며,
    // Future는 "잠시만 기다려줘 현재 타입은 모르겠어"라고 말하는 것과 같다.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }

    throw Error();
  }
}
