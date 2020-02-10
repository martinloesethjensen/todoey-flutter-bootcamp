import 'package:flutter/material.dart';
import 'package:todoey_flutter_bootcamp/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen.named(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    String _addTaskName, _addTaskDescription;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Task name", ),
              autofocus: true,
              onChanged: (value) => _addTaskName = value,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Task description"),
              onChanged: (value) => _addTaskDescription = value,
            ),
            FlatButton(
              child: Text("Add", style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: () {
                var newTask = Task(name: _addTaskName, description: _addTaskDescription);
                addTaskCallback(newTask);
              },
            ),
          ],
        ),
      ),
    );
  }
}
