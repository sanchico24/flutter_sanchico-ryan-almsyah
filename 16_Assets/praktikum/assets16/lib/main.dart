import 'package:assets15/app_route.dart';
import 'package:assets15/detail_screen.dart';
import 'package:flutter/material.dart';

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
      navigatorKey: AppRoute.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Assets'),
    );
  }
}

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
          title: Text(widget.title),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: 2,
          children: _listImage
              .map((img) => GestureDetector(
                    onTap: () => AppRoute.to(DetailScreen(image: img)),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      child: Image.network(
                        img,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ))
              .toList(),
        ));
  }

  final _listImage = [
    'https://picsum.photos/id/1022/367/267',
    'https://picsum.photos/id/1021/367/267',
    'https://picsum.photos/id/1016/367/267',
    'https://picsum.photos/id/1018/367/267',
    'https://picsum.photos/id/101/367/267',
    'https://picsum.photos/id/1003/367/267',
    'https://picsum.photos/id/10/367/267',
    'https://picsum.photos/id/1028/367/267'
  ];
}
