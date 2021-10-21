import 'package:flutter/material.dart';
import 'taskes_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/tasks.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTile(task.name!, task.isDone, (bool? newValue) {
              taskdata.updateTask(task);
            }, () {
              taskdata.deleteTask(task);
            });
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}