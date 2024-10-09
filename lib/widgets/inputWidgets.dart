// class _FirstScreenState extends State<FirstScreen> {
//   TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 hintText: 'Write your name here...',
//                 labelText: 'Your Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               child: Text('Submit'),
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: Text('Hello, ${_controller.text}'),
//                       );
//                     });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
