import 'package:flutter/material.dart';

import '1_implicit_animations/gesture_page.dart';
import '1_implicit_animations/implicit_animations_page.dart';
import '1_implicit_animations/timer_page.dart';
// import '2_hero/hero_page.dart';
// import '3_controller_animations/controlled_animations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(title: Text('Flutterando Masterclass')),
          body: Column(
            children: [
              ListTile(
                title: Text('1 - Implicit Animations'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImplicitAnimationsPage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Timer Implicit Animations'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimerPage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Gesture Implicit Animations'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GesturePage(),
                  ),
                ),
              ),
              // ListTile(
              //   title: Text('2 - Hero'),
              //   onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => HeroPage()),
              //   ),
              // ),
              // ListTile(
              //   title: Text('3 - Controlled Animations'),
              //   onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => ControlledAnimationsPage(),
              //     ),
              //   ),
              // ),
            ],
          ),
        );
      }),
    );
  }
}
