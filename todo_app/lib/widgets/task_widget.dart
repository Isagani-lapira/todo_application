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
          final task = value.tasks[index];
          return TaskTile(
            taskName: task.taskName,
            checkState: task.isDone,
            changeCheckState: () {
              value.updateTask(task);
            },
            onTextLongPress: () {
              print(index);
              value.removeTask(index);
            },
          );
        },
        itemCount: value.taskCount,
      );
    });
  }
}
