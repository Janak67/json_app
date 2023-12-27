import 'package:json_app/screens/country/model/eng_model.dart';
import 'package:json_app/screens/country/model/name_model.dart';
import 'package:json_app/screens/country/model/native_model.dart';

class CountryModel {
  CountryNameModel? countryNameModel;
  NativeNameModel? nativeNameModel;
  EngModel? engModel;

  CountryModel({this.countryNameModel, this.nativeNameModel, this.engModel});

  factory CountryModel.mapToModel(Map m1) {
    return CountryModel(
      countryNameModel: CountryNameModel.mapToModel(m1['name']),
      // engModel: EngModel.mapToModel(m1['eng']),
      // nativeNameModel: NativeNameModel.mapToModel(m1['nativeName']),
    );
  }
}
