import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool isBig = false;
  String imgSrc = 'https://picsum.photos/id/1022/367/267';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: isBig ? 300 : 200,
          height: isBig ? 300 : 200,
          duration: const Duration(milliseconds: 500),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            child: Image.network(
              imgSrc,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          isBig = !isBig;
        }),
        tooltip: 'Resize Image',
        child: Icon(isBig ? Icons.zoom_out : Icons.zoom_in),
      ),
    );
  }
}
