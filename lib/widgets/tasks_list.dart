import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_bootcamp/models/task_data.dart';
import 'package:todoey_flutter_bootcamp/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              task: task,
              checkboxCallback: (_) => taskData.updateTask(task),
              longPressCallback: () => taskData.removeTask(task),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
