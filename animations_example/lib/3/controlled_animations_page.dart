import 'package:flutter/material.dart';

class ControlledAnimationsPage extends StatefulWidget {
  const ControlledAnimationsPage({Key? key}) : super(key: key);

  @override
  _ControlledAnimationsPageState createState() =>
      _ControlledAnimationsPageState();
}

class _ControlledAnimationsPageState extends State<ControlledAnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controlled Animations')),
    );
  }
}
