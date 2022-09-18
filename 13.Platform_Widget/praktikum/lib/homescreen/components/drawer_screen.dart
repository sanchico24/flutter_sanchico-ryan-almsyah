import 'package:flutter/material.dart';
import 'package:praktikum12/homescreen/components/drawer_list_tile.dart';
import 'package:praktikum12/models/drawer_item.dart';
import 'package:praktikum12/utils/arrays.dart';
import 'package:praktikum12/utils/color_util.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: ColorUtil.primary()),
              currentAccountPicture: const CircleAvatar(
                child: FlutterLogo(),
                backgroundColor: Colors.white,
                radius: 0.1,
              ),
              accountName: const Text(
                'Tester',
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: const Text(
                '+62 897 6543210',
                style: TextStyle(fontSize: 12),
              )),
          SizedBox(
            height: drawerItems.length * 48,
            child: ListView.builder(
                itemExtent: 48,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: drawerItems.length,
                itemBuilder: (context, index) {
                  DrawerItem drawerItem = drawerItems[index];
                  return DrawerListTile(drawerItem: drawerItem);
                }),
          ),
          const Divider(),
          DrawerListTile(
            drawerItem:
                DrawerItem(iconData: Icons.person_add, title: 'Invite Friends'),
          ),
          DrawerListTile(
            drawerItem:
                DrawerItem(iconData: Icons.help_outline, title: 'Telegram FAQ'),
          )
        ],
      ),
    );
  }
}
