import 'package:flutter/material.dart';

class CircleEndsProgressBar extends StatelessWidget {
  const CircleEndsProgressBar(
      {Key key,
        @required this.progress,
        this.max: 100.0,
        this.borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        this.height: 10.0,
        this.backgroundColor,
        this.foregroundColor})
      : super(key: key);

  final double progress;
  final double max;
  final double height;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color foregroundColor;

  Color _getBackColor(BuildContext context) {
    return backgroundColor == null
        ? Theme.of(context).primaryColorLight
        : backgroundColor;
  }

  Color _getForeColor(BuildContext context) {
    return foregroundColor == null
        ? Theme.of(context).primaryColorDark
        : foregroundColor;
  }

  double _getProgressValue(BuildContext context) {
    double progressTemp;
    double maxTemp;
    if (max < 0.0) {
      maxTemp = 100.0;
    } else {
      maxTemp = max;
    }
    if (progress < 0.0) {
      progressTemp = 0.0;
    } else if (progress > max) {
      progressTemp = max;
    } else {
      progressTemp = progress;
    }
    return MediaQuery.of(context).size.width * progressTemp / maxTemp;
  }

  double _getMaxValue(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  _getHeight() {
    return height < 0 ? 10.0 : height;
  }

  _getBorderRadius() {
    return BorderRadius.circular(5.0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: _getBorderRadius(),
          child: Container(
            height: _getHeight(),
            width: _getMaxValue(context),
            color: _getBackColor(context),
          ),
        ),
        ClipRRect(
          borderRadius: borderRadius,
          child: Container(
            height: _getHeight(),
            width: _getProgressValue(context),
            color: _getForeColor(context),
          ),
        ),
      ],
    );
  }
}