import 'package:dio25/data/api_client.dart';
import 'package:dio25/item_contact.dart';
import 'package:dio25/models/contact.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Contact>(
          future: APIClient().getContact(),
          builder: (context, snapshot) {
            var contact = snapshot.data ?? Contact();
            return Center(
              child: _initState(snapshot,
                  child: ItemContact(contact: contact)),
            );
          }),
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
