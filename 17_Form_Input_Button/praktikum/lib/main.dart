import 'package:flutter/material.dart';
import 'package:form16/app_route.dart';
import 'package:form16/contact.dart';
import 'package:form16/new_contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: AppRoute.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var contact = Contact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: Stack(
          children: [
            ListView.builder(
                itemBuilder: (context, index) {
                  contact = contact.listContact[index];
                  return ListTile(
                    leading: CircleAvatar(
                        child: Text(contact.name[0],
                            style: const TextStyle(
                              color: Colors.white,
                            ))),
                    title: Text(contact.name),
                    subtitle: Text(contact.noTelp),
                  );
                },
                itemCount: contact.listContact.length),
            contact.listContact.isEmpty
                ? const Center(
                    child: Text('Tidak ada data'),
                  )
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AppRoute.to(NewContactScreen(
          contact: contact,
        )),
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
