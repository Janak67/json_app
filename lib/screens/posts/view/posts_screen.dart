import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/posts/provider/posts_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  PostsProvider? providerr;
  PostsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PostsProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<PostsProvider>();
    providerw = context.watch<PostsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'Posts',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 28, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.post.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.post[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.post[index].title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Text(
                '${providerw!.post[index].body}',
                style: TextStyle(color: black, fontSize: 15),
              ),
            );
          },
        ),
      ),
    );
  }
}
