import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update data
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
