import 'package:hive/hive.dart';

class ToDoDataBase {
  //List of ToDo Tasks
  List toDoList = [];

  //Reference the box
  final _myBox = Hive.box('myBox');

  //Runs this method if this is the 1st time ever, opening the app :D
  void createInitialData() {
    toDoList = [
      ["Get Familiar with the app", false],
      ["Mess Around", false],
      ["Enjoy :D", false],
    ];
  }

  //Load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
