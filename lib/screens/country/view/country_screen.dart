import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/country/provider/country_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  CountryProvider? providerr;
  CountryProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<CountryProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<CountryProvider>();
    providerw = context.watch<CountryProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Country',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: providerw!.country.length,
            itemBuilder: (context, index) {
              return ListTile(
                // leading: Text(
                //   '${providerw!.country[index].countryNameModel!.common}.',
                //   style: TextStyle(color: black, fontSize: 15),
                // ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${providerw!.country[index].countryNameModel!.common}.',
                      style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${providerw!.country[index].countryNameModel!.official}',
                      style: TextStyle(color: black, fontSize: 22),
                    ),
                  ],
                ),
                // subtitle: Text(
                //   '${providerw!.country[index].countryNameModel!.nativeNameModel!.engModel!.official}',
                //   style: TextStyle(color: black, fontSize: 15),
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
