import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter_bootcamp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Update SDK"),
    Task(name: "Relax"),
    Task(name: "Learn Flutter", description: "Should be super fun"),
  ];

  // Immutable [List]
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void updateTaskAt(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
