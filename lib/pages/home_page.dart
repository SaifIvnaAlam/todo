import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Go to Class", false],
    ["Make Tutorial", false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text('TO DO'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][0],
              onchanged: (_) {});
        },
      ),
    );
  }
}
