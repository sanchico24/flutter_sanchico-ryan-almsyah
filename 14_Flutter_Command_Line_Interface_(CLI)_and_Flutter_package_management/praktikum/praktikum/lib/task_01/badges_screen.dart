import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class BadgesScreen extends StatelessWidget {
  const BadgesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Chip(
          padding: EdgeInsets.all(0),
          backgroundColor: Colors.deepPurple,
          label: Text('BADGE', style: TextStyle(color: Colors.white)),
        ),
        Badge(
          toAnimate: false,
          shape: BadgeShape.square,
          badgeColor: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
          badgeContent: const Text('BADGE', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
