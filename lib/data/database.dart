import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // refrence out box
  final _myBox = Hive.box('mybox');

  // run this method if this the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do Excercise", false],
    ];
  }

  // Load Data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
