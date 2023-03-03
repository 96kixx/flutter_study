import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    super.key,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(questionText,
        style: const TextStyle(
          fontSize: 25,
        ));
  }
}
