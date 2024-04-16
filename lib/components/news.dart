// Mengimport package flutter/material.dart yang diperlukan untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
// Mengimport file news.dart yang berisi daftar berita.
import 'package:gojek/datas/news.dart';
// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Kelas News adalah widget StatelessWidget yang digunakan untuk menampilkan berita.
class News extends StatelessWidget {
  // Konstruktor News, didefinisikan sebagai konstruktor const.
  const News({super.key});

  // Method build yang mengembalikan tampilan widget News.
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Column yang menampilkan konten berita.
    return Column(
      children: [
        // Padding untuk menyusun elemen-elemen di atas daftar berita.
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar untuk menampilkan logo GoPayLater.
              Image.asset(
                'assets/images/gopaylater.png',
                height: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              // Judul berita.
              Text(
                'Lebih hemat pake GoPayLater 🤩',
                style: bold16.copyWith(color: dark1),
              ),
              const SizedBox(
                height: 8,
              ),
              // Deskripsi berita.
              Text(
                'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        // Menggunakan spread operator (...) untuk menampilkan daftar berita.
        ...news.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: dark4)),
                child: Column(
                  children: [
                    // Gambar untuk menampilkan gambar berita.
                    Image.asset('assets/images/${item.image}'),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Judul berita.
                          Text(
                            item.title,
                            style: bold16.copyWith(color: dark1),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // Deskripsi berita.
                          Text(
                            item.description,
                            style: regular14.copyWith(color: dark2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
