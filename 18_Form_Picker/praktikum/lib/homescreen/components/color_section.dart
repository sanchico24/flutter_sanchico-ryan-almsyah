import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../utils/app_route.dart';

class ColorSection extends StatefulWidget {
  final Function(Color)? onColorChaged;
  const ColorSection({Key? key, this.onColorChaged}) : super(key: key);

  @override
  State<ColorSection> createState() => _ColorSectionState();
}

class _ColorSectionState extends State<ColorSection> {
  final _controllerColor = TextEditingController();
  var _colorPick = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color Theme',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _controllerColor,
          onTap: () => _pickColor(context),
          decoration: InputDecoration(
              filled: true,
              fillColor: _colorPick,
              contentPadding: const EdgeInsets.all(10),
              isDense: true,
              hintText: 'pick a color',
              hintStyle: TextStyle(color: _colorPick == Colors.white ? Colors.grey : Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        _colorPick == Colors.white ? Colors.grey : _colorPick),
                borderRadius: BorderRadius.circular(5),
              )),
        ),
      ],
    );
  }

  void _pickColor(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Pick your color'),
              content: BlockPicker(
                  pickerColor: _colorPick,
                  onColorChanged: (color) {
                    setState(() {
                      var colorFunc = widget.onColorChaged;
                      _colorPick = color;
                      if (colorFunc != null) {
                        colorFunc(color);
                      }
                    });
                  }),
              actions: [
                TextButton(
                    onPressed: () => AppRoute.back(), child: const Text('Save'))
              ],
            ));
  }
}
