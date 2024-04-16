// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport package flutter_svg/svg.dart yang diperlukan untuk menampilkan gambar SVG.
import 'package:flutter_svg/svg.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas Akses adalah widget StatelessWidget yang digunakan untuk menampilkan akses cepat.
class Akses extends StatelessWidget {
  // Konstruktor Akses, didefinisikan sebagai konstruktor const.
  const Akses({super.key});

  // Method build yang mengembalikan tampilan widget Akses.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Padding dengan konfigurasi padding dan child-nya.
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 16, right: 15),
      // Child dari Padding adalah Column yang memiliki anak-anak (children) berisi tata letak vertikal.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menampilkan teks 'Akses cepat' dengan gaya teks dan ukuran tertentu.
          Text(
            'Akses cepat',
            style: bold18.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 10,
          ),
          // Widget Container yang mengelilingi daftar pintu masuk dan keluar motor.
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xFFE8E8E8))),
            // Child dari Container adalah Column yang memiliki anak-anak (children) berisi daftar pintu masuk dan keluar motor.
            child: Column(children: [
              // Menggunakan spread operator (...) untuk memasukkan daftar teks pintu masuk dan keluar motor ke dalam Row.
              ...[
                'Pintu masuk motor, MNC Land',
                'Pintu keluar motor, MNC Land'
              ].map((text) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(children: [
                      // Widget Container untuk menampilkan ikon pintu masuk dan keluar motor.
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            color: green2,
                            borderRadius: BorderRadius.circular(20)),
                        child: SvgPicture.asset(
                          'assets/icons/goride.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                          width: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      // Widget Flexible untuk menampilkan teks pintu masuk dan keluar motor.
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          text,
                          style: regular14.copyWith(color: dark1),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      // Widget SvgPicture untuk menampilkan ikon panah ke kiri.
                      SvgPicture.asset(
                        'assets/icons/left.svg',
                        height: 24,
                        colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                      )
                    ]),
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
