// Import paket 'flutter/material.dart' untuk komponen UI Flutter.
// Import paket 'gojek/pages/home_page.dart' untuk mengimport widget HomePage.

import 'package:flutter/material.dart';
import 'package:gojek/pages/home_page.dart';

// Fungsi main, titik masuk dari aplikasi.
void main() {
  // Jalankan aplikasi dengan memanggil runApp() dengan widget MyApp.
  runApp(const MyApp());
}

// Kelas MyApp, sebuah StatelessWidget yang mewakili seluruh aplikasi.
class MyApp extends StatelessWidget {
  // Konstruktor untuk widget MyApp.
  const MyApp({super.key});

  // Metode build yang diperlukan oleh StatelessWidget, mengembalikan sebuah Widget.
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah sebuah widget yang menyediakan konfigurasi tingkat atas aplikasi.
    return const MaterialApp(
      // Judul yang ditampilkan di pengalih tugas sistem operasi.
      title: 'Gojek',
      // Nyalakan atau matikan banner debug di sudut kanan atas aplikasi.
      debugShowCheckedModeBanner: false,
      // Tetapkan nama rute awal untuk Navigator.
      home: HomePage(), // Tetapkan halaman utama aplikasi ke widget HomePage.
    );
  }
}
