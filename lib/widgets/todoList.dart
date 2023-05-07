import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tccerto/Models/task.dart';

class TodoList extends StatefulWidget {
  // const TodoList({super.key});
  var items = <Task>[];

  TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];
            return Dismissible(
                key: Key(item.title),
                background: Container(
                  color: Colors.red.withOpacity(0.2),
                  child: const Text('data'),
                ),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  // define a largura como metade da largura do dispositivo
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                        width: 1,
                      )),
                  child: CheckboxListTile(
                    tileColor: Colors.white,
                    title: Text(item.title),
                    value: item.done,
                    onChanged: (value) {
                      setState(() {
                        item.done = value!;
                      });
                    },
                  ),
                ));
          }),
    );
  }
}
