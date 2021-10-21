import 'package:flutter/cupertino.dart';
import 'dart:collection';

class Task {
  final String? name;
  bool isDone;
  Task({this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}

class TasksList extends Task with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy orange'),
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addData(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}