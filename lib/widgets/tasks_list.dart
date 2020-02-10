import 'package:flutter/material.dart';
import 'package:todoey_flutter_bootcamp/models/task.dart';
import 'package:todoey_flutter_bootcamp/screens/tasks_screen.dart';
import 'package:todoey_flutter_bootcamp/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({@required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget.tasks[index],
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
