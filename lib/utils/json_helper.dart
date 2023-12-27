import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:json_app/screens/albums/model/albums_model.dart';
import 'package:json_app/screens/comments/model/comment_model.dart';
import 'package:json_app/screens/photos/model/photo_model.dart';
import 'package:json_app/screens/posts/model/posts_model.dart';
import 'package:json_app/screens/todos/model/todo_model.dart';
import 'package:json_app/screens/users/model/user_model.dart';

import '../screens/country/model/country_model.dart';

class JsonHelper {
  Future<List<PostModel>> postJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/posts.json');
    List post = jsonDecode(jsonString);
    List<PostModel> modelList =
        post.map((e) => PostModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<CommentModel>> commentJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/comment.json');
    List comment = jsonDecode(jsonString);
    List<CommentModel> modelList =
        comment.map((e) => CommentModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<AlbumModel>> albumsJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/album.json');
    List album = jsonDecode(jsonString);
    List<AlbumModel> modelList =
        album.map((e) => AlbumModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<TodoModel>> todoJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/todo.json');
    List todo = jsonDecode(jsonString);
    List<TodoModel> modelList =
        todo.map((e) => TodoModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<PhotoModel>> photoJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/photo.json');
    List photo = jsonDecode(jsonString);
    List<PhotoModel> modelList =
        photo.map((e) => PhotoModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<UsersModel>> userJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/user.json');
    List user = jsonDecode(jsonString);
    List<UsersModel> modelList =
        user.map((e) => UsersModel.mapToModel(e)).toList();
    return modelList;
  }

  Future<List<CountryModel>> countryJsonToList() async {
    var jsonString = await rootBundle.loadString('assets/json/country.json');
    List country = jsonDecode(jsonString);
    List<CountryModel> modelList =
        country.map((e) => CountryModel.mapToModel(e)).toList();
    return modelList;
  }
}
