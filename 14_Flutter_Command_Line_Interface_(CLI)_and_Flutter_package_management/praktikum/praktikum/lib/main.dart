import 'package:flutter/material.dart';
import 'package:praktikum14/task_01/badges_screen.dart';
import 'package:praktikum14/task_02/barcode_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Praktikum 14'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
        title: Text(widget.title),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: "Task 01",
          ),
          Tab(
            text: "Task 02",
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: const [
        BadgesScreen(),
        BarcodeScreen(),
      ]),
    );
  }
}
