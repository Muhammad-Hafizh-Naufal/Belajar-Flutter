import 'package:flutter/material.dart';
// import './heading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ngetes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Scaffold(
        body: Center(
          child: Heading(text: 'Sunda Empire'),
        ),
      ),
    );
  }
}

// Heading
class Heading extends StatelessWidget {
  final String text;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:866322961.
  const Heading({Key? key, required this.text}) : super(key: key);

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
