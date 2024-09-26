import 'package:flutter/material.dart';

import 'package:dice_roller/dice_roll.dart';
//import 'package:dice_roller/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  // const GradientContainer.amber({super.key}) //alt constructor function syntax, so we can call GradientContainer.amber(); to call this swatch.
  //     : color1 = const Color.fromARGB(255, 253, 193, 13),
  //       color2 = const Color.fromARGB(255, 255, 211, 81);

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
