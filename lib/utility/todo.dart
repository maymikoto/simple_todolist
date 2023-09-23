import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/theme/themedata.dart';

class MyTodo extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  MyTodo({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete_forever,
                backgroundColor: Colors.red.shade400,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20)))
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: AppTheme.green03,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              // checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: AppTheme.green01,
                shape: CircleBorder(),
              ),

              // task name (wrapped with Expanded)
              Expanded(
                child: Text(
                  taskName,
                  style: GoogleFonts.ibmPlexSansThai(
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.green01),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
