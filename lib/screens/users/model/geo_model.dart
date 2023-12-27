class GeoModel {
  String? lat, lng;

  GeoModel({this.lat, this.lng});

  factory GeoModel.mapToModel(Map m1) {
    return GeoModel(
      lat: m1['lat'],
      lng: m1['lng'],
    );
  }
}
