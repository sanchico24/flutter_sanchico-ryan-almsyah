import 'package:flutter/material.dart';
import 'package:form16/app_route.dart';
import 'package:form16/contact.dart';

class NewContactScreen extends StatefulWidget {
  final Contact contact;
  const NewContactScreen({Key? key, required this.contact}) : super(key: key);

  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}

class _NewContactScreenState extends State<NewContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _controllerName = TextEditingController();
  final _controllerTelp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    var contact = widget.contact;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _controllerName,
                keyboardType: TextInputType.name,
                textCapitalization: TextCapitalization.words,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    icon: const Icon(Icons.people),
                    label: const Text('Name'),
                    hintText: 'Name',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => _controllerName.clear(),
                      icon: const Icon(Icons.clear),
                    )),
                validator: (value) {
                  var name = value ?? '';
                  if (name.isEmpty) {
                    return 'Tidak boleh kosong';
                  }
                  return null;
                },
                onSaved: (value) {
                  var name = value ?? '';
                  if (name.isNotEmpty) {
                    contact.name = name;
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _controllerTelp,
                keyboardType: TextInputType.phone,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    icon: const Icon(Icons.phone),
                    label: const Text('No.Telp'),
                    hintText: '08xxxxxxx',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => _controllerTelp.clear(),
                      icon: const Icon(Icons.clear),
                    )),
                validator: (value) {
                  var noTelp = value ?? '';
                  if (noTelp.isEmpty) {
                    return 'Tidak boleh kosong';
                  } else if (noTelp.length < 10) {
                    return 'Harap periksa kembali';
                  }
                  return null;
                },
                onSaved: (value) {
                  var noTelp = value ?? '';
                  if (noTelp.isNotEmpty) {
                    contact.noTelp = noTelp;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: screenSize.width,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        contact.addContact(contact);
                        AppRoute.back();
                      }
                    });
                  },
                  child: const Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
