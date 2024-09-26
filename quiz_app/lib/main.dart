import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.blueGrey,
          Colors.blueGrey.shade100,
        ),
      ),
    ),
  );
}
