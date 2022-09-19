import 'package:badges/badges.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeScreen extends StatefulWidget {
  const BarcodeScreen({Key? key}) : super(key: key);

  @override
  State<BarcodeScreen> createState() => _BarcodeScreenState();
}

class _BarcodeScreenState extends State<BarcodeScreen> {
  final _list = ['Flutter Academy', 'Flutter Asik', 'Sanchico Ryan A'];
  final _controller = TextEditingController();
  var _data = '';
  int _radioValue = 0;
  Barcode _barcode = Barcode.qrCode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 3,
              child: _data != ''
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: BarcodeWidget(data: _data, barcode: _barcode),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _barcode.name.toLowerCase() != 'code 128'
                          ? Text(_data)
                          : Container(),
                    ],
                  )
                  : Container()),
          Flexible(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(),
                  const Text('Choose Barcode Type :', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  barcodeType(),
                  suggested(),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                      maxLength: 1000,
                      controller: _controller,
                      decoration: InputDecoration(
                          label: const Text('Input here'),
                          hintText: 'Some text',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () => _controller.clear(),
                            icon: const Icon(Icons.clear),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var input = _controller.text;
                            if (input != '') {
                              _data = _controller.text;
                              _controller.clear();
                            }
                          });
                        },
                        child: const Text('Create')),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget barcodeType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<int>(
          value: 0,
          groupValue: _radioValue,
          onChanged: (value) => _handleRadioValueChange(value ?? 0),
        ),
        const Text(
          'QrCode',
          style: TextStyle(fontSize: 14.0),
        ),
        Radio<int>(
          value: 1,
          groupValue: _radioValue,
          onChanged: (value) => _handleRadioValueChange(value ?? 0),
        ),
        const Text(
          'Barcode',
          style: TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
      if (_radioValue == 1) {
        _barcode = Barcode.code128();
      } else {
        _barcode = Barcode.qrCode();
      }
    });
  }

  Widget suggested() {
    return SizedBox(
      width: 300,
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var txt = _list[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                _data = txt;
              });
            },
            child: Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              badgeContent:
                  Text(txt, style: const TextStyle(color: Colors.white)),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 5,
        ),
      ),
    );
  }
}
