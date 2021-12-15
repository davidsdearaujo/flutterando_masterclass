import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationsPage> createState() => _ImplicitAnimationsPageState();
}

class _ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animações implícitas')),
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
              width: 100,//isExpanded ? 100 : 50,
              height: 100,//isExpanded ? 100 : 50,
              color: isExpanded ? Colors.red : Colors.blue,
              child: Text('Flutterando'),
            ),
          ),
        ),
      ),
    );
  }
}
