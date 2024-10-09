import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Fungsi utama untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah widget utama yang menyediakan tema dan routing aplikasi
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menghilangkan banner debug di sudut kanan atas
      title: 'ngetes', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi dengan warna biru
      ),
      home:
          const MyHomePage(), // Menampilkan halaman utama (MyHomePage) saat aplikasi dijalankan
    );
  }
}

// MyHomePage merupakan StatefulWidget karena ada interaksi dengan input pengguna
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() =>
      _MyHomePageState(); // Menghubungkan ke state yang akan mengelola data dan UI
}

// State dari MyHomePage yang mengelola interaksi dan perubahan state
class _MyHomePageState extends State<MyHomePage> {
  bool lightOn =
      false; // Variabel untuk menyimpan status Switch (nyala atau mati)

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman seperti AppBar dan body
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Widgets'), // Judul pada bagian AppBar
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search, // Icon untuk tombol pencarian
              color: Colors.black, // Warna hitam untuk icon
            ),
            onPressed: () {
              print(
                  'Test'); // Aksi ketika tombol search ditekan, hanya menampilkan teks di console
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu, // Icon untuk tombol menu
            color: Colors.black, // Warna hitam untuk icon menu
          ),
          onPressed: () {
            print(
                'Test'); // Aksi ketika tombol menu ditekan, hanya menampilkan teks di console
          },
        ),
      ),
      // Bagian body menggunakan widget Switch untuk menyalakan dan mematikan lampu (boolean lightOn)
      body: Switch(
        value:
            lightOn, // Menentukan apakah Switch dalam kondisi menyala atau tidak (true/false)
        onChanged: (bool value) {
          // Aksi yang terjadi ketika Switch dinyalakan atau dimatikan
          setState(() {
            lightOn = value; // Memperbarui status Switch dengan nilai yang baru
          });

          // Menampilkan pesan di bagian bawah layar menggunakan SnackBar setiap kali Switch berubah
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn
                  ? 'Light On'
                  : 'Light Off'), // Pesan yang ditampilkan, tergantung status Switch
              duration:
                  Duration(seconds: 1), // Durasi SnackBar muncul selama 1 detik
            ),
          );
        },
      ),
    );
  }
}
