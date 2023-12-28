import 'package:flutter/material.dart';
import 'package:json_app/screens/user/model/users_model.dart';
import 'package:json_app/utils/json_helper.dart';

class UserProvider with ChangeNotifier {
  UserModel? userModel = UserModel();

  Future<void> userGetData() async {
    JsonHelper jsonHelper = JsonHelper();
    UserModel l1 = await jsonHelper.usersJsonToList();
    userModel = l1;
    notifyListeners();
  }
}
