import 'package:flutter/material.dart';

import 'package:dice_roller/styled_text.dart';

const startAlignment =  Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration:  const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(255, 236, 179, 1),
            Color.fromRGBO(219, 173, 57, 1),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}
