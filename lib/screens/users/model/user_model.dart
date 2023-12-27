import 'package:json_app/screens/users/model/address_model.dart';
import 'package:json_app/screens/users/model/company_model.dart';

class UsersModel {
  int? id;
  String? name, username, email, phone, website;
  AddressModel? addressModel;
  CompanyModel? companyModel;

  UsersModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
      this.addressModel,
      this.companyModel});

  factory UsersModel.mapToModel(Map m1) {
    return UsersModel(
      id: m1['id'],
      name: m1['name'],
      username: m1['username'],
      email: m1['email'],
      phone: m1['phone'],
      website: m1['website'],
      addressModel: AddressModel.mapToModel(m1['address']),
      companyModel: CompanyModel.mapToModel(m1['company']),
    );
  }
}
