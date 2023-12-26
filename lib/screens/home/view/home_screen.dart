import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/utils/color_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          title: Text(
            'JSON PROJECT',
            style: TextStyle(color: white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'posts');
                },
                child: Text(
                  'Posts',
                  style: GoogleFonts.imFellFrenchCanonSc(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'comment');
                },
                child: Text(
                  'Comments',
                  style: GoogleFonts.imFellFrenchCanonSc(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'album');
                },
                child: Text(
                  'Albums',
                  style: GoogleFonts.imFellFrenchCanonSc(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'photo');
                },
                child: Text(
                  'Photos',
                  style: GoogleFonts.imFellFrenchCanonSc(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'todo');
                },
                child: Text(
                  'Todos',
                  style: GoogleFonts.imFellFrenchCanonSc(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
