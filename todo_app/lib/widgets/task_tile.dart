import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool checkState;
  final Function changeCheckState;
  final Function? onTextLongPress;
  const TaskTile({
    super.key,
    required this.taskName,
    required this.checkState,
    required this.changeCheckState,
    this.onTextLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => onTextLongPress!(),
      title: Text(
        taskName,
        style: TextStyle(
          decorationThickness: 2.0,
          decoration: checkState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkState,
        onChanged: (value) {
          changeCheckState();
        },
      ),
    );
  }
}
