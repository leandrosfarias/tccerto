import 'dart:convert';

// @dart=2.12
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tccerto/Models/task.dart';
import 'package:tccerto/widgets/createTask.dart';
import 'package:tccerto/widgets/todoList.dart';

import '../widgets/newTask.dart';

class Home extends StatefulWidget {
  var items = <Task>[];

  Home({super.key}) {
    items = [];
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var newTaskCtrl = TextEditingController();

  _HomeState() {
    // load();
  }

  // void add() {
  //   if (newTaskCtrl.text.isEmpty) return;
  //   setState(() {
  //     widget.items.add(
  //         Task(title: newTaskCtrl.text, done: false, deadline: DateTime.now()));
  //     newTaskCtrl.clear();
  //     save();
  //   });
  // }
  //
  // void remove(int index) {
  //   setState(() {
  //     widget.items.removeAt(index);
  //     save();
  //   });
  // }
  //
  // Future load() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   var data = prefs.getString('data');
  //
  //   if (data != null) {
  //     Iterable decoded = jsonDecode(data);
  //     List<Task> result = decoded.map((e) => Task.fromJson(e)).toList();
  //     setState(() {
  //       widget.items = result;
  //     });
  //   }
  // }
  //
  // save() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('data', jsonEncode(widget.items));
  // }
  //
  // void _showModal(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const CreateTaskForm();
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          actions: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          // elevation: 0,
          // brightness: Brightness.dark,
        ),
        body: Center(child: Text("CORPO"))

        // floatingActionButton: FloatingActionButton(
        //   onPressed: add,
        //   backgroundColor: Colors.blue,
        //   child: const Icon(Icons.add),
        // ),

        );
  }
}
