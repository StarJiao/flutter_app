import 'package:flutter/material.dart';
import 'package:flutter_app/custom/circle_ends_progress_bar.dart';

void main() {
  runApp(MaterialApp(
    title: "gesture detector",
    home: MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          leading: BackButton(),
          title: new Text("Custom Title"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new CircleEndsProgressBar(
              progress: 45.0,
            )));
  }
}
