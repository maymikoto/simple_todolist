import 'package:flutter/material.dart';
import 'package:noteapp/theme/themedata.dart';
import 'package:noteapp/utility/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.green04,
      content: Container(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get new task
            TextField(
              controller: controller,
              style: Theme.of(context).textTheme.labelSmall,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppTheme.green02,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                hintText: "Add a new task",
                hintStyle: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Button(
                    text: "Cancel",
                    onPressed: onCancel,
                    color: Colors.green.shade400,
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Button(
                    text: "Save",
                    onPressed: onSave,
                    color: Colors.red.shade400,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
