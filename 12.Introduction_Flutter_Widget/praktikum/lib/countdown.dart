import 'dart:async';

import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  final Duration duration;
  final bool isCountdown;

  const Countdown(
      {Key? key, required this.isCountdown, this.duration = const Duration()})
      : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  late Duration _duration;
  late Timer _timer;

  @override
  void initState() {
    _duration = widget.duration;
    startTimer(widget.isCountdown);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hours = twoDigits(_duration.inHours.remainder(24));
    final minutes = twoDigits(_duration.inMinutes.remainder(60));
    final seconds = twoDigits(_duration.inSeconds.remainder(60));
    return Text(
      "$hours:$minutes:$seconds",
      style: const TextStyle(fontSize: 50),
    );
  }

  void startTimer(bool isCountdown) {
    int interval = 1;
    _timer = Timer.periodic(Duration(seconds: interval), (_) {
      setState(() {
        if (isCountdown && _duration.inSeconds == 0) {
          _timer.cancel();
        } else {
          var detik =
              _duration.inSeconds + (isCountdown ? -interval : interval);
          _duration = Duration(seconds: detik);
        }
      });
    });
  }

  String twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
