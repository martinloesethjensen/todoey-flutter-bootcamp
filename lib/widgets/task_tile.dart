import 'package:flutter/material.dart';
import 'package:todoey_flutter_bootcamp/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({@required this.task, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: (task.description != null) ? Text(task.description) : null,
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
      onTap: () {},
      onLongPress: longPressCallback,
    );
  }
}
