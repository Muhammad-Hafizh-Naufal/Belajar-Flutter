import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Fungsi utama untuk menjalankan aplikasi
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

// MyHomePage merupakan StatefulWidget karena ada interaksi dengan input penggunas
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// State dari MyHomePage yang mengelola interaksi dan perubahan state
class _MyHomePageState extends State<MyHomePage> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'), // Judul pada bagian AppBar
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
      // Bagian body menggunakan Padding agar konten tidak terlalu menempel dengan tepi layar
      body: Padding(
        padding:
            EdgeInsets.all(16), // Memberikan padding 16 di seluruh sisi body
        child: Column(
          children: [
            // Menampilkan teks "Input Widgets" sebagai header bagian input
            Text(
              'Input Widgets',
              style: TextStyle(fontSize: 20), // Ukuran font teks header
            ),
            // TextField digunakan untuk input teks dari pengguna
            TextField(
              decoration: InputDecoration(
                hintText: 'Write Your Name here..', // Petunjuk input
                labelText: 'Your Name', // Label input
              ),
              onChanged: (String value) {
                // Fungsi yang dipanggil saat pengguna mengetikkan sesuatu
                setState(() {
                  _name =
                      value; // Memperbarui variabel _name dengan input dari pengguna
                });
              },
            ),
            SizedBox(height: 20), // Jarak antara TextField dengan tombol
            ElevatedButton(
              onPressed: () {
                // Fungsi saat tombol Submit ditekan
                showDialog(
                    context: context,
                    builder: (context) {
                      // Menampilkan dialog dengan pesan
                      return AlertDialog(
                        content: Text(
                            'Hello $_name'), // Menampilkan nama yang diinputkan
                      );
                    });
              },
              child: Text('Submit'), // Teks pada tombol
            ),
          ],
        ),
      ),
    );
  }
}
