# 13. Platform Widget

Name    : Sanchico Ryan Alamsyah
Section : Platform Widget

## Summary
Memanfaatkan widget dengan gaya berbeda pada Android & iOS.
### MaterialApp
- Widget dasar yang mengemas seluruh widget dalam aplikasi
- Widget yang digunakan pada sistem Android
- Di-import dari `package:flutter/material.dart`
- Struktur
    - Widget yang pertama kali dibuka, diletakkan pada bagian home.
    - Mengatur halaman juga dapat dilakukan dengan menggunakan `routes` dan `initialRoute`.

**Scaffold**
- Widget dasar untuk membangun sebuah halaman pada MaterialApp
- Dengan struktur untuk membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.

### CupertinoApp
- Widget dasar yang mengemas seluruh widget dalam aplikasi
- Widget yang digunakan pada sistem iOS
- Di-import dari `package:flutter/cupertino.dart`
- Struktur 
    - Variabel `_themeDark` dibuat untuk menyimpan tema
    - Diperlukan karena Cupertino **tidak menyediakan** `ThemeData.dark()` seperti pada Material
    - Widget yang pertama kali dibuka, diletakkan pada bagian home.

**CupertinoPageScaffold**
- Widget dasar untuk membangun sebuah halaman pada CupertinoApp
- Dengan struktur untuk membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.

