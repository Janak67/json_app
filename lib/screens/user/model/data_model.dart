class DataModel {
  int? id;

  // ignore: non_constant_identifier_names
  String? email, first_name, last_name, avatar;

  DataModel(
      {this.id,
      this.email,
      // ignore: non_constant_identifier_names
      this.first_name,
      // ignore: non_constant_identifier_names
      this.last_name,
      this.avatar});

  factory DataModel.mapToModel(Map m1) {
    return DataModel(
      id: m1['id'],
      email: m1['email'],
      first_name: m1['first_name'],
      last_name: m1['last_name'],
      avatar: m1['avatar'],
    );
  }
}
