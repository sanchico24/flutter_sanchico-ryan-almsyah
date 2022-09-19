import 'package:flutter/cupertino.dart';

import '../utils/arrays.dart';

class HomeScreenIos extends StatefulWidget {
  const HomeScreenIos({Key? key}) : super(key: key);

  @override
  State<HomeScreenIos> createState() => _HomeScreenIosState();
}

class _HomeScreenIosState extends State<HomeScreenIos> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled),
                  label: 'Contacts'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone_solid), label: 'Call'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                  label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings_solid), label: 'Settings')
            ],
          ),
          tabBuilder: (context, index) => tabsItems[index]),
    );
  }
}
