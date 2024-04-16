// Mengimport model GojekIcon yang diperlukan dari file gojek_icon.dart.
import 'package:gojek/models/gojek_icon.dart';

// Mengimport tema yang diperlukan dari file theme.dart.
import 'package:gojek/theme.dart';

// Mendefinisikan list gopayIcons yang berisi daftar ikon-ikon untuk fitur GoPay.
List<GojekIcon> gopayIcons = [
  // Menambahkan objek GojekIcon untuk fitur Bayar tanpa warna spesifik.
  GojekIcon(icon: 'pay', title: 'Bayar'),
  // Menambahkan objek GojekIcon untuk fitur Top Up tanpa warna spesifik.
  GojekIcon(icon: 'topup', title: 'Top Up'),
  // Menambahkan objek GojekIcon untuk fitur Eksplor tanpa warna spesifik.
  GojekIcon(icon: 'explore', title: 'Eksplor')
];

// Mendefinisikan list menuIcons yang berisi daftar ikon-ikon untuk menu utama.
List<GojekIcon> menuIcons = [
  // Menambahkan objek GojekIcon untuk fitur GoRide dengan warna hijau.
  GojekIcon(icon: 'goride', title: 'GoRide', color: green2),
  // Menambahkan objek GojekIcon untuk fitur GoCar dengan warna hijau.
  GojekIcon(icon: 'gocar', title: 'GoCar', color: green2),
  // Menambahkan objek GojekIcon untuk fitur GoFood dengan warna merah.
  GojekIcon(icon: 'gofood', title: 'GoFood', color: red),
  // Menambahkan objek GojekIcon untuk fitur GoSend dengan warna hijau.
  GojekIcon(icon: 'gosend', title: 'GoSend', color: green2),
  // Menambahkan objek GojekIcon untuk fitur GoMart dengan warna merah.
  GojekIcon(icon: 'gomart', title: 'GoMart', color: red),
  // Menambahkan objek GojekIcon untuk fitur GoPulsa dengan warna biru.
  GojekIcon(icon: 'gopulsa', title: 'GoPulsa', color: blue2),
  // Menambahkan objek GojekIcon untuk fitur GoClub dengan warna ungu.
  GojekIcon(icon: 'goclub', title: 'GoClub', color: purple),
  // Menambahkan objek GojekIcon untuk fitur Lainnya dengan warna gelap.
  GojekIcon(icon: 'other', title: 'Lainnya', color: dark4),
];
