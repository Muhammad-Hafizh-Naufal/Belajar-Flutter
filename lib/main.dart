// Mengimpor package yang diperlukan
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Fungsi main adalah entry point aplikasi Flutter
void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget root MyApp
}

// MyApp adalah widget root yang mengatur tema dan halaman awal aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: 'ngetes', // Judul aplikasi
      theme: ThemeData(
          primarySwatch: Colors.blue, // Warna tema utama
          // Mengatur tema teks default menggunakan Google Font
          textTheme: GoogleFonts.oswaldTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const MyHomePage(), // Halaman utama aplikasi
    );
  }
}

// MyHomePage adalah widget yang mewakili halaman utama aplikasi
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// _MyHomePageState mengelola state dan UI untuk MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  bool agree = false; // State untuk checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Judul AppBar menggunakan Google Font Lato
        title: Text('Belajar Widgets', style: GoogleFonts.lato()),
        actions: <Widget>[
          // Tombol pencarian di AppBar
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              print('Search pressed'); // Aksi ketika tombol pencarian ditekan
            },
          ),
        ],
        // Tombol menu di sisi kiri AppBar
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            print('Menu pressed'); // Aksi ketika tombol menu ditekan
          },
        ),
      ),
      // Body aplikasi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Teks selamat datang menggunakan Google Font
            Text('Welcome to Flutter!',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20), // Spasi vertikal
            // Checkbox dengan teks menggunakan Google Font Lato

            const SizedBox(height: 20), // Spasi vertikal
            // Tombol dengan teks menggunakan Google Font Poppins
          ],
        ),
      ),
    );
  }
}
