import 'package:flutter/material.dart';
import 'package:json_app/screens/country/model/name_model.dart';
import 'package:json_app/utils/json_helper.dart';

class CountryProvider with ChangeNotifier {
  List<CountryNameModel> country = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CountryNameModel> l1 = await jsonHelper.countryJsonToList();
    country = l1;
    notifyListeners();
  }
}
