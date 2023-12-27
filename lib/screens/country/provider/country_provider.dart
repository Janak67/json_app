import 'package:flutter/material.dart';
import 'package:json_app/utils/json_helper.dart';

import '../model/country_model.dart';

class CountryProvider with ChangeNotifier {
  List<CountryModel> country = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CountryModel> l1 = await jsonHelper.countryJsonToList();
    country = l1;
    notifyListeners();
  }
}
