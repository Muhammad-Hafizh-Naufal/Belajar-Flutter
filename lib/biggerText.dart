// // //  BiggerText StatefulWidget  ang akan memperbesar ukuran teks ketika tombol ditekan.
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
