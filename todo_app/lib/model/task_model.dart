class TaskData {
  final String taskName;
  bool isDone;

  TaskData({required this.taskName, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
