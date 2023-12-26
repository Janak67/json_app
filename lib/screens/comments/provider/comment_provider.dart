import 'package:flutter/material.dart';
import 'package:json_app/screens/comments/model/comment_model.dart';
import 'package:json_app/utils/json_helper.dart';

class CommentProvider with ChangeNotifier {
  List<CommentModel> comment = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CommentModel> l1 = await jsonHelper.commentJsonToList();
    comment = l1;
    notifyListeners();
  }
}
