import 'package:flutter/material.dart';
import 'package:flutter_basic_guide/screens/quiz.dart';
import 'package:flutter_basic_guide/screens/result.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var questionIndex = 0;

  void answerQuestion() {
    if (questionIndex > 2) {
      return;
    } else {
      setState(() {
        questionIndex = questionIndex + 1;
      });
    }
  }

  void resetQuestion() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Rabbit', 'Snake', 'Cat', 'Dog'],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answer': ['Pizza', 'Hambuger', 'Sushi', 'Bread'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter'),
          ),
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                questionIndex > 2
                    ? Result(
                        resetHandler: resetQuestion,
                      )
                    : Quiz(
                        questions: questions,
                        questionIndex: questionIndex,
                        answerQuestion: answerQuestion,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
