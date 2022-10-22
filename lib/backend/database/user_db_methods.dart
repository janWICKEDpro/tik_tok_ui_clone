import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert' as convert;

import '../models/user.dart';

class UserDatabaseMethods {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<bool> addUser(User? user) async {
    if (user == null) {
      return false;
    }
    try {
      await _db
          .collection('USERS')
          .add(convert.jsonDecode(user.toJson()) as Map<String, dynamic>);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteUser(User? user) async {
    //todo: to be implemented;
  }

  Future<bool> updateFollowers(User? user) async {
    //todo: to be  implemented;
  }

  Future<bool> updateFollowing(User? user) async {
    //todo: to be implemented;
  }
  Future<User> getUser() async {
    //todo: to be implemented;
  }
  Future getUserPosts() async {
    //todo: to be implememted;
  }
}
