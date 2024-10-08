import 'package:flutter/material.dart';
import 'package:myapp/widgets/sample_container.dart';
// import './heading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // untuk menghilangkan banner debug
      title: 'ngetes',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'),
      ),
      body: SampleContainer(),
    );
  }
}






















// // Heading StatelessWidget
// class Heading extends StatelessWidget {
//   final String text; // state text bersifat final

//   const Heading({Key? key, required this.text})
//       : super(key: key); // lalu state text masuk ke constructor

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 24.0,
//         fontWeight: FontWeight.bold,
//         backgroundColor: Colors.amber,
//       ),
//     );
//   }
// }

// //  BiggerText StatefulWidget  yang akan memperbesar ukuran teks ketika tombol ditekan.
// class BiggerText extends StatefulWidget {
//   final String text;

//   const BiggerText({Key? key, required this.text}) : super(key: key);

//   @override
//   _BiggerTextState createState() => _BiggerTextState();
// }

// class _BiggerTextState extends State<BiggerText> {
//   double _textSize = 16.0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(widget.text, style: TextStyle(fontSize: _textSize)),
//         ElevatedButton(
//           child: const Text("Perbesar"),
//           onPressed: () {
//             setState(() {
//               _textSize = 32.0;
//             });
//           },
//         )
//       ],
//     );
//   }
// }
