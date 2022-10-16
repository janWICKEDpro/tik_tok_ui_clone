import 'package:tik_tok_clone/backend/models/comment.dart';

class Post {
  Post(
      {this.id,
      this.uid,
      this.title,
      this.comments,
      this.likes,
      this.link,
      this.views});
  String? id;
  String? uid;
  String? title;
  String? link;
  int? views;
  int? likes;
  Comment? comments;

  factory Post.fromJson(Map<String, Object>? post) {
    if (post == null) {
      return Post();
    }
    final id = post['id'] as String;
    final uid = post['uid'] as String;
    final title = post['title'] as String;
    final link = post['link'] as String;
    final views = post['views'] as int;
    final likes = post['likes'] as int;
    final comments = post['comments'] as Comment;
    return Post(
        title: title,
        uid: uid,
        id: id,
        likes: likes,
        link: link,
        views: views,
        comments: comments);
  }
}
