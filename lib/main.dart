import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Fungsi utama untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'ngetes', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur warna tema aplikasi
      ),
      home: const MyHomePage(), // Menampilkan halaman utama
    );
  }
}

// MyHomePage merupakan StatefulWidget karena ada interaksi dengan input pengguna
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// State dari MyHomePage yang mengelola interaksi dan perubahan state
class _MyHomePageState extends State<MyHomePage> {
  String? language; // Variabel untuk menyimpan pilihan bahasa

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
              print('Test'); // Aksi saat tombol pencarian ditekan
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            print('Test'); // Aksi saat tombol menu ditekan
          },
        ),
      ),
      // Bagian body menggunakan Padding agar konten tidak terlalu menempel dengan tepi layar
      body: Column(
        mainAxisSize:
            MainAxisSize.min, // Menyesuaikan ukuran kolom sesuai kebutuhan
        children: [
          ListTile(
            title: Text('Dart'), // Menambahkan judul untuk Radio button
            leading: Radio(
              value: 'Dart', // Nilai yang akan disimpan saat dipilih
              groupValue: language, // Nilai saat ini dari group radio
              onChanged: (String? value) {
                setState(() {
                  language = value; // Mengupdate nilai language saat dipilih
                  showSnackBar(); // Menampilkan SnackBar
                });
              },
            ),
          ),
          ListTile(
            title: Text('Kotlin'), // Menambahkan judul untuk Radio button
            leading: Radio(
              value: 'Kotlin', // Nilai yang akan disimpan saat dipilih
              groupValue: language, // Nilai saat ini dari group radio
              onChanged: (String? value) {
                setState(() {
                  language = value; // Mengupdate nilai language saat dipilih
                  showSnackBar(); // Menampilkan SnackBar
                });
              },
            ),
          ),
          ListTile(
            title: Text('Swift'), // Menambahkan judul untuk Radio button
            leading: Radio(
              value: 'Swift', // Nilai yang akan disimpan saat dipilih
              groupValue: language, // Nilai saat ini dari group radio
              onChanged: (String? value) {
                setState(() {
                  language = value; // Mengupdate nilai language saat dipilih
                  showSnackBar(); // Menampilkan SnackBar
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar() {
    // Menampilkan SnackBar dengan pesan pilihan bahasa
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(language ??
            'No Language Selected'), // Menampilkan pesan sesuai pilihan
        duration: Duration(seconds: 1), // Durasi SnackBar muncul selama 1 detik
      ),
    );
  }
}
