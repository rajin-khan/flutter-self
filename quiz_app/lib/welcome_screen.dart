import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(175, 255, 255, 255),
          ),
          const SizedBox(height: 35),
          Text(
            'Learn Flutter the Fun Way!',
            style: TextStyle(
              color: Colors.grey.shade100,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
            icon: const Icon(Icons.double_arrow_rounded),
            label: const Text('Start Quiz!'),
          ),
        ],
      ),
    );
  }
}
