import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  late SharedPreferences _sharedPref;
  late ContactManager _manager;

  @override
  void initState() {
    super.initState();
    onCreate();
  }

  @override
  Widget build(BuildContext context) {
    _manager = Provider.of<ContactManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
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
            manager: _manager,
          ));
        },
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }

  void onCreate() async {
    _sharedPref = await SharedPreferences.getInstance();
    _manager.initSharedPref(_sharedPref);
  }
}
