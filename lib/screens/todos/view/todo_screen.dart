import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_app/screens/todos/provider/todo_provider.dart';
import 'package:json_app/utils/color_list.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TodoProvider? providerr;
  TodoProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<TodoProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<TodoProvider>();
    providerw = context.watch<TodoProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'Todos',
            style: GoogleFonts.imFellFrenchCanonSc(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: providerw!.todo.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  '${providerw!.todo[index].id}.',
                  style: TextStyle(color: black, fontSize: 15),
                ),
                title: Text(
                  '${providerw!.todo[index].title}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: black, fontSize: 20),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
