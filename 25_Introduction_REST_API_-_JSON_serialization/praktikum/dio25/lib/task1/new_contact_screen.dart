import 'package:dio25/item_contact.dart';
import 'package:dio25/models/contact.dart';
import 'package:flutter/material.dart';

import '../data/api_client.dart';

class NewContactScreen extends StatefulWidget {
  const NewContactScreen({Key? key}) : super(key: key);

  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}

class _NewContactScreenState extends State<NewContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: FutureBuilder<Contact>(
          future: APIClient().postContact(),
          builder: (context, snapshot) {
            var contact = snapshot.data ?? Contact();
            contact.name = "Namaaaaaaa";
            contact.phone = "0891234567890";
            return Center(child: _initState(snapshot, child: ItemContact(contact: contact)),);
          },
        ),
      ),
    );
  }

  Widget _initState(AsyncSnapshot<Contact> snapshot, {Widget? child}) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return const Text(
        'Terjadi Kesalahan',
        style: TextStyle(fontSize: 50, color: Colors.red),
      );
    } else {
      return child ?? Container();
    }
  }
}
