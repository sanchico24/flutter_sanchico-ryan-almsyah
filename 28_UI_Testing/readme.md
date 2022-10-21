# 28. UI Testing

Name    : Sanchico Ryan Almsyah
Section : 28. UI Testing

## Summary

### Tentang UI Testing
- Merupakan **pengujian** yang dilakukan **pada tampilan** suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna
- Disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

### Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

### Melakukan UI Testing
- Pada umumnya, package testing sudah ter-install sejak project pertama dibuat. Tetapi, cara ini dapat dilakukan, jika ingin meng-install secara manual
- Dilakukan pada folder `test`
- Nama file harus diikuti dengan `[nama file]_test.dart`. Contohnya contact_test.dart
- Tiap file berisi fungsi **main()** yang di dalamnya dapat dituliskan script testing
- Tiap skenario pengujian disebut **test case**
- Script Testing
    - Test case diawali dengan **testWidgets()** dan diberi judul
    - Simulasi proses mengaktifkan sebuah halaman yang ingin di uji dengan `tester.pumpWidget()`
    - Memeriksa apakah di halaman tersebut terdapat apa yang ingin kita uji
- Menjalankan Testing
    - Perintah `flutter test` akan menjalankan seluruh file test yang dibuat
    - Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian, dan pesan bahwa pengujian berhasil
    - Dan ketika hasil testing gagal maka akan ditampilkan penyebab gagalnya pengujian     

## Task
Berada pada folder Praktikum dan Screenshoot.
