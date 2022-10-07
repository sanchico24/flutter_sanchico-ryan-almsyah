# 23. Flutter Animation

```
Name    : Sanchico Ryan Almsyah
Section : 23. Flutter Animation

## Summary
### Animation
- Animasi membuat aplikasi terlihat hidup
- Widget yang bergerak menambah daya tarik
- Pergerakan dari kondisi A ke kondisi B

### Implicit Animation
- Versi animasi dari widget yang sudah ada

### Transition
- Animasi yang terjadi saat perpindahan halaman
- Dilakukan pada bagian `Navigator.push()`

### Transition Umum
- Fade Transition -> Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh
- Scale Transition -> Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan

## Task
Berikut hasil yang telah dicoba dan didapatkan pada materi ini.

##Source Code
#Task1

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

#Task2

import 'package:flutter/material.dart';

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  EnterExitRoute({required this.exitPage, required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
                children: <Widget>[
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.0, 0.0),
                      end: const Offset(-1.0, 0.0),
                    ).animate(animation),
                    child: exitPage,
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: enterPage,
                  )
                ],
              ),
        );
}

