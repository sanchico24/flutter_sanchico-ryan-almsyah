# 20. Flutter Navigation

Name    : Sanchico Ryan Almsyah
Section : 20. Flutter Navigation

## Summary
### Apa itu Navigation?
- Berpindah dari halaman satu ke halaman lain

### Navigation Dasar
- Perpindahan halaman menggunakan `Navigator.push()`
- Kembali ke halaman sebelumnya menggunakan `Navigator.pop()`
- Untuk mengirim data ke halaman baru dapat menggunakan parameter pada constructor halaman

### Navigation dengan Named Routes
- Tiap halaman memiliki alamat yang disebut route
- Perpindahan halaman menggunakan `Navigator.pushNamed()`
- Kembali ke halaman sebelumnya menggunakan `Navigator.pop()`
- Terlebih dahulu mendaftarkan route dengan cara
    - Tambahkan *initialRoute* dan *routes* pada MaterialApp
    - Tiap route adalah fungsi adalah fungsi yang membentuk halaman
- Untuk mengirim data ke halaman baru dapat menggunakan arguments saat melakukan *pushNamed*. Untuk memanggil data tersebut yaitu denga cara
    ```
    final parameter = ModalRoute.of(context)?.settings.arguments as String;
    ```    

## Task
Berada di file Praktikum dan Screenshoot