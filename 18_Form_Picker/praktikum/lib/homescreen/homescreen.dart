import 'package:flutter/material.dart';
import 'package:picker18/homescreen/components/color_section.dart';
import 'package:picker18/homescreen/components/cover_section.dart';
import 'package:picker18/homescreen/components/publised_section.dart';
import 'package:picker18/post.dart';
import 'package:picker18/preview_post_screen.dart';
import 'package:picker18/utils/app_route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controllerCaption = TextEditingController();
  var _path = '';
  var _colorPick = Colors.white;
  var _datePick = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('Create Post'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          CoverSection(onPathChanged: (path) {
            setState(() {
              _path = path;
            });
          }),
          const SizedBox(
            height: 8,
          ),
          PublisedSection(
            onDateChanged: (date) {
              setState(() {
                _datePick = date;
              });
            },
          ),
          const SizedBox(
            height: 8,
          ),
          ColorSection(
            onColorChaged: (color) {
              _colorPick = color;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Caption',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: _controllerCaption,
            minLines: 5,
            maxLines: 10,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 150,
              height: 35,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 0),
                  onPressed: () => _saveData(),
                  child: const Text('Simpan')),
            ),
          )
        ],
      ),
    );
  }

  void _saveData() {
    var caption = _controllerCaption.text;
    if (_path.isEmpty) {
      showSnackbar('Cover tidak boleh kosong');
    } else if (_datePick.isEmpty) {
      showSnackbar('Pilih tanggal dulu');
    } else if (caption.isEmpty) {
      showSnackbar('Caption tidak boleh kosong');
    } else {
      var post = Post(
          image: _path,
          color: _colorPick,
          caption: caption,
          publishAt: _datePick);
      AppRoute.to(PreviewPostScreen(post: post));
    }
  }

  void showSnackbar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: Colors.red,
    ));
  }
}
