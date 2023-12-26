import 'package:flutter/material.dart';
import 'package:json_app/screens/photos/model/photo_model.dart';
import 'package:json_app/utils/json_helper.dart';

class PhotoProvider with ChangeNotifier {
  List<PhotoModel> photo = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<PhotoModel> l1 = await jsonHelper.json_PhotoToList();
    photo = l1;
    notifyListeners();
  }
}
