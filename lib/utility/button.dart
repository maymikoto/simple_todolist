import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  Button({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: 0,
      minWidth: 40,
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
