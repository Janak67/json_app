import 'package:flutter/material.dart';
import 'package:json_app/screens/posts/model/posts_model.dart';
import 'package:json_app/utils/json_helper.dart';

class PostsProvider with ChangeNotifier {
  List<PostModel> post = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<PostModel> l1 = await jsonHelper.json_PostToList();
    post = l1;
    notifyListeners();
  }
}
