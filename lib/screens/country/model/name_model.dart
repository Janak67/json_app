import 'package:json_app/screens/country/model/native_model.dart';

class CountryNameModel {
  String? common, official;
  NativeNameModel? nativeNameModel;

  CountryNameModel(
      {this.common,
      this.official,
      this.nativeNameModel});

  factory CountryNameModel.mapToModel(Map m1) {
    return CountryNameModel(
      common: m1['common'],
      official: m1['official'],
      // nativeNameModel: NativeNameModel.mapToModel(m1['nativeName']),
    );
  }
}


