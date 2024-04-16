// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas Header adalah widget StatelessWidget yang digunakan untuk menampilkan header.
class Header extends StatelessWidget {
  // Konstruktor Header, didefinisikan sebagai konstruktor const.
  const Header({super.key});

  // Method build yang mengembalikan tampilan widget Header.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Container dengan konfigurasi padding, warna, dan bentuk.
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: green1, borderRadius: BorderRadius.circular(30)),
      // Child dari Container adalah Row yang menampilkan elemen-elemen dalam header.
      child: Row(children: [
        // Container untuk menampilkan tombol "Beranda".
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Text(
            'Beranda',
            style: semibold14.copyWith(color: green1),
          ),
        ),
        // Menggunakan spread operator (...) untuk menampilkan tombol-tombol "Promo", "Pesanan", dan "Chat".
        ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Center(
                  child: Text(
                    title,
                    style: semibold14,
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}
