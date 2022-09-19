import 'package:flutter/material.dart';
import 'package:praktikum12/homescreen_ios/components/chat_adapter.dart';
import 'package:praktikum12/homescreen_ios/home_screen_ios.dart';
import 'package:praktikum12/utils/app_route.dart';
import 'package:praktikum12/utils/arrays.dart';
import 'package:praktikum12/utils/color_util.dart';

import '../models/chat.dart';
import 'components/drawer_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.primary(),
        title: Text(widget.title),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            Chat chat = chatItems[index];
            return ChatAdapater(
              chat: chat,
            );
          },
          itemCount: chatItems.length),
      drawer: const DrawerScreen(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.create,
            color: Colors.white,
          ),
          backgroundColor: ColorUtil.primary(),
          onPressed: () => AppRoute.to(const HomeScreenIos())),
    );
  }
}
