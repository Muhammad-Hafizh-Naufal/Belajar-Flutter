import 'package:flutter/material.dart';

// Fungsi utama untuk menjalankan aplikasi
void main() {
  runApp(MyApp());
}

// Kelas MyApp yang merupakan StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menghilangkan banner debug di sudut kanan atas
      title: 'ngetes', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur warna tema aplikasi menjadi biru
      ),
      home: const MyHomePage(), // Menampilkan halaman utama
    );
  }
}

// MyHomePage merupakan StatefulWidget karena ada interaksi dengan input pengguna
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() =>
      _MyHomePageState(); // Membuat state dari MyHomePage
}

// State dari MyHomePage yang mengelola interaksi dan perubahan state
class _MyHomePageState extends State<MyHomePage> {
  bool agree = false; // Variabel untuk menyimpan status checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'), // Judul pada bagian AppBar
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search, // Ikon pencarian
              color: Colors.black, // Warna ikon
            ),
            onPressed: () {
              print('Test'); // Aksi saat tombol pencarian ditekan
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu, // Ikon menu
            color: Colors.black, // Warna ikon
          ),
          onPressed: () {
            print('Test'); // Aksi saat tombol menu ditekan
          },
        ),
      ),
      // Bagian body menggunakan ListTile untuk menampilkan checkbox
      body: ListTile(
        leading: Checkbox(
          value: agree, // Mengatur nilai checkbox berdasarkan variabel agree
          onChanged: (bool? value) {
            setState(() {
              agree = value!; // Mengupdate nilai agree saat checkbox diubah
            });
          },
        ),
        title: Text(
            'Saya menyetujui syarat dan ketentuan yang berlaku'), // Teks yang ditampilkan di samping checkbox
      ),
    );
  }
}
