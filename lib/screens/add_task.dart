import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaytodo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen({required this.addTaskCallBack, super.key});
  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400], foregroundColor: Colors.white),
          child: const Text('Add'),
        ),
      ]),
    );
  }
}
