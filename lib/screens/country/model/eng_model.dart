class EngModel {
  String? official, common;

  EngModel({this.official, this.common});

  factory EngModel.mapToModel(Map m1) {
    return EngModel(
      official: m1['official'],
      common: m1['common'],
    );
  }
}