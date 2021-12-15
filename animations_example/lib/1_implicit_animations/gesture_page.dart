import 'dart:async';

import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({Key? key}) : super(key: key);

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);

  void toggle() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animações implícitas: Gestos')),
      body: ClipRect(
        child: AnimatedAlign(
          heightFactor: 0.6,
          duration: duration,
          alignment: isExpanded ? Alignment.center : Alignment.bottomCenter,
          child: GestureDetector(
            onPanStart: (details) {
              setState(() {
                isExpanded = true;
              });
            },
            onPanEnd: (details) {
              setState(() {
                isExpanded = false;
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
      ),
    );
  }
}
