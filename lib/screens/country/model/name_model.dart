import 'package:json_app/screens/country/model/eng_model.dart';
import 'package:json_app/screens/country/model/native_model.dart';

class CountryNameModel {
  String? common, official;
  NativeNameModel? nativeNameModel;
  EngModel? engModel;

  CountryNameModel({this.common, this.official, this.nativeNameModel, this.engModel});

  factory CountryNameModel.mapToModel(Map m1) {
    return CountryNameModel(
      common: m1['common'],
      official: m1['official'],
      nativeNameModel: NativeNameModel.mapToModel(m1['nativeName']),
      engModel: EngModel.mapToModel(m1['eng']),
    );
  }
}
