import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/users/provider/user_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  UsersProvider? providerr;
  UsersProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UsersProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerw = context.watch<UsersProvider>();
    providerr = context.read<UsersProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Users',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.user.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.user[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.user[index].companyModel!.name}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Text(
                '${providerw!.user[index].phone}',
                style: TextStyle(color: black, fontSize: 15),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'lat:${providerw!.user[index].addressModel!.geoModel!.lat}'),
                  Text(
                      'lng:${providerw!.user[index].addressModel!.geoModel!.lng}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
