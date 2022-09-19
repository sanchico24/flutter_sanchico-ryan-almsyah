import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:praktikum12/models/chat.dart';
import 'package:praktikum12/models/drawer_item.dart';
import 'package:praktikum12/homescreen_ios/components/default_tab.dart';

import '../homescreen_ios/components/chat_tab.dart';

final List<DrawerItem> drawerItems = [
  DrawerItem(iconData: Icons.group, title: 'New Group'),
  DrawerItem(
    iconData: Icons.person_outline,
    title: 'Contacts',
  ),
  DrawerItem(
    iconData: Icons.phone,
    title: 'Calls',
  ),
  DrawerItem(iconData: Icons.place_outlined, title: 'People Nearby'),
  DrawerItem(iconData: Icons.bookmark_border, title: 'Saved Messages'),
  DrawerItem(iconData: Icons.settings, title: 'Settings'),
];

final List<Chat> chatItems = [
  Chat(
      name: 'Group1',
      message: faker.lorem.words(18).join(' '),
      time: '20.03',
      status: true,
      isGroup: true,
      lastChat: faker.person.name(),
      messNum: 999),
  Chat(
      name: faker.person.name(),
      message: faker.lorem.words(12).join(' '),
      time: '20.02',
      status: true,
      messNum: 50),
  Chat(
      name: faker.person.name(),
      message: faker.lorem.words(3).join(' '),
      time: '20.01',
      status: false,
      messNum: 1),
  Chat(
      name: faker.person.name(),
      message: faker.lorem.words(6).join(' '),
      time: '20.00',
      status: true,
      messNum: 0),
];

final List<Widget> tabsItems = [
  const DefaultTab(title: 'Contact'),
  const DefaultTab(title: 'Call'),
  const ChatTab(),
  const DefaultTab(title: 'Settings'),
];
