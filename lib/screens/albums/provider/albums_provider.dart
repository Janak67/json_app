import 'package:flutter/material.dart';
import 'package:json_app/screens/albums/model/albums_model.dart';
import 'package:json_app/utils/json_helper.dart';


class AlbumsProvider with ChangeNotifier{
  List<AlbumModel> albums = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<AlbumModel> l1 = await jsonHelper.albumsJsonToList();
    albums = l1;
    notifyListeners();
  }
}