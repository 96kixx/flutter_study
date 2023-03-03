import 'package:flutter/material.dart';
import 'package:flutter_basic_guide/widgets/answer.dart';
import 'package:flutter_basic_guide/widgets/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        const SizedBox(
          height: 10,
        ),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(
            selectHandler: answerQuestion,
            answerText: answer,
          );
        }).toList(),
      ],
    );
  }
}
