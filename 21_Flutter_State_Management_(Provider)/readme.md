# 21. Flutter State Management (Provider)

```
Name    : Sanchico Ryan Almsyah
Section : 21. Flutter State Management (Provider)

## Summary

### State
- Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh **StatefulWidget**
- Global State diperlukan agar antara widget dapat memanfaatkan state yang sama dengan mudah
- Memanfaatkan state
    - Dibuat sebagai property dari class
    - Digunakan pada widget saat build
    - Untuk menggunakan state dapat menggunakan method **setState**

### Global State    
- State biasa yang dapat digunakan pada seluruh widget
- Provider merupakan State management yang perlu di-install agar dapat digunakan
- Instalasi Provider
    - Menambah package [provider](https://pub.dev/packages/provider) pada bagian dependencies dalam file pubspec.yaml
    - Jalankan perintah **flutter pub get**
- Membuat State Provider dapat dilakukan dengan mendefinisikan state dalam bentuk kelas
- Mendaftarkan State Provider dengan cara daftarkan pada **runApp** dengan **MultiProvider**
- Menggunakan State dari provider dengan simpan provider dalam variabel lalu ambil data dari provider melalui getter   

## Task
Berikut hasil yang telah dicoba dan didapatkan pada materi ini. Dengan bantuan library [provider](https://pub.dev/packages/provider) untuk mendapatkan update data. dan screenshoot ada di folder screenshoot.

### Source Code

##Task1

class Contact {
  String name;
  String noTelp;

  Contact({this.name = '', this.noTelp = ''});

  @override
  String toString() {
    return '''Nama : $name, No.Telp : $noTelp''';
  }
}


##Task2

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../new_contact/new_contact_screen.dart';
import '../utils/app_route.dart';
import '../utils/contact_manager.dart';
import 'components/item_contact.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ContactManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        actions: [
          IconButton(
              onPressed: () =>
                  AppRoute.withNameTo(AppRoute.create, arguments: manager),
              icon: const Icon(Icons.person_add))
        ],
      ),
      body: Consumer<ContactManager>(
        builder: (context, manager, child) => Stack(
          children: [
            ListView.builder(
              itemCount: manager.listContact.length,
              itemBuilder: (context, index) {
                var contact = manager.listContact[index];
                return ItemContact(contact: contact);
              },
            ),
            manager.listContact.isEmpty
                ? const Center(
                    child: Text('Tidak ada data'),
                  )
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRoute.to(NewContactScreen(
            manager: manager,
          ));
        },
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
