import 'package:flutter/material.dart';
import 'package:todo_app/model/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTasks;
  const AddTaskScreen({super.key, required this.addTasks});

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(fontSize: 24.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Enter your task here...',
              ),
              onChanged: (newText) {
                taskName = newText;
              },
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  backgroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  addTasks(taskName);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
