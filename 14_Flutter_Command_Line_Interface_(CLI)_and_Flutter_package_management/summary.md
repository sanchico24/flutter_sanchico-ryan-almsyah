# 14. Flutter Command Line Interface (CLI) and Flutter package management


Name    : Sanchico Ryan Almsyah
Section : 14. Flutter Command Line Interface (CLI) and Flutter package management



## Summary
- Alat yang digunakan untuk berinteraksi dengan Flutter SDK
- Perintah dijalankan dalam terminal

### CLI Commands
- Flutter Doctor
    - Perintah untuk menampilkan informasi software yang dibutuhkan flutter.
        ```
        flutter doctor
        ```
- Flutter Create
    - Perintah untuk membuat project aplikasi flutter baru di directory tertentu
        ```
        flutter create [APP_NAME]
        ```
    - Untuk spesifik pada platform tertentu saja
        ```    
        flutter create --platforms=android,web [APP_NAME]
        ```
- Flutter Run
    - Perintah untuk menjalankan project aplikasi di device yang tersedia
        ```
        flutter run [DART_FILE]
        ```
- Flutter Emulator
    - Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan pilihan untuk membuka emulator atau membuat emulator baru
        ```
        flutter emulators
        ```
- Flutter Channel
    - Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini
        ```
        flutter channel
        ```
- Flutter Pub
    - Flutter pub add, untuk **menambahkan** packages ke dependencies yang tersedia di `pubspec.yaml`
        ```
        flutter pub add <package_name>
        ```
    - Flutter pub get, untuk **mendownload** semua packages atau dependencies yang ada di `pubspec.yaml`
        ```
        flutter pub get
        ```
- Flutter Build
    - Perintah untuk memproduksi sebuah file aplikasi untuk untuk keperluan deploy atau publish ke AppStroe, PlayStrore, dll.
        ```
        flutter build [apk/appbundle/ipa/web/windows/macos/linux]
        ```
- Flutter Clean
    - Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator
    - Perintah ini akan memperkecil ukuran project tersebut.
        ```
        flutter clean
        ```

### Packages Management
- Flutter mendukung sharing packages
- Packages dibuat oleh developers lain
- Mempercepat pengembangan aplikasi karena tidak perlua membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website [pub.dev](https://pub.dev/)
- Cara Menambahkan Packages
    - Cari package di [pub.dev](https://pub.dev/)
    - Copy baris dependencies yang ada dibagian installing
    - Buka `pubspec.yaml`
    - Paste barisnya dibwah dependencies `pubspec.yaml`
    - Run `flutter pub get` di terminal
    - Import package di file dart agar bisa digunakan
    - Stop atau restart aplikasi jika dibutuhkan                                                       
