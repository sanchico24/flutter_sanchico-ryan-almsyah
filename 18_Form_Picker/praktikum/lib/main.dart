import 'package:flutter/material.dart';
import 'package:picker17/utils/app_route.dart';
import 'package:picker17/utils/color_util.dart';

import 'homescreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: AppRoute.navigatorKey,
      theme: ThemeData(
        primarySwatch: ColorUtil.generateMaterialColor(ColorUtil.primary()),
      ),
      home: const MyHomePage(),
    );
  }
}