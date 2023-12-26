import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_app/screens/comments/model/comment_model.dart';
import 'package:json_app/screens/posts/model/posts_model.dart';

class JsonHelper {
  Future<List<PostModel>> json_PostToList() async {
    var jsonString = await rootBundle.loadString('assets/json/posts.json');
    List post = jsonDecode(jsonString);
    List<PostModel> modelList =
        post.map((e) => PostModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<CommentModel>> json_CommentToList() async {
    var jsonString = await rootBundle.loadString('assets/json/comment.json');
    List comment = jsonDecode(jsonString);
    List<CommentModel> modelList =
        comment.map((e) => CommentModel.mapToModel(e)).toList();
    return modelList;
  }
}
