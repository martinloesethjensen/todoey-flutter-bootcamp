import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_bootcamp/models/task_data.dart';
import 'package:todoey_flutter_bootcamp/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: TasksScreen(),
        theme: ThemeData(
          accentColor: Colors.lightBlueAccent,
        ),
      ),
      create: (BuildContext context) => TaskData(),
    );
  }
}
