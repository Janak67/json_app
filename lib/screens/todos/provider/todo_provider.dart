import 'package:flutter/material.dart';
import 'package:json_app/screens/todos/model/todo_model.dart';
import 'package:json_app/utils/json_helper.dart';

class TodoProvider with ChangeNotifier {
  List<TodoModel> todo = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<TodoModel> l1 = await jsonHelper.json_TodoToList();
    todo = l1;
    notifyListeners();
  }
}
