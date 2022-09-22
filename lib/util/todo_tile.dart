import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;

  ToDoTile(
      {Key? key,
      required this.taskName,
      required this.taskCompleted,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onchanged),
            Text(taskName)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
