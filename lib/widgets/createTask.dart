import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/task.dart';

class CreateTaskForm extends StatefulWidget {
  const CreateTaskForm({super.key});

  // const CreateTaskForm({Key? key}) : super(key: key);
  // var items = <Task>[];

  @override
  State<CreateTaskForm> createState() => _CreateTaskFormState();
}

class _CreateTaskFormState extends State<CreateTaskForm> {
  // var newTaskCtrl = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: const Text('Cadastrar tarefa'),
      content: SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      labelText: 'Nome',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 16),
                      labelText: 'Detalhes',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Prazo de entrega',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )),
      actions: <Widget>[
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Salvar'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancelar',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
