import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/custom/app_bar.dart';

class WeightLayoutPage extends StatelessWidget {
  static final String name = "WeightLayoutPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(name, context),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.blue,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Container(
                    color: Colors.greenAccent,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "yrj",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 24.0, color: Colors.red),
                          ),
                          Text(
                            "lglo",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 45.0,
                              color: Colors.indigo,
                            ),
                          ),
                          Text(
                            "wlp",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 78.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.black,
                  ),
                  flex: 5,
                ),
                Flexible(
                  child: Container(
                    color: Colors.white,
                  ),
                  flex: 2,
                ),
                Flexible(
                  child: Container(
                    color: Colors.grey,
                  ),
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
