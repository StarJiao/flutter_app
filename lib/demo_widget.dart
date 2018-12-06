import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: demo(),
      ),
    );
  }
}

Widget demo() {
  return Center(
    child: Row(
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: SizedBox(
            width: 100.0,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: 100.0,
            child: Container(
              color: Colors.amber,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: 300.0,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget demoWidget() {
  return Row(
    children: <Widget>[
      const FlutterLogo(),
      Expanded(
        child: const Text(
            'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
      ),
      const Icon(Icons.sentiment_very_satisfied),
    ],
  );
}

Widget customWidget() {
  return Wrap(
    spacing: 8.0, // gap between adjacent chips
    runSpacing: 4.0, // gap between lines
    children: <Widget>[
      Chip(
        avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
        label: Text('Hamilton'),
      ),
      Chip(
        avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
        label: Text('Lafayette'),
      ),
      Chip(
        avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
        label: Text('Mulligan'),
      ),
      Chip(
        avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
        label: Text('Laurens'),
      ),
    ],
  );
}
