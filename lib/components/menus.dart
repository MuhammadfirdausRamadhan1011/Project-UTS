// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport package flutter_svg/svg.dart yang diperlukan untuk menampilkan gambar SVG.
import 'package:flutter_svg/svg.dart';
// Mengimport file icons.dart yang berisi daftar ikon-ikon menu.
import 'package:gojek/datas/icons.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas Menus adalah widget StatelessWidget yang digunakan untuk menampilkan menu-menu.
class Menus extends StatelessWidget {
  // Konstruktor Menus, didefinisikan sebagai konstruktor const.
  const Menus({super.key});

  // Method build yang mengembalikan tampilan widget Menus.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Padding dengan konfigurasi padding dan child-nya.
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        // Child dari SizedBox adalah GridView.count yang menampilkan menu-menu dalam grid.
        child: GridView.count(
          crossAxisCount: 4, // Jumlah kolom dalam grid adalah 4.
          mainAxisSpacing: 8, // Spasi utama antara item-grid.
          children: [
            // Menggunakan spread operator (...) untuk menampilkan menu-menu dari list menuIcons.
            ...menuIcons.map(
              (icon) => Column(
                children: [
                  // Container untuk menampilkan ikon menu.
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: icon.icon == 'goclub' ? Colors.white : icon.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      color: icon.icon == 'goclub'
                          ? icon.color
                          : icon.icon == 'other'
                              ? dark2
                              : Colors.white,
                      width: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  // Text untuk menampilkan judul menu.
                  Text(
                    icon.title,
                    style: regular12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
