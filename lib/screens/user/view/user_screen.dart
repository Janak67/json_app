import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/user/provider/users_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerr;
  UserProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().userGetData();
  }

  @override
  Widget build(BuildContext context) {
    providerw = context.watch<UserProvider>();
    providerr = context.read<UserProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'User',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: providerw!.userModel == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Scrollbar(
                child: ListView.builder(
                  itemCount: providerw!.userModel!.dataModelList!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'ID :-  ${providerw!.userModel!.dataModelList![index].id}'),
                          Row(
                            children: [
                              Text(
                                'First Name :-  ',
                                style: TextStyle(color: black),
                              ),
                              Text(
                                '${providerw!.userModel!.dataModelList![index].first_name}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Last Name :-  ',
                                style: TextStyle(color: black),
                              ),
                              Text(
                                '${providerw!.userModel!.dataModelList![index].last_name}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Email :-  ',
                                style: TextStyle(color: black),
                              ),
                              Text(
                                '${providerw!.userModel!.dataModelList![index].email}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      subtitle: Image.network(
                        '${providerw!.userModel!.dataModelList![index].avatar}',
                        height: 150,
                        width: 100,
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
