import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_app/screens/albums/provider/albums_provider.dart';
import 'package:json_app/screens/comments/provider/comment_provider.dart';
import 'package:json_app/screens/country/provider/country_provider.dart';
import 'package:json_app/screens/photos/provider/photo_provider.dart';
import 'package:json_app/screens/posts/provider/posts_provider.dart';
import 'package:json_app/screens/todos/provider/todo_provider.dart';
import 'package:json_app/screens/users/provider/user_provider.dart';
import 'package:json_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CommentProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AlbumsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UsersProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CountryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: screen_routes,
      ),
    ),
  );
}
