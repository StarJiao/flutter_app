import 'package:flutter/material.dart';

class SimpleAppBar extends AppBar {
  final String titleText;
  final BuildContext context;

  SimpleAppBar(this.titleText, this.context)
      : super(
          elevation: 0,
          centerTitle: true,
          title: Text(titleText),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
        );
}
