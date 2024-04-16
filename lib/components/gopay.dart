// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport package flutter_svg/svg.dart yang diperlukan untuk menampilkan gambar SVG.
import 'package:flutter_svg/svg.dart';
// Mengimport file icons.dart yang berisi daftar ikon-ikon GoPay.
import 'package:gojek/datas/icons.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas Gopay adalah widget StatelessWidget yang digunakan untuk menampilkan tampilan GoPay.
class Gopay extends StatelessWidget {
  // Konstruktor Gopay, didefinisikan sebagai konstruktor const.
  const Gopay({super.key});

  // Method build yang mengembalikan tampilan widget Gopay.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Padding dengan konfigurasi padding dan child-nya.
    return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        // Child dari Padding adalah Container yang memiliki tampilan GoPay.
        child: Container(
          height: 96,
          decoration: BoxDecoration(
              color: blue1, borderRadius: BorderRadius.circular(15)),
          // Child dari Container adalah Row yang menampilkan konten GoPay.
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding untuk menampilkan indikator status GoPay.
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container untuk menampilkan indikator status GoPay.
                    Container(
                      width: 2,
                      height: 8,
                      decoration: BoxDecoration(
                          color: const Color(0xFFBBBBBB),
                          borderRadius: BorderRadius.circular(1)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    // Container untuk menampilkan indikator status GoPay.
                    Container(
                      width: 2,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1)),
                    )
                  ],
                ),
              ),
              // Padding untuk menampilkan detail saldo dan riwayat GoPay.
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    // Container untuk menampilkan indikator status saldo GoPay.
                    Container(
                      height: 11,
                      width: 118,
                      decoration: const BoxDecoration(
                          color: Color(0xFF9CCDDB),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Container untuk menampilkan detail saldo dan riwayat GoPay.
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Gambar untuk menampilkan logo GoPay.
                          Image.asset(
                            'assets/images/gopay.png',
                            height: 14,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          // Text untuk menampilkan saldo GoPay.
                          Text(
                            'Rp12.379',
                            style: bold16.copyWith(color: dark1),
                          ),
                          // Text untuk menampilkan pesan "Klik & cek riwayat".
                          Text(
                            'Klik & cek riwayat',
                            style: semibold12_5.copyWith(color: green1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Menggunakan spread operator (...) untuk menampilkan ikon-ikon GoPay.
              ...gopayIcons.map((icon) => Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container untuk menampilkan ikon GoPay.
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            'assets/icons/${icon.icon}.svg',
                            color: blue1,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        // Text untuk menampilkan judul ikon GoPay.
                        Text(
                          icon.title,
                          style: semibold14.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
