import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTab extends StatelessWidget {
  final String title;
  const DefaultTab({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: Center(
            child: Text(title,
                style: GoogleFonts.openSans(
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                    fontSize: 15))));
  }
}
