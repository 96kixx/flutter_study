import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;

  const Result({
    super.key,
    required this.resetHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('There is no more questions, Thanks!'),
        TextButton(
          onPressed: resetHandler,
          child: const Text('Go Back'),
        )
      ],
    );
  }
}
