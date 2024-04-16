// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport package flutter_svg/svg.dart yang diperlukan untuk menampilkan gambar SVG.
import 'package:flutter_svg/svg.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas GoCLub adalah widget StatelessWidget yang digunakan untuk menampilkan detail GoClub.
class GoCLub extends StatelessWidget {
  // Konstruktor GoCLub, didefinisikan sebagai konstruktor const.
  const GoCLub({super.key});

  // Method build yang mengembalikan tampilan widget GoCLub.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Padding dengan konfigurasi padding dan child-nya.
    return Padding(
      padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
      // Child dari Padding adalah Container yang memiliki tampilan detail GoClub.
      child: Container(
        height: 65,
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFEAF3F6), Colors.white]),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xFFE8E8E8))),
        // Child dari Container adalah Stack yang berisi tampilan utama dan ikon dots SVG.
        child: Stack(children: [
          // Menempatkan ikon dots di posisi yang ditentukan dalam Container.
          Positioned(
              left: 8,
              top: 4,
              bottom: 4,
              child: SvgPicture.asset('assets/icons/dots.svg')),
          // Container untuk menampilkan detail GoClub.
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Menampilkan ikon star SVG.
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  height: 40,
                ),
                const SizedBox(
                  width: 16,
                ),
                // Widget Flexible untuk menampilkan teks dan progress bar dengan lebar yang fleksibel.
                Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Menampilkan teks "117 XP lagi ada Harta Karun" dengan gaya tertentu.
                        Text(
                          '117 XP lagi ada Harta Karun',
                          style: semibold14.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // Container untuk menampilkan progress bar.
                        Container(
                            width: double.infinity,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            // Menampilkan LinearProgressIndicator dengan warna dan nilai tertentu.
                            child: LinearProgressIndicator(
                              backgroundColor: dark3,
                              color: green1,
                              value: .8,
                            ))
                      ],
                    )),
                const SizedBox(
                  width: 24,
                ),
                // Menampilkan ikon panah ke kiri SVG dengan warna tertentu.
                SvgPicture.asset(
                  'assets/icons/left.svg',
                  height: 24,
                  color: dark1,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
