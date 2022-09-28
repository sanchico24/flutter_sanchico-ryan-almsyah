import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PublisedSection extends StatefulWidget {
  final Function(String)? onDateChanged;
  const PublisedSection({Key? key, this.onDateChanged}) : super(key: key);

  @override
  State<PublisedSection> createState() => _PublisedSectionState();
}

class _PublisedSectionState extends State<PublisedSection> {
  final _controllerDate = TextEditingController();
  final _currentDate = DateTime.now();
  var _datePick = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Publish At',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _controllerDate,
          onTap: () => _pickDate(context),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              isDense: true,
              hintText: 'dd/mm/yyyy',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )),
        ),
      ],
    );
  }

  void _pickDate(BuildContext context) async {
    var dateFunc = widget.onDateChanged;
    final selectDate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(_currentDate.year + 5));

    setState(() {
      if (selectDate != null) {
        _datePick = DateFormat('dd/MM/yyyy').format(selectDate);
        _controllerDate.text = _datePick;
        if (dateFunc != null && _datePick.isNotEmpty) {
          dateFunc(_datePick);
        }
      }
    });
  }
}
