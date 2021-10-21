import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/tasks.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: textController,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TasksList>(context, listen: false)
                    .addData(textController.text);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}