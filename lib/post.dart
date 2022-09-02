class Post {
  int? id;
  int? userId;
  String? title;
  String? body;

  Post(int id, int userId, String title, String body) {
    this.id = id;
    this.userId = userId;
    this.title = title;
    this.body = body;
  }

  Post.fromJson(Map json) {
    id = json["id"];
    userId = json["userId"];
    body = json["completed"];
    title = json["title"];
  }
  Map toJson() {
    return {
      "id": id,
      "userId": userId,
      "body": body,
      "title": title,
    };
  }
}
