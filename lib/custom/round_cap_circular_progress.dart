import 'dart:math';

import 'package:flutter/material.dart';

class RoundCapCircularProgressPainter extends CustomPainter {
  RoundCapCircularProgressPainter({
    this.percent,
  });

  final double percent;
  Offset center = Offset(12.0, 8.0);
  double radius = 22.0;
  double thickness = 5.0;
  Color innerColor = Colors.green;
  Color arcColor = Colors.red;

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
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -0.5 * pi, 2 * percent * pi, false, paint);
  }

  @override
  bool shouldRepaint(RoundCapCircularProgressPainter oldDelegate) {
    return oldDelegate.percent != percent;
  }
}

class RoundCapCircularProgress extends StatelessWidget {
  final double progress;

  RoundCapCircularProgress({@required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RoundCapCircularProgressPainter(
        percent: progress,
      ),
      child: Text(
        "${(progress * 100).floor()}%",
        maxLines: 1,
        style: TextStyle(
          color: Colors.red,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
