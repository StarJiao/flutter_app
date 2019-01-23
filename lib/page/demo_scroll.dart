import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  static final String name = 'ScrollPage';
  @override
  Widget build(BuildContext context) {
    return buildOne();
  }

  buildOne() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  // A fixed-height child.
                  color: Colors.yellow,
                  height: 120.0,
                ),
                Container(
                  // Another fixed-height child.
                  color: Colors.green,
                  height: 120.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  buildAnother() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: Colors.yellow,
                    height: 120.0,
                  ),
                  Expanded(
                    // A flexible child that will grow to fit the viewport but
                    // still be at least as big as necessary to fit its contents.
                    child: Container(
                      color: Colors.blue,
                      height: 120.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
