import 'package:json_app/screens/user/model/data_model.dart';
import 'package:json_app/screens/user/model/support_model.dart';

class UserModel {
  // ignore: non_constant_identifier_names
  int? page, per_page, total, total_pages;
  SupportModel? supportModel;
  List<DataModel>? dataModelList = [];

  UserModel(
      {this.page,
      // ignore: non_constant_identifier_names
      this.per_page,
      this.total,
      // ignore: non_constant_identifier_names
      this.total_pages,
      this.supportModel,
      this.dataModelList});

  factory UserModel.mapToModel(Map m1) {
    List data = m1['data'];
    return UserModel(
      page: m1['page'],
      per_page: m1['per_page'],
      total: m1['total'],
      total_pages: m1['total_pages'],
      supportModel: SupportModel.mapToModel(m1['support']),
      dataModelList: data.map((e) => DataModel.mapToModel(e)).toList(),
    );
  }
}
