import 'package:flutter/material.dart'; // Mengimpor paket Material untuk menggunakan widget dan tema Material Design.

void main() {
  runApp(
      MyApp()); // Fungsi utama untuk menjalankan aplikasi dengan MyApp sebagai root widget.
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug di aplikasi.
      title: 'ngetes', // Judul aplikasi.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Menentukan warna tema utama aplikasi.
      ),
      home:
          const MyHomePage(), // Menetapkan MyHomePage sebagai halaman utama aplikasi.
    );
  }
}

// MyHomePage merupakan StatefulWidget karena ada interaksi dengan input pengguna.
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key})
      : super(key: key); // Konstruktor untuk MyHomePage.

  @override
  _MyHomePageState createState() =>
      _MyHomePageState(); // Mengaitkan dengan state-nya.
}

// State dari MyHomePage yang mengelola interaksi dan perubahan state.
class _MyHomePageState extends State<MyHomePage> {
  bool agree = false; // Variabel untuk menyimpan status checkbox.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'), // Judul pada bagian AppBar.
        actions: <Widget>[
          // Widget aksi di bagian AppBar.
          IconButton(
            icon: Icon(
              Icons.search, // Ikon untuk tombol pencarian.
              color: Colors.black, // Warna ikon.
            ),
            onPressed: () {
              // Fungsi saat tombol ditekan.
              print('Test'); // Mengeluarkan 'Test' ke konsol.
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu, // Ikon untuk tombol menu.
            color: Colors.black, // Warna ikon.
          ),
          onPressed: () {
            // Fungsi saat tombol ditekan.
            print('Test'); // Mengeluarkan 'Test' ke konsol.
          },
        ),
      ),
      body: Center(
        // Mengatur isi body untuk berada di tengah layar.
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Mengatur alignment kolom ke tengah.
          children: [
            Text(
                'Ini mengunakan Url'), // Teks untuk menjelaskan gambar yang diambil dari URL.
            Image.network(
              // Widget untuk menampilkan gambar dari URL.
              'https://c4.wallpaperflare.com/wallpaper/108/140/869/digital-digital-art-artwork-fantasy-art-drawing-hd-wallpaper-thumb.jpg',
              width: 200, // Menentukan lebar gambar.
            ),
            SizedBox(height: 20), // Menambahkan jarak vertikal antara elemen.
            Text(
                'Ini mengunakan lokal'), // Teks untuk menjelaskan gambar yang diambil dari aset lokal.
            Image.asset(
              // Widget untuk menampilkan gambar dari aset lokal.
              'images/black-white-background 1.jpg',
              width: 200, // Menentukan lebar gambar.
            ),
          ],
        ),
      ),
    );
  }
}
