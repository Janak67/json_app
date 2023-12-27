import 'package:json_app/screens/users/model/geo_model.dart';

class AddressModel {
  String? street, suite, city, zipcode;
  GeoModel? geoModel;

  AddressModel(
      {this.street, this.suite, this.city, this.zipcode, this.geoModel});

  factory AddressModel.mapToModel(Map m1) {
    return AddressModel(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],
      geoModel: GeoModel.mapToModel(m1['geo']),
    );
  }
}
