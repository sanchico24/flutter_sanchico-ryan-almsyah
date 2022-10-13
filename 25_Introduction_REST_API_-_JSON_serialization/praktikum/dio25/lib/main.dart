import 'package:flutter/material.dart';

import 'task1/new_contact_screen.dart';
import 'task2/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: 'Task 01',
          ),
          Tab(
            text: 'Task 02',
          )
        ]),
      ),
      body: TabBarView(
          controller: _tabController,
          children: const [NewContactScreen(), ContactPage()]),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
