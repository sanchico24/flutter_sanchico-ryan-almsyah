import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CoverSection extends StatefulWidget {
  final Function(String)? onPathChanged;
  const CoverSection({Key? key, this.onPathChanged}) : super(key: key);

  @override
  State<CoverSection> createState() => _CoverSectionState();
}

class _CoverSectionState extends State<CoverSection> {
  var _path = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cover',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        _path.isNotEmpty
            ? SizedBox(
                width: screenSize.width,
                height: 200,
                child: Image.file(File(_path)))
            : Container(),
        SizedBox(
            width: screenSize.width,
            child: ElevatedButton(
                onPressed: () => _pickFile(), child: const Text('Pilih File'))),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final path = result.files.first.path;
    setState(() {
      var pathFunc = widget.onPathChanged;
      if (path != null) {
        _path = path;
        if (pathFunc != null && path.isNotEmpty) {
          pathFunc(path);
        }
      }
    });
  }
}
