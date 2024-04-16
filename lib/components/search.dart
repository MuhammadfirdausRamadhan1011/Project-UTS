// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport package flutter_svg/svg.dart yang diperlukan untuk menampilkan gambar SVG.
import 'package:flutter_svg/svg.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas Search adalah widget StatelessWidget yang digunakan untuk menampilkan kotak pencarian.
class Search extends StatelessWidget {
  // Konstruktor Search, didefinisikan sebagai konstruktor const.
  const Search({super.key});

  // Method build yang mengembalikan tampilan widget Search.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Padding dengan konfigurasi padding dan child-nya.
    return Padding(
      padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
      // Child dari Padding adalah Row yang menampilkan elemen-elemen pencarian.
      child: Row(
        children: [
          // Flexible untuk membuat kotak pencarian dapat menyesuaikan ukuran dengan lebar layar.
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFE8E8E8))),
              // Child dari Container adalah Row yang menampilkan elemen pencarian.
              child: Row(
                children: [
                  // Gambar ikon pencarian.
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: dark1,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // Text untuk menampilkan placeholder teks dalam kotak pencarian.
                  Text(
                    'Cari layanan, makanan, & tujuan',
                    style: regular14.copyWith(color: dark3),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          // Container untuk menampilkan gambar avatar pengguna.
          SizedBox(
              width: 35,
              height: 35,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 / 2)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/avatar.png'),
                  ),
                  // Menambahkan ikon GoClub di sudut kanan bawah gambar avatar.
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                            color: const Color(0xFFD1E7EE)),
                        clipBehavior: Clip.hardEdge,
                        child: SvgPicture.asset(
                          'assets/icons/goclub.svg',
                          color: blue3,
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
