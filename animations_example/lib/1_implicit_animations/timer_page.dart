import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);
  late final Timer timer;

  void toggle() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(duration, (timer) => toggle());
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      toggle();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animações implícitas: Timer')),
      body: AnimatedAlign(
        duration: duration,
        alignment: isExpanded ? Alignment.center : Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedScale(
            duration: duration,
            scale: isExpanded ? 10 : 1,
            child: AnimatedContainer(
              duration: duration,
              alignment: Alignment.center,
              width: 100, //isExpanded ? 100 : 50,
              height: 100, //isExpanded ? 100 : 50,
              color: isExpanded ? Colors.red : Colors.blue,
              child: Text('Flutterando'),
            ),
          ),
        ),
      ),
    );
  }
}
