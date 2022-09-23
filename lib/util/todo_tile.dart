import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatefulWidget {
  ToDoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onchanged,
    required this.deleteFunction,
  }) : super(key: key);

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;
  Function(BuildContext)? deleteFunction;
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
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: widget.deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
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
                      color: Colors.white,
                      decoration: widget.taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none))
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0xff222228),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
