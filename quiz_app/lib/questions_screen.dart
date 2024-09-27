import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      //you could have wrapped the column with center and set the main axis size to min, but this is an alternate way to do it.
      width: double.infinity, //the sizedbox takes up all the available width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            'Answer 1',
            () {},
          ),
          AnswerButton(
            'Answer 2',
            () {},
          ),
          AnswerButton(
            'Answer 3',
            () {},
          ),
          AnswerButton(
            'Answer 4',
            () {},
          ),
        ],
      ),
    );
  }
}
