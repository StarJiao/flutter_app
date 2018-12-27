import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom/app_bar.dart';

class ImageRotatePage extends StatefulWidget {
  static final String name = 'ImageRotatePage';

  @override
  State<StatefulWidget> createState() {
    return _ImageRotateState();
  }
}

class _ImageRotateState extends State<ImageRotatePage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  double current = 0;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      upperBound: 2 * pi,
      vsync: this,
      duration: new Duration(seconds: 5),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('complete');
          animationController.repeat();
        } else if (status == AnimationStatus.forward) {
          print('forward');
        } else if (status == AnimationStatus.reverse) {
          print('reverse');
        } else if (status == AnimationStatus.dismissed) {
          print('dismiss');
        }
      });

    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(ImageRotatePage.name, context),
      body: GestureDetector(
        onTap: () {
          if (animationController.isAnimating) {
            animationController.stop();
            current = animationController.value;
          } else {
            animationController.forward(from: current);
          }
        },
        child: new Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: new AnimatedBuilder(
            animation: animationController,
            child: Icon(
              Icons.home,
              color: Colors.red,
              size: 300,
            ),
            builder: (BuildContext context, Widget _widget) {
              return new Transform.rotate(
                angle: animationController.value,
                child: _widget,
              );
            },
          ),
        ),
      ),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        elevation: 20,
        child: Text("hello"),
        onPressed: () {},
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(duration: const Duration(milliseconds: 300), vsync: this);
    animation = new Tween(begin: 0.1, end: 2.0).animate(controller)
      ..addStatusListener((state) {
        print("State$state");
        if (state == AnimationStatus.completed) {
          controller.reverse();
        } else if (state == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new AnimationLogo(listenable: animation);
  }
}

class AnimationLogo extends AnimatedWidget {
  AnimationLogo({Key key, Animation<double> listenable}) : super(key: key, listenable: listenable);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: ScaleTransition(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 300,
          width: 300,
          child: FlutterLogo(),
        ),
        scale: animation,
      ),
    );
  }
}
