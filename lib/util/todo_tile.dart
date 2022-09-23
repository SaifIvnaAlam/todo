import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget {
  ToDoTile(
      {Key? key,
      required this.taskName,
      required this.taskCompleted,
      required this.onchanged})
      : super(key: key);



  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;


  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 25,
        right: 25,
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
                value: widget.taskCompleted,
                onChanged: widget.onchanged,
                activeColor: Colors.black),
            Text(widget.taskName,
                style: TextStyle(
                  decoration: if (taskCompleted == true) {
                    
                  } else {
                  }
                ))
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
