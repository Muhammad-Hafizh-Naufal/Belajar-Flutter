import 'package:flutter/material.dart';
// import 'package:myapp/widgets/sample_container.dart';
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
        primarySwatch: Colors.blue,
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
      // membuat bagian header
      appBar: AppBar(
        title: Text('Belajar Widgets'),

        // Membuat widget tombol search
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              print('Test');
            },
          ),
        ],

        // Membuat widget tombol menu
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            print('Test');
          },
        ),
      ),
      // membuat bagian body
      body: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white, // warna background
          border: Border.all(color: Colors.black, width: 1), // tau bordr kan
          borderRadius: BorderRadius.circular(10), // untuk membuat sudut
          // shape: BoxShape.circle, // better make ini jika ingin bentuk lingkaran
          boxShadow: [
            BoxShadow(
                color: Colors.black, offset: Offset(3, 6), blurRadius: 10),
          ],
        ),
        child: Center(
          child: Text(
            'Avatar',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),

      // membuat tombol melayang
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
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
