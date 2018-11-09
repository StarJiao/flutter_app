import 'package:flutter/material.dart';
import 'dart:math';

class RoundCapCircularProgressPainter extends CustomPainter {
  RoundCapCircularProgressPainter({
    this.percent,
    this.arcColor,
  });

  final double percent;
  Offset center = Offset(12.0, 8.0);
  double radius = 22.0;
  double thickness = 5.0;
  Color innerColor = Color(0x338833AC);
  Color arcColor = Colors.white;

  @override
  void paint(Canvas canvas, Size size) {
    var circlePaint = new Paint()
      ..color = innerColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, circlePaint);

    var paint = new Paint();
    paint.color = arcColor;
    paint.strokeWidth = thickness;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -0.5 * pi,
        2 * percent * pi, false, paint);
  }

  @override
  bool shouldRepaint(RoundCapCircularProgressPainter oldDelegate) {
    return oldDelegate.percent != percent;
  }
}

class RoundCapCircularProgress extends StatelessWidget {
  final double progress;
  final Color textColor;
  final Color arcColor;

  RoundCapCircularProgress({this.progress, this.textColor, this.arcColor});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RoundCapCircularProgressPainter(
        percent: progress,
        arcColor: arcColor,
      ),
      child: Text(
        "${(progress * 100).floor()}%",
        maxLines: 1,
        style: TextStyle(
          color: textColor,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

class DemoApp extends StatelessWidget {
  Widget build(BuildContext context) => new Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: new RoundCapCircularProgress(
        progress: 0.15,
      ));
}

void main() => runApp(new MaterialApp(title: "demo", home: new DemoApp()));
