import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ngetes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? language; // Tambahkan variabel language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'),
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
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Button',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Kali ini mempelajari widget button'),
            ElevatedButton(
              child: Text('Ini ElevatedButton'),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              child: Text('Ini TextButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume',
              onPressed: () {},
            ),
            Text('Ini IconButton'),

            // Membuat DropdownButton yang benar
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  value: 'Dart',
                  child: Text('Dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'Flutter',
                  child: Text('Flutter'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
              ],
              value: language,
              hint: Text('Select Language'),
              onChanged: (value) {
                setState(() {
                  language = value; // Update pilihan
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
