import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/comments/provider/comment_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  CommentProvider? providerr;
  CommentProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<CommentProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerw = context.watch<CommentProvider>();
    providerr = context.read<CommentProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Comments',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 28, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.comment.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.comment[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.comment[index].name}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Text(
                '${providerw!.comment[index].body}',
                style: TextStyle(color: black, fontSize: 15),
              ),
            );
          },
        ),
      ),
    );
  }
}
