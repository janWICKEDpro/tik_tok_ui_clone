import 'package:flutter/cupertino.dart';

class User {
  String? uid;
  String? username;
  String? email;
  String? password;
  int? followers;
  int? following;
  int? numberOfPosts;

  User(
      {@required this.uid,
      this.email,
      this.password,
      this.followers = 0,
      this.following = 0,
      this.numberOfPosts = 0,
      this.username});

  String toJson() {
    return "{'USERNAME': $username, 'EMAIL': $email,'ID': $uid, 'FOLLOWERS': $followers, 'FOLLOWING': $following, 'NUMBEROFPOSTS': $numberOfPosts }";
  }

  factory User.fromJson(Map<String, Object>? user) {
    if (user == null) {
      return User();
    }
    final id = user['id'] as String;
    final email = user['email'] as String;
    final followers = user['followers'] as int;
    final following = user['following'] as int;
    final posts = user['posts'] as int;
    final username = user['username'] as String;
    final password = user['password'] as String;
    return User(
        uid: id,
        email: email,
        username: username,
        followers: followers,
        following: following,
        numberOfPosts: posts,
        password: password);
  }
}
