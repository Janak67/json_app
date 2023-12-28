import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/photos/provider/photo_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  PhotoProvider? providerr;
  PhotoProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PhotoProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<PhotoProvider>();
    providerw = context.watch<PhotoProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'Photos',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: providerw!.photo.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  '${providerw!.photo[index].id}.',
                  style: TextStyle(color: black, fontSize: 15),
                ),
                title: Text(
                  '${providerw!.photo[index].title}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: black, fontSize: 20),
                ),
                subtitle: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '${providerw!.photo[index].thumbnailUrl}',
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
