import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void changeScreen() {
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(height: 35),
        Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: changeScreen,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
          child: const Text('Start Quiz!'),
        ),
      ],
    );
  }
}
