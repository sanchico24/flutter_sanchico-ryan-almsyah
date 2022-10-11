import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc/contact_bloc.dart';
import '../new_contact/new_contact_screen.dart';
import '../utils/app_route.dart';
import 'components/item_contact.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences _sharedPref;

  @override
  void initState() {
    super.initState();
    _initSharedPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: BlocBuilder<ContactBloc, ListContact>(
        builder: (context, state) => Stack(
          children: [
            ListView.builder(
              itemCount: state.newListContact.length,
              itemBuilder: (context, index) {
                var contact = state.newListContact[index];
                return ItemContact(contact: contact);
              },
            ),
            state.newListContact.isEmpty
                ? const Center(
                    child: Text('Tidak ada data'),
                  )
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            AppRoute.to(const MyHomePage(), const NewContactScreen()),
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }

  void _initSharedPref() async {
    _sharedPref = await SharedPreferences.getInstance();
    context.read<ContactBloc>().add(InitSharedPref(_sharedPref));
  }
}
