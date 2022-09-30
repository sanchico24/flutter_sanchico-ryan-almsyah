import 'package:dialog18/gallery_sheet.dart';
import 'package:flutter/material.dart';

import 'arrays.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Dialog'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: 2,
          children: listImage
              .map((image) => GestureDetector(
                    onTap: () => showDialogImage(context, image),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      child: Image.network(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}

void showDialogImage(BuildContext context, String image) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          title: const Text('Lihat di bottomsheet?'),
          content: Image.network(image),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'No'.toUpperCase(),
                  style: const TextStyle(color: Colors.grey),
                )),
            TextButton(
                onPressed: () => showBottomSheet(context, image),
                child: Text('Yes'.toUpperCase()))
          ],
        ));

void showBottomSheet(BuildContext context, String image) {
  Navigator.pop(context);
  showModalBottomSheet(
      context: context,
      builder: (context) => GallerySheet(image: image),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))));
}
