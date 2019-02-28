import 'package:flutter/material.dart';
import 'package:flutter_app/custom/circle_ends_progress_bar.dart';
import 'package:flutter_app/custom/round_cap_circular_progress.dart';

class CircleEndsProgressBarDemo extends StatelessWidget {
  static final String name = 'CircleEndsProgressBarDemo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          leading: BackButton(),
          title: new Text("Custom Title"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: CircleEndsProgressBar(
                  progress: 0.3,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: RoundCapCircularProgress(
                  progress: 0.85,
                ),
              ),
            ),
          ],
        ));
  }
}
