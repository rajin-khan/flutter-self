import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.onTap, {super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          backgroundColor: const Color.fromRGBO(38, 50, 56, 1),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 12,
        ),
      ),
    );
  }
}
