import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  void answerQuestion() {
    print('Answer');
  }

  @override
  Widget build(BuildContext context) {
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
              children: [
                const Text(
                  'Hi',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text('Answer 1'),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text('Answer 2'),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text('Answer 3'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
