import 'package:http/http.dart' as http;

class TestApi {
  static Future getTest() {
    return http.get(
      Uri.parse("https://run.mocky.io/v3/0515e20e-aa93-4a7d-abc9-8f579d5b3bd3"),
    );
  }
}

class Api {
  static Future getTodos() {
    return http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );
  }
}

class PostApi {
  static Future getPosts() {
    return http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
  }
}

class DrugApi {
  static Future getDrugs() {
    return http.get(
      Uri.parse("https://run.mocky.io/v3/a953f608-cf59-4b0b-ab9a-7cc380b7b588"),
    );
  }
}
