import 'package:flutter/material.dart';
import 'package:todaytodo_app/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task>? tasks = [

  ];

  void addTask(String newTaskTitle){
    tasks?.add(Task(name: newTaskTitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks?.remove(task);
    notifyListeners();
  }
}
