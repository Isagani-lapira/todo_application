import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checkState = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'I will eat na',
        style: TextStyle(
          decorationThickness: 2.0,
          decoration: checkState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: checkState,
        isChanged: (value) {
          setState(() {
            checkState = value;
          });
        },
      ),
    );
    ;
  }
}

class TaskCheckBox extends StatelessWidget {
  final Function isChanged;
  final bool isChecked;
  const TaskCheckBox({
    super.key,
    required this.isChecked,
    required this.isChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (value) => isChanged(value),
    );
  }
}
