import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTImePIckerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 22.0,
                ),
                child: GestureDetector(
                  // Blocks taps from propagating to the modal sheet and popping.
                  onTap: () {},
                  child: SafeArea(
                    top: false,
                    child: CupertinoDatePicker(
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (DateTime newDateTime) {},
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text("asdf"),
            ),
          ],
        ),
      ),
    );
  }
}
