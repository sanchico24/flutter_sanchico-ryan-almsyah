import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../item_data.dart';
import '../../models/contact.dart';
import 'contact_viewmodel.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late ContactViewModel _viewModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = Provider.of<ContactViewModel>(context);
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Center(
        child: _body(_viewModel),
      ),
    ));
  }

  Widget _body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
      return const CircularProgressIndicator();
    } else if (isError) {
      return const Text(
        'Tidak ada Data',
        style: TextStyle(fontSize: 30, color: Colors.red),
      );
    } else {
      return _itemList(viewModel.listContact);
    }
  }

  Widget _itemList(List<Contact> listContact) => listContact.isEmpty
      ? const Center(
          child: Text(
            'Tidak ada Data',
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
        )
      : ListView.builder(
          key: const Key('listContact'),
          itemCount: listContact.length,
          itemBuilder: (context, index) {
            var contact = listContact[index];
            return ItemData(
              key: const Key('itemContact'),
              title: contact.name,
              subtitle: contact.phone,
            );
          });
}
