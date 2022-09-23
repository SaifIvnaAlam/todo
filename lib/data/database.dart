import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('MyBox');
  void createInitialData() {
    toDoList = [
      [
        "Do Some Things",
        false,
      ],
      [
        "Do Some Things",
        false,
      ],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void upDateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
