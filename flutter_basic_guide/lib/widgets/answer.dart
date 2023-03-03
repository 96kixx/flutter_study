import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer({
    super.key,
    required this.selectHandler,
    required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: const ButtonStyle(),
        child: Text(answerText),
      ),
    );
  }
}
