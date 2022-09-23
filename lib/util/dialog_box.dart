import 'package:flutter/material.dart';
import 'package:todo/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancle;

  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff222228),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 12,
                ),
                MyButton(text: 'Cancle', onPressed: onCancle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
