import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const QuizButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 20,
        side: BorderSide(color: Colors.cyan.shade100, width: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.deepPurple.shade300,
      ),
      onPressed: onPressed,
      label: Text(label, style: TextStyle(fontSize: 32)),
    );
  }
}
