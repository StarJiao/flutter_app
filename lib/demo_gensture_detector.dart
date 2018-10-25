import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "gesture detector",
    home: MyButton(),
  ));
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text(
            'Engage',
            style: new TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.red),
          ),
        ),
      ),
    );
  }
}
