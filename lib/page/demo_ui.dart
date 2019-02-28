import 'package:flutter/material.dart';

class FadeDemo extends StatefulWidget {
  static final String name = 'FadeDemo';
  @override
  State<StatefulWidget> createState() => _FadeDemoState();
}

class _FadeDemoState extends State<FadeDemo> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fade demo"),
      ),
      body: Center(
        child: Container(
            child: FadeTransition(
                opacity: curve,
                child: FlutterLogo(
                  size: 100.0,
                ))),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.forward();
      }),
    );
  }
}
