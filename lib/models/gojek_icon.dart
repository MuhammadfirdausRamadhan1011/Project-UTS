// Mendukung pembangunan aplikasi Flutter.
import 'package:flutter/material.dart';

// Mendefinisikan sebuah class bernama GojekIcon.
class GojekIcon {
  // Membuat variabel string icon untuk menyimpan nama ikon.
  final String icon;
  // Membuat variabel string title untuk menyimpan judul ikon.
  final String title;
  // Membuat variabel color (warna) yang dapat bersifat opsional.
  final Color? color;

  // Membuat constructor (konstruktor) untuk class GojekIcon.
  // Constructor ini menerima parameter wajib 'icon' dan 'title',
  // serta parameter opsional 'color'.
  GojekIcon({required this.icon, required this.title, this.color});
}
