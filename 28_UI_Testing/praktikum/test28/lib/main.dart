import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/contact/contact_page.dart';
import 'screen/contact/contact_viewmodel.dart';
import 'screen/food/food_page.dart';
import 'screen/food/food_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactViewModel()),
        ChangeNotifierProvider(create: (context) => FoodViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
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
        title: const Text('UI Test'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: 'Contact',
          ),
          Tab(
            text: 'Food',
          )
        ]),
      ),
      body: TabBarView(
          controller: _tabController,
          children: const [ContactPage(), FoodPage()]),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
