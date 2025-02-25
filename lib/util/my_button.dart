import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.black87,
      child: Text(
        text,
        style: GoogleFonts.playfairDisplay(
          // Replace 'lato' with any Google Font name
          color: Colors.white, // White text color
          fontSize: 16, // Optional: adjust font size
          fontWeight: FontWeight.w500, // Optional: adjust font weight
        ),
      ),
    );
  }
}
