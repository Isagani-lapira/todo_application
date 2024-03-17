import 'package:flutter/foundation.dart';
import 'task_model.dart';
import 'dart:collection';

class TaskModel extends ChangeNotifier {
  final List<TaskData> _tasks = [
    TaskData(taskName: 'I will eat now'),
    TaskData(taskName: 'Go to gym'),
    TaskData(taskName: 'read tutorials'),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<TaskData> get tasks => UnmodifiableListView(_tasks);

  void addTask(String newText) {
    final newTask = TaskData(taskName: newText);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(TaskData taskData) {
    taskData.toggleDone();
    notifyListeners();
  }
}
