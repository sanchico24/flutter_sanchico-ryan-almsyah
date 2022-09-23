# Praktikum 16

A new Flutter project for Praktikum 16. This project is a starting point for a Flutter application. This project was created to look like gallery.

## Library used in this project

- [photo_view](https://pub.dev/packages/photo_view)

# 16. Assets

Name    : Sanchico Ryan Almsyah
Section : 16. Assets


## Summary
### Assets
- File yang di bundled dan di deployed bersamaan dengan aplikasi
- Tipe-tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf)
- Menentukan Assets
    - Flutter menggunakan pubspec.yaml
    - Pubspec.yaml terletak pada root projectm untuk mengidentifikasi assets yang dibutuhkan aplikasi
    - Gunakan karakater `/` untuk memasukkan semua assets dibawah satu directory name

### Image
- Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
- Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP.
- Menampilkan gambar dari project assets dan internet.
- Untuk menampilkan Image
    - Gunakan widget Image
    - Membutuhkan properti image dengan nilai class AssetImage()
    - Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
    - Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

### Font
- Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
- Penetuan font yang mau dipakai biasanya oleh UI desainer
- Penerapan font menggunakan custom font atau dari package
- Untuk menggunakan custom font
    - Cari dan download font yang diinginkan
    - Import file `.ttf`
    - Daftarkan font di pubspec.yaml
    - Mengatur font sebagai default dengan menambahkan di ThemeData()
    - Gunakan font di spesifik widget
- Untuk menggunakan font dari package
    - Tambahkan package [google_fonts](https://pub.dev/packages/google_fonts) di dependencies
    - Import pacakage di file dart
    - Guanakan font dengan memanggil GoogleFonts.namaFont()



