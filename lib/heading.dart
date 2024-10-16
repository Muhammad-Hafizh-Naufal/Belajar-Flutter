import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:866322961.
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
