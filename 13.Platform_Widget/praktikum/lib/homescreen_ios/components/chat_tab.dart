import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum12/homescreen/home_screen.dart';

import '../../models/chat.dart';
import '../../utils/app_route.dart';
import '../../utils/arrays.dart';
import 'chat_adapter.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          backgroundColor: Colors.white,
          leading: CupertinoButton(child: const Text('Edit'), onPressed: () {}),
          trailing: CupertinoButton(
              child: const Icon(CupertinoIcons.square_arrow_down),
              onPressed: () =>
                  AppRoute.to(const MyHomePage(title: 'Telegram'))),
          middle: const Text("Chats"),
          largeTitle: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: CupertinoSearchTextField(
                placeholder: 'Search',
              )),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
                List.generate(chatItems.length, (index) {
          Chat chat = chatItems[index];
          return ChatAdapater(chat: chat);
        }))),
      ],
    ));
  }
}
