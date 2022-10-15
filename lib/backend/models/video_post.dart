import 'package:tik_tok_clone/backend/models/comment.dart';

class Post {
  Post(
      {this.id,
      this.uid,
      this.title,
      this.comment,
      this.likes,
      this.link,
      this.views});
  String? id;
  String? uid;
  String? title;
  String? link;
  int? views;
  int? likes;
  Comment? comment;
}
