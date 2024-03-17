import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/taskdata.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModel>(builder: (context, value, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: value.tasks[index].taskName,
            checkState: value.tasks[index].isDone,
            changeCheckState: (value) {},
          );
        },
        itemCount: value.taskCount,
      );
    });
  }
}
