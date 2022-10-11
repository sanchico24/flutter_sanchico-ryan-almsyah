import 'package:flutter/material.dart';
import 'package:prov24/homescreen/home_screen.dart';
import 'package:prov24/utils/app_route.dart';
import 'package:prov24/utils/contact_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactManager())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
        navigatorKey: AppRoute.navigatorKey,
        initialRoute: '/',
      ),
    );
  }
}
