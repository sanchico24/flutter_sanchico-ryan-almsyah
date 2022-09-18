# 11. Introduction Flutter Widget

Name    : Sanchico Ryan Almsyah 
Section : 12. Introduction Flutter Widget


## Summary
### Perkenalan Flutter
- Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.
- Keunggulan dari flutter
    - Mudah digunakan dan dipelajari
    - Produktivitas tinggi
    - Dokumentasi lengkap
    - Komunitas yang berkembang
- Bagian dari flutter
     - SDK (Software Devolepment Kit) -> Alat-alat untuk membantu proses pengembangan aplikasi
     - Framework -> Perlengkapan untuk membuat aplikasi yang dapat dikustomisasi.
- Untuk membuat project dapat menjalankan perintah sebagai berikut
```
flutter create [project name]
```
- Untuk menjalankan projek dapat dilakukan dengan cara masuk ke direktori project dan jalankan perintah `flutter run`
- Struktur Direktori terdiri dari
    - Direktori platform -> android, ios, web, desktop.
    - Direktori project -> lib (ruang kerja utama), test (aktivitas pengujian)
- File utama yang pertama kali dibaca dan dijalankan terdapat dalam direktori `lib` bernama `main.dart` yang memiliki fungsi `main()` dan menjalankan aplikasi dengan fungsi `runApp`.

### Widget
- Digunakan untuk membentuk antarmuka (UI)
- Berupa class
- Dapat terdiri dari beberapa widget lainnya
- terdapat 2 jenis widget yaitu `Stateless` dan `Stateful`.
- Stateless widget memiliki ciri sebagai berikut
    - Tidak bergantung pada perubahan data
    - Hanya fokus pada tampilan
    - Dibuat dengan extends pada class StatelesWidget
- Stateful widget memiliki ciri sebagai berikut
    - Mementingkan pada perubahan data
    - Dibuat dengan extends pada class StatefulWidget
    - 1 widget menggunakan 2 class (widget dan state)

### Built in Widget
- Widget yang dapat langsung digunakan
- Sudah ter-install bersama flutter
- Contohnya sebagai berikut
    - MaterialApp -> membangun aplikasi dengan desain material
    - Scaffold -> Membentuk sebuah halaman
    - Appbar -> Membentuk application bar yang terletak pada bagian atas halaman.
    - Text -> Menampilkan teks

