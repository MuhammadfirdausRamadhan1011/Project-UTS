// Import paket 'flutter/material.dart' untuk mengakses komponen Desain Material Flutter.
import 'package:flutter/material.dart';

// Tentukan beberapa konstanta warna yang digunakan dalam aplikasi.

Color green1 = const Color(0xFF097210); // Warna hijau yang lebih gelap.
Color green2 = const Color(0xFF00880F); // Warna hijau yang lebih terang.

Color dark1 = const Color(0xFF1C1C1C); // Warna gelap primer.
Color dark2 = const Color(0xFF4A4A4A); // Warna gelap sekunder.
Color dark3 =
    const Color(0xFF999798); // Warna gelap untuk teks yang lebih terang.
Color dark4 = const Color(
    0xFFEDEDED); // Warna gelap untuk latar belakang yang lebih terang.

Color blue1 = const Color(0xFF0281A0); // Warna biru yang lebih gelap.
Color blue2 = const Color(0xFF00AED5); // Warna biru yang lebih terang.
Color blue3 = const Color(0xFF38BBDA); // Warna biru untuk aksen.

Color red =
    const Color(0xFFED2739); // Warna merah untuk sorotan atau peringatan.
Color purple = const Color(0xFF87027B); // Warna ungu untuk elemen spesifik.

// Tentukan beberapa gaya teks yang digunakan dalam aplikasi.

TextStyle regular12_5 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontSize: 12.5); // Gaya teks reguler dengan ukuran font 12.5.
TextStyle regular14 = regular12_5.copyWith(
    fontSize: 14); // Gaya teks reguler dengan ukuran font 14.

TextStyle semibold12_5 = regular12_5.copyWith(
    fontWeight:
        FontWeight.w600); // Gaya teks semi-tebal dengan ukuran font 12.5.
TextStyle semibold14 = semibold12_5.copyWith(
    fontSize: 14,
    letterSpacing:
        0.1); // Gaya teks semi-tebal dengan ukuran font 14 dan penyesuaian jarak antar karakter.

TextStyle bold16 = regular12_5.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    letterSpacing:
        0.1); // Gaya teks tebal dengan ukuran font 16 dan penyesuaian jarak antar karakter.
TextStyle bold18 = bold16.copyWith(
    fontSize: 18,
    letterSpacing:
        -0.5); // Gaya teks tebal dengan ukuran font 18 dan penyesuaian jarak antar karakter yang berbeda.