// Import paket 'flutter/material.dart' untuk komponen UI Flutter.
// Import berbagai komponen custom dari file-file mereka masing-masing.
import 'package:flutter/material.dart';
import 'package:gojek/components/akses.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/menus.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/theme.dart';

// Tentukan sebuah StatelessWidget untuk halaman utama dari aplikasi.
class HomePage extends StatelessWidget {
  // Konstruktor untuk widget HomePage.
  const HomePage({super.key});

  // Metode build yang diperlukan oleh StatelessWidget, mengembalikan sebuah Widget.
  @override
  Widget build(BuildContext context) {
    // Widget Scaffold mewakili tata letak layar dengan struktur Scaffold.
    return Scaffold(
      // Atur warna latar belakang Scaffold menjadi putih.
      backgroundColor: Colors.white,
      // Tentukan app bar dengan properti kustom.
      appBar: AppBar(
          backgroundColor:
              green2, // Atur warna latar belakang app bar menjadi green2.
          elevation: 0, // Atur elevasi app bar menjadi 0 (tanpa bayangan).
          toolbarHeight: 71, // Atur tinggi toolbar app bar.
          title: const Header()), // Atur judul app bar menjadi widget Header.
      // Tentukan isi dari Scaffold dengan SingleChildScrollView yang berisi beberapa widget.
      body: const SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .start, // Aligment widget-child ke awal sumbu lintang.
        children: [
          Search(),
          Gopay(),
          Menus(),
          GoCLub(),
          Akses(),
          News()
        ], // Daftar widget-child.
      )),
    );
  }
}
