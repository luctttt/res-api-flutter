import 'package:flutter/material.dart';

void main() => runApp(const LogoApp1());

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});
  // Leave out the height and width so it fills the animating parent
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const FlutterLogo(),
    );
  }
}

class GrowTransition extends StatelessWidget {
  const GrowTransition({
    // required this.child1,
    required this.animation1,
    super.key,
  });

  // final Widget child1;
  final Animation<double> animation1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
          animation: animation1,
          builder: (context, _) {
            return SizedBox(
              height: 50,
              width: animation1.value,
              child: _,
            );
          },
          child: const LogoWidget(),
        ),
      ],
    );
  }
}

class LogoApp1 extends StatefulWidget {
  const LogoApp1({super.key});

  @override
  State<LogoApp1> createState() => _LogoApp1State();
}

class _LogoApp1State extends State<LogoApp1>
    with SingleTickerProviderStateMixin {
  bool selected = true;
  late Animation<double> animation2;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation2 = Tween<double>(begin: 100, end: 300).animate(controller);

    if (selected == true) {
      controller.reverse();
    } else if (selected == false) {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ElevatedButton(
            onPressed: () {
              selected = !selected;
            },
            child: Text('click'),
          ),
        ),
        GrowTransition(animation1: animation2),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
