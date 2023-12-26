import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/utils/color_list.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'Albums',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 28, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {},
        ),
      ),
    );
  }
}
