import 'package:flutter/material.dart';
import 'package:json_app/screens/albums/view/albums_screen.dart';
import 'package:json_app/screens/comments/view/comments_screen.dart';
import 'package:json_app/screens/country/view/country_screen.dart';
import 'package:json_app/screens/home/view/home_screen.dart';
import 'package:json_app/screens/photos/view/photos_screen.dart';
import 'package:json_app/screens/posts/view/posts_screen.dart';
import 'package:json_app/screens/todos/view/todo_screen.dart';
import 'package:json_app/screens/user/view/user_screen.dart';
import 'package:json_app/screens/users/view/users_screen.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const HomeScreen(),
  'posts': (context) => const PostsScreen(),
  'comment': (context) => const CommentsScreen(),
  'album': (context) => const AlbumsScreen(),
  'photo': (context) => const PhotoScreen(),
  'todo': (context) => const TodoScreen(),
  'user': (context) => const UsersScreen(),
  'country': (context) => const CountryScreen(),
  'users': (context) => const UserScreen(),
};
