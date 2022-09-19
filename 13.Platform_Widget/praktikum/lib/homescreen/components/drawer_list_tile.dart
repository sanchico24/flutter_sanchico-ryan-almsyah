import 'package:flutter/material.dart';
import 'package:praktikum12/models/drawer_item.dart';

class DrawerListTile extends StatelessWidget {
  final DrawerItem drawerItem;
  const DrawerListTile({Key? key, required this.drawerItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      dense: true,
      leading: Icon(drawerItem.iconData),
      title: Text(drawerItem.title,
          style: const TextStyle(
            fontSize: 16,
          )),
    );
  }
}
