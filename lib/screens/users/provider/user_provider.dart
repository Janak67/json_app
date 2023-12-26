import 'package:flutter/material.dart';
import 'package:json_app/screens/users/model/user_model.dart';
import 'package:json_app/utils/json_helper.dart';

class UsersProvider with ChangeNotifier {
  List<UsersModel> user = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<UsersModel> l1 = await jsonHelper.userJsonToList();
    user = l1;
    notifyListeners();
  }
}
