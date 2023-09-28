import 'package:project/model/comment.dart';

class News {
  String name;
  String body;
  DateTime date;
  String imageUrl;
  List<Comment> comments;
  News(this.name, this.body, this.date, this.imageUrl,
      {List<Comment>? comments})
      : comments = comments ?? <Comment>[];
}
