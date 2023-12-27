import 'package:json_app/screens/country/model/eng_model.dart';

class NativeNameModel {
  EngModel? engModel;

  NativeNameModel({this.engModel});

  factory NativeNameModel.mapToModel(Map m1) {
    return NativeNameModel(
      // engModel: EngModel.mapToModel(
      //   m1['eng'],
      // ),
    );
  }
}