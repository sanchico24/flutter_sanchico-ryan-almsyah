import 'package:flutter/material.dart';

class NoTelpContactItem extends StatefulWidget {
  final Function(String)? noTelp;
  const NoTelpContactItem(this.noTelp, {Key? key}) : super(key: key);

  @override
  State<NoTelpContactItem> createState() => _NoTelpContactItemState();
}

class _NoTelpContactItemState extends State<NoTelpContactItem> {
  final _controllerTelp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controllerTelp,
      keyboardType: TextInputType.phone,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          icon: const Icon(Icons.phone),
          label: const Text('No.Telp'),
          hintText: '08xxxxxxx',
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () => _controllerTelp.clear(),
            icon: const Icon(Icons.clear),
          )),
      validator: (value) {
        var noTelp = value ?? '';
        if (noTelp.isEmpty) {
          return 'Tidak boleh kosong';
        } else if (noTelp.length < 10) {
          return 'Harap periksa kembali';
        }
        return null;
      },
      onSaved: (value) {
        var noTelp = value ?? '';
        var noTelpFunc = widget.noTelp;
        if (noTelp.isNotEmpty && noTelpFunc != null) {
          noTelpFunc(noTelp);
        }
      },
    );
  }

  @override
  void dispose() {
    _controllerTelp.dispose();
    super.dispose();
  }
}
