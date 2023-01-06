class Post {
  int? userId, id;
  String? title, body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
