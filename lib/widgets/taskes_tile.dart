import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool check;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longPress;
  const TaskTile(
      this.taskTitle, this.check, this.checkboxCallback, this.longPress,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPress,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: check == true ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: check,
          onChanged: checkboxCallback,
        ));
  }
}