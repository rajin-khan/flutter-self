import 'package:flutter/material.dart';

import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(255, 236, 179, 1),
          Color.fromRGBO(219, 173, 57, 1),
        ),
      ),
    ),
  );
}
