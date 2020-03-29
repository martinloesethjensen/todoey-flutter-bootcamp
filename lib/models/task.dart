import 'package:flutter/cupertino.dart';

class Task {
  final String name, description;
  bool isDone = false;

  Task({@required this.name, this.description, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
