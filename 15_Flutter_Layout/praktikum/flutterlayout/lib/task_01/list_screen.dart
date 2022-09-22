import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return ListView.builder(
        itemBuilder: (context, index) {
          var name = faker.person.name();
          return ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(name[0],
                    style: const TextStyle(
                      color: Colors.white,
                    ))),
            title: Text(name),
            subtitle: Text(faker.phoneNumber.us()),
          );
        },
        itemCount: 10);
  }
}
