import 'package:flutter/material.dart';

class ControlledAnimationsPage extends StatefulWidget {
  const ControlledAnimationsPage({Key? key}) : super(key: key);

  @override
  _ControlledAnimationsPageState createState() =>
      _ControlledAnimationsPageState();
}

class _ControlledAnimationsPageState extends State<ControlledAnimationsPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Color?> colorAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.animateTo(0.5);
    } else if (controller.value == 0.5) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    sizeAnimation = SizeTween(
      begin: Size(50, 50),
      end: Size(100, 100),
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.pink,
    ).animate(controller);

    controller.addListener(() { 
      print(controller.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controlled Animations')),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: Text('Flutterando'),
          builder: (context, child) {
            return GestureDetector(
              onTap: toggle,
              child: Container(
                width: sizeAnimation.value?.width,
                height: sizeAnimation.value?.height,
                color: colorAnimation.value,
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }
}
