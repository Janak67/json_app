class CompanyModel {
  String? name, catchPhrase, bs;

  CompanyModel({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory CompanyModel.mapToModel(Map m1) {
    return CompanyModel(
      name: m1['name'],
      catchPhrase: m1['catchPhrase'],
      bs: m1['bs'],
    );
  }
}
