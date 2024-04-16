// Mendefinisikan sebuah class bernama News.
class News {
  // Membuat variabel string image untuk menyimpan URL gambar berita.
  final String image;
  // Membuat variabel string title untuk menyimpan judul berita.
  final String title;
  // Membuat variabel string description untuk menyimpan deskripsi berita.
  final String description;

  // Membuat constructor (konstruktor) untuk class News.
  // Constructor ini menerima parameter wajib 'image', 'title', dan 'description'.
  News(this.image, this.title, this.description);
}
